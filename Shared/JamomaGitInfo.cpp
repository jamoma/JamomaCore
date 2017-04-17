#include "JamomaCoreVersion.h"
#include <string>
/**
* Will check that the current extension can be loaded
* by the version given in argument in git_tag.
* 
* Returns true if the extension is compatible with the loading 
* dylib.
*/
bool TTExtensionCompatibilityCheck(const char* git_tag)
{
    static const std::string rev(JAMOMACORE_REV);
    return rev == git_tag;
}
