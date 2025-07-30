# sublime-rascript

## Setup

Place the `RAScript.sublime-syntax` into your sublime text user Package folder (ex: `/home/joshraphael/.config/sublime-text/Packages/User`) and syntax highlighting should start appearing on your rascript files. You can also easily add a new syntax and copy the context of `RAScript.sublime-syntax` into the newly made syntax if you have never set up the language before `Tools > Developer > New Syntax...`

### LSP
This language uses [rascript-language-server](https://github.com/joshraphael/rascript-language-server) to handle language hints and code tools, download the latest release and place the file somewhere you can remember on your computer (ex: `/home/joshraphael/rascript-language-server_v0.0.1_linux-x64`)

install the LSP plugin for Sublime and edit the LSP settings to add a new client by going to `Preferences > Package Settings > LSP > Settings` and adding the client for rascript

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