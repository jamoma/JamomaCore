#include "TTExtensionLoader.h"
#include "TTFoundation.h"
#include "TTEnvironment.h"
#include <vector>
#include <string>

// The organization here is as follows :
// 1. TTLoadExtensions is called and selects the paths
//    where the extensions should be searched, in order.
//    As soon as extensions are found in a folder, the search stops.
// 2. Platforms are defined as classes :
//     - TTUnixCommon contains generic data for Unix-like systems
//     - OS X, Linux, Android, Windows are the available platforms.
// 3. Each platform has a specific way to list what's in a folder :
//    The relevant method is TTPlatform::TTLoadExtensionsFromFolder
// 4. The algorithm to load a file is generic : TTLoadExtension. The
//    platform provides the algorithm with functions to get a handle.


using namespace std;
using TTStringVector = vector<string>;

// Utility compile-time functions to work with string constants.
// Except on windows, where constexpr will only be in VS2015 (hopefully...)
// This would allow to shrink this file size by a small half.
#if !defined(TT_PLATFORM_WIN)
template <typename T, size_t n>
constexpr size_t array_length(const T (&)[n])
{ return n; }

template <typename T>
constexpr size_t string_length(T&& t)
{ return array_length(forward<T&&>(t)) - 1; }

template<typename T>
constexpr bool string_empty(T&& t)
{ return string_length(forward<T&&>(t)) == 0; }
#endif

template<typename OS>
// Returns true if the filename (ex. : AudioEngine.ttdylib)
// is a correct extension filename for the platform we're in.
bool TTIsExtensionFilename(const string& filename)
{
	auto res = mismatch(begin(OS::extensionPrefix),
						end(OS::extensionPrefix),
						begin(filename));

	if (string_empty(OS::extensionPrefix) || res.first == (end(OS::extensionPrefix)))
	{
		if(filename.length() >= string_length(OS::extensionSuffix))
		{
			return (0 == filename.compare(
							filename.length() - string_length(OS::extensionSuffix),
							string_length(OS::extensionSuffix),
							OS::extensionSuffix));
		}
	}

	return false;
}

template<typename OS>
// Gets the extension name from the file name.
// ex. : libWebSocket.so on Android -> WebSocket
string TTFilenameToExtensionName(string name)
{
	// Remove the prefix
	if(!string_empty(OS::extensionPrefix))
		name.erase(begin(name),
				   begin(name) + string_length(OS::extensionPrefix));

	// Remove the suffix
	if(!string_empty(OS::extensionSuffix))
		name.erase(end(name) - string_length(OS::extensionSuffix),
				   end(name));

	return name;
}

template<typename OS, typename Loader, typename GetProc>
// A generic way to load classes.
// Loader  : a callable object that takes a filename of a shared object,
//           and returns a handle.
// GetProc : a callable object that takes a handle and a function name,
//           and returns a pointer to the function.
bool TTLoadExtension(const string& filename,
			   const string& folder,
			   Loader&& handle_fun,
			   GetProc&& getproc_fun)
{
	// Check if the file is a Jamoma extension
	if(!TTIsExtensionFilename<OS>(filename))
		return false;

	// Get a handle
	void *handle = handle_fun((folder + "/" + filename).c_str());
	if (!handle)
	{
		TTLogMessage("Error when trying to get an handle on %s.\n", filename.c_str());
		return false;
	}

	// Load the Jamoma extension
	string initFun = "TTLoadJamomaExtension_" + TTFilenameToExtensionName<OS>(filename);
	auto initializer = reinterpret_cast<TTExtensionInitializationMethod>(getproc_fun(handle, initFun.c_str()));
	if (initializer)
	{
		auto err = initializer();
		if(err != kTTErrNone)
		{
			TTLogMessage("Error when initializing extension %s.\n", filename.c_str());
			return false;
		}
		return true;
	}
	return false;
}

// Here is the platform-specific code.
// It is organized in the following fashion :
//
//  * Each platform has an extension prefix (e.g. "lib", required on Android) and suffix (e.g. ".ttdylib").
//  * Platforms have these paths defined (they will be evaluated in this order) :
//   * A computed relative path (the path of the JamomaFoundation shared object)
//	 * Built-in relative paths (e.g. in an app bundle on OS X)
//	 * Built-in absolute paths (standard paths, e.g. "/usr/local/jamoma"...
//	   and a compiled-in absolute path (to allow package maintainers to add their own paths)
//   * Common code for Unix-like platforms is abstracted in TTUnixCommon.
#if defined(TT_PLATFORM_MAC) || defined(TT_PLATFORM_LINUX)
#include <dlfcn.h>
#include <dirent.h>

// This class contains informations that are applicable to
// UNIX-like systems (i.e. they respect the Filesystem Hierarchy Standard
// and load shared objects using dlopen / dlsym).
class TTUnixCommon
{
	public:
		static TTStringVector builtinAbsolutePaths()
		{
			return {
#if defined(JAMOMA_EXTENSIONS_INSTALL_PREFIX)
				JAMOMA_EXTENSIONS_INSTALL_PREFIX,
#endif
				"/usr/lib/jamoma",
				"/usr/local/lib/jamoma",
				"/usr/jamoma/lib",
				"/usr/jamoma/extensions",
				"/usr/local/jamoma/lib",
				"/usr/local/jamoma/extensions"
			};
		}

		template<typename OS>
		// Try to load extensions. Returns "true" only if at least one extension was loaded.
		static bool TTLoadExtensionsFromFolder(const string& folder)
		{
			DIR* dirp = opendir(folder.c_str());
			if(!dirp)
				return false;

			dirent* dp{};
			int count = 0; // Number of extensions loaded.
			while ((dp = readdir(dirp)))
			{
				if(TTLoadExtension<OS>(dp->d_name,
								 folder,
								[] (const char * file)
								{ return dlopen(file, RTLD_LAZY); },
								[] (void* handle, const char * fun)
								{ return dlsym(handle, fun); }))
				{
					++count;
				}
			}

			closedir(dirp);

			if(count > 0)
			{
				TTFoundationBinaryPath = folder.c_str();
				return true;
			}

			return false;
		}

		// Returns the path of the extensions
		// relative to the folder of the JamomaFoundation library
		// the application uses.
		static string computedRelativePath()
		{
			Dl_info		info;
			char		mainBundleStr[4096];

			// Use the path of JamomaFoundation
			if (dladdr((const void*)TTLoadExtensions, &info))
			{
				char *c = 0;

				TTLogMessage("computedRelativePath(): %s\n", info.dli_fname);

				strncpy(mainBundleStr, info.dli_fname, 4096);
				c = strrchr(mainBundleStr, '/');
				if (c)
					*c = 0; // chop the "/JamomaFoundation.dylib/so off of the path
			}

			return mainBundleStr;
		}
};
#endif

#if defined(TT_PLATFORM_MAC)
class TTOSXSpecific
{
	public:
		static constexpr const char extensionPrefix[]{""};
		static constexpr const char extensionSuffix[]{".ttdylib"};

		static string computedRelativePath()
		{ return TTUnixCommon::computedRelativePath(); }

		static TTStringVector builtinRelativePaths()
		{ return {"../Frameworks/jamoma/extensions"}; }

		static TTStringVector builtinAbsolutePaths()
		{ return TTUnixCommon::builtinAbsolutePaths(); }

		static bool TTLoadExtensionsFromFolder(const string& folderName)
		{ return TTUnixCommon::TTLoadExtensionsFromFolder<TTOSXSpecific>(folderName); }
};
using TTOperatingSystem = TTOSXSpecific;
#endif

#if defined(TT_PLATFORM_IOS)
class TTiOSSpecific
{
public:
    static constexpr const char extensionPrefix[]{""};
    static constexpr const char extensionSuffix[]{".ttdylib"};
    
    static string computedRelativePath()
    { return ""; }
    
    static TTStringVector builtinRelativePaths()
    { return {}; }
    
    static TTStringVector builtinAbsolutePaths()
    { return {}; }
    
    static bool TTLoadExtensionsFromFolder(const string& folderName)
    { return false; }
};
using TTOperatingSystem = TTiOSSpecific;
#endif


#if defined(TT_PLATFORM_LINUX) && defined(__ANDROID_API__)
#include <unistd.h>
#include <iostream>

class TTAndroidSpecific
{
	public:
		static constexpr const char extensionPrefix[]{"lib"};
		static constexpr const char extensionSuffix[]{".so"};

		static string computedRelativePath()
		{
			string s{"/proc/" + string{getpid()} + "/cmdline"};
			ifstream input{s.c_str()};
			string line;
			getline(input, line);
			return string{"/data/data/"} + line + string{"/lib"};
		}

		static TTStringVector builtinRelativePaths()
		{ return {}; }

		static TTStringVector builtinAbsolutePaths()
		{ return {}; }

		static bool TTLoadExtensionsFromFolder(const string& folderName)
		{ return TTUnixCommon::TTLoadExtensionsFromFolder<TTAndroidSpecific>(folderName); }
};
using TTOperatingSystem = TTAndroidSpecific;
#endif


#if defined(TT_PLATFORM_LINUX)
class TTLinuxSpecific
{
	public:
		static constexpr const char extensionPrefix[]="";
		static constexpr const char extensionSuffix[]=".ttso";

		static string computedRelativePath()
		{ return TTUnixCommon::computedRelativePath(); }

		static TTStringVector builtinRelativePaths()
		{ return {"./extensions"}; }

		static TTStringVector builtinAbsolutePaths()
		{ return TTUnixCommon::builtinAbsolutePaths(); }

		static bool TTLoadExtensionsFromFolder(const string& folderName)
		{ return TTUnixCommon::TTLoadExtensionsFromFolder<TTLinuxSpecific>(folderName); }
};
using TTOperatingSystem = TTLinuxSpecific;
#endif


#if defined(TT_PLATFORM_WIN)
#include <ShlObj.h>

class TTWinSpecific
{
	public:
		static const char* extensionPrefix;
		static const char* extensionSuffix;

		static string computedRelativePath();
		static TTStringVector builtinRelativePaths();
		static TTStringVector builtinAbsolutePaths();
		static bool TTLoadExtensionsFromFolder(const string& folder);
};

// Specializations since windows does not support constexpr yet.
template<>
string TTFilenameToExtensionName<TTWinSpecific>(string name)
{
	name.erase(end(name) - strlen(TTWinSpecific::extensionSuffix), end(name));
	return name;
}

template<>
bool TTIsExtensionFilename<TTWinSpecific>(const string& filename)
{
	auto suffix_len = strlen(TTWinSpecific::extensionSuffix);
	if(filename.length() >= suffix_len)
	{
		return (0 == filename.compare(
						filename.length() - suffix_len,
						suffix_len,
						TTWinSpecific::extensionSuffix));
	}

	return false;
}

string TTWinSpecific::computedRelativePath()
{
	TTString	fullpath{};
	char		temppath[4096];
	LONG		lRes;

	LPCSTR moduleName = "JamomaFoundation.dll";
	HMODULE	hmodule = GetModuleHandle(moduleName);
	// get the path
	GetModuleFileName(hmodule, (LPSTR)temppath, 4096);

	if (!FAILED(hmodule) && temppath[0])
	{
		fullpath = temppath;

		// get support folder path
		fullpath = fullpath.substr(0, fullpath.length() - (strlen(moduleName) + 1));
		lRes = SHCreateDirectory(NULL, (LPCWSTR)fullpath.c_str());
	}

	return fullpath.c_str();
}

TTStringVector TTWinSpecific::builtinRelativePaths()
{
	return {"./extensions"};
}

TTStringVector TTWinSpecific::builtinAbsolutePaths()
{
	return {
#if defined(JAMOMA_EXTENSIONS_INSTALL_PREFIX)
		JAMOMA_EXTENSIONS_INSTALL_PREFIX,
#endif
		"c:\\Program Files (x86)\\Jamoma\\extensions"
	};
}

bool TTWinSpecific::TTLoadExtensionsFromFolder(const string& folder)
{
	auto windowsPathSpec = folder
							+ "/*"
							+ string{TTWinSpecific::extensionSuffix};
	WIN32_FIND_DATA FindFileData;
	HANDLE hFind = FindFirstFile(windowsPathSpec.c_str(), &FindFileData);

	int count = 0; // Number of extensions loaded.
	if (hFind == INVALID_HANDLE_VALUE)
		return false;

	do {
		if(TTLoadExtension<TTWinSpecific>(
						 FindFileData.cFileName,
						 folder,
						[] (const char * file)
						{ return LoadLibrary(file); },
						[] (void* handle, const char * fun)
						{ return GetProcAddress((HMODULE) handle, fun); }))
		{
			++count;
		}

	} while (FindNextFile(hFind, &FindFileData));
	FindClose(hFind);

	if(count > 0)
	{
		TTFoundationBinaryPath = folder.c_str();
		return true;
	}

	return false;
}

using TTOperatingSystem = TTWinSpecific;
#endif

// Because these members are static they have to be allocated in this compilation unit.
#if defined(TT_PLATFORM_WIN)
const char* TTOperatingSystem::extensionPrefix{""};
const char* TTOperatingSystem::extensionSuffix{".ttdll"};
#else
constexpr const char TTOperatingSystem::extensionPrefix[array_length(TTOperatingSystem::extensionPrefix)];
constexpr const char TTOperatingSystem::extensionSuffix[array_length(TTOperatingSystem::extensionSuffix)];
#endif

template<typename OS>
// Try to load Jamoma classes from a vector of paths.
// This will return on the first successful folder.
bool TTLoadExtensionsFromPaths(TTStringVector&& v)
{
	return find_if(begin(v), end(v), [] (const string& path)
			{ return OS::TTLoadExtensionsFromFolder(path); }) != end(v);
}

template<typename OS>
// Try to load Jamoma classes from a path computed at runtime.
bool TTLoadExtensionsFromComputedPaths()
{
	auto computedPath = TTOperatingSystem::computedRelativePath();
	return (!computedPath.empty()
			&& TTOperatingSystem::TTLoadExtensionsFromFolder(computedPath));
}

template<typename OS>
// Try to load Jamoma classes from the paths built-in for the
// platform.
bool TTLoadExtensionsFromBuiltinPaths()
{
	return TTLoadExtensionsFromPaths<OS>(OS::builtinRelativePaths()) ||
		   TTLoadExtensionsFromPaths<OS>(OS::builtinAbsolutePaths());
}

void TTLoadExtensions(const char* pathToBinaries, bool loadFromOtherPaths)
{
	if(!pathToBinaries)
	{
		if(!TTLoadExtensionsFromComputedPaths<TTOperatingSystem>() && loadFromOtherPaths)
		{
			TTLoadExtensionsFromBuiltinPaths<TTOperatingSystem>();
		}
	}
	else
	{
		if(!TTOperatingSystem::TTLoadExtensionsFromFolder(pathToBinaries) && loadFromOtherPaths)
		{
			if(!TTLoadExtensionsFromComputedPaths<TTOperatingSystem>())
			{
				TTLoadExtensionsFromBuiltinPaths<TTOperatingSystem>();
			}
		}
	}

	if(TTFoundationBinaryPath == "")
	{
		TTLogMessage("Warning: no classes were loaded.");
	}
}
