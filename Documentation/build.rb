#!/usr/bin/env ruby

# REQUIRES: Doxygen 1.6.1 to have been installed
# REQUIRES: Graphviz 2.14 to have been installed as per the instructions accompanying Doxygen 1.6.1
# REQUIRES: Latex to be installed from http://www.tug.org/mactex/
#           and "/usr/texbin" to be added to your path in the MacOS environment variables

# REQUIRES: currently this must be run from this directory in which it resides.


@html_root = "build/html"
@pdf_root = "build/latex"
@doxygen_root = "."


#### SUBROUTINES

def substitute_strings_in_file(file_path, old_string, new_string)
  f = File.open("#{file_path}", "r+")
  str = f.read
  str.gsub!(/#{old_string}/, new_string)
  f.rewind
  f.write(str)
  f.truncate(f.pos)
  f.close
end



# Remove old API doc build
`rm -rf #{@html_root}/[!.]*`
`rm -rf #{@pdf_root}/[!.]*`


`/Applications/Doxygen.app/Contents/Resources/doxygen #{@doxygen_root}/doxyfile`


# Build our PDF
Dir.chdir @pdf_root

# First, we have to strip out the files generated from our example source code:
# otherwise we end up with a corrupted PDF due to screwed up UTF8 chars that Latex can't handle.
f = File.open("#{@pdf_root}/refman.tex", "r+")
str = f.read
str.gsub!(/\\chapter\{File Index\}/, '')
str.gsub!(/\\input\{files\}/, '')
str.gsub!(/\\chapter\{File Documentation\}.*\\printindex/m, '\printindex')
f.rewind
f.write(str)
f.truncate(str.size)
f.close

# This is the usual, albeit goofy, process of getting latex cross-dependencies all built and linked correctly.
puts `make`
puts `pdflatex -interaction=nonstopmode -file-line-error-style -synctex=1 refman.tex`
puts `makeindex refman.idx`
puts `pdflatex -interaction=nonstopmode -file-line-error-style -synctex=1 refman.tex`
