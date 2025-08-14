# sublime-rascript

## Setup

This plugin uses the [rascript-syntax](https://github.com/joshraphael/rascript-syntax) repo to define the RAScript grammar. Generate the sublime package using the Makefile by running `make package`, and place the `RAScript.sublime-package` into your sublime text `Installed Packages` folder (ex: `~/.config/sublime-text/Installed Packages`) and syntax highlighting should start appearing on your rascript files. There is an automated make command to do this for you by running `make install`

### LSP
This language uses [rascript-language-server](https://github.com/joshraphael/rascript-language-server) to handle language hints and code tools, download the latest release and place the file somewhere you can remember on your computer (ex: `~/Desktop/rascript-language-server_v0.0.1_linux-x64`)

install the [LSP](https://github.com/sublimelsp/LSP/) plugin for Sublime and edit the LSP settings to add a new client by going to `Preferences > Package Settings > LSP > Settings` and adding the client for rascript

```txt
{
  "log_debug": true,
  "clients": {
    "rascript": {
      "enabled": true,
      "command": ["/home/joshraphael/rascript-language-server_v0.0.1_linux-x64"],
      "selector": "source.rascript",
      "initializationOptions": {}
    }
  }
}
```

Save and restart your editor and your RAScripts should start getting code tools.

## Make Commands

|Title|Command|Parameters|Description|
|-|-|-|-|
|Syntax|`make syntax`|None|Download the syntax file|
|Package Exetension|`make package`|None|Package the extension|
|Test|`make test`|None|Test the extension|
|Install|`make install`|None|Install the extension locally|