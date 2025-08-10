package:
	wget -O rascript.tmLanguage 'https://github.com/joshraphael/rascript-syntax/releases/download/v0.0.3/rascript.tmLanguage'
	zip -r RAScript.sublime-package rascript.tmLanguage

install: package
	cp RAScript.sublime-package ~/.config/sublime-text/Installed\ Packages

release: package
	go run release.go