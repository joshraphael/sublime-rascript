syntax:
	wget -O rascript.tmLanguage 'https://github.com/joshraphael/rascript-syntax/releases/download/v0.0.3/rascript.tmLanguage'

package: syntax
	zip -r RAScript.sublime-package rascript.tmLanguage

install: package
	cp RAScript.sublime-package ~/.config/sublime-text/Installed\ Packages

test:
	mv rascript.tmLanguage rascript.original.tmLanguage
	make syntax
	diff -q "rascript.tmLanguage" "rascript.original.tmLanguage"