Sometimes you dont want the whole browser, maybe you only want the single page.

> TODO: Something is messed up here,. maybe chromium changed how they use the window class?.. investigate.

My personal MP3 player
```bash
chromium --app=https://disco.koad.sh --class=discokoadsh $* >/dev/null 2>/dev/null & disown
```

Discord's desktop app is known to track the shit out of alot of things.
```bash
chromium --app=https://discord.com/channels/@me --class=discordwebapp $* >/dev/null 2>/dev/null & disown
```

My reference documentation  
```bash
chromium --app=https://book.koad.sh --class=bookkoadsh $* >/dev/null 2>/dev/null & disown
```

portainer  
```bash
chromium --app=http://10.10.10.10:9000 --class=portainer $* >/dev/null 2>/dev/null & disown
```

mkdocs-material reference documentation  
```bash
chromium --app=https://squidfunk.github.io/mkdocs-material/reference/ --class=docsmkdocsmaterial $* >/dev/null 2>/dev/null & disown
```

> You can use this command to make a custom button in your favorite app launcher.  Then any site can look and feel like an app installed on your machine, with web-browser based sandboxing enabled to stop un-wanted snooping of a normally installed app.  

> substitue `chromium` with your favorite chromium based browser.  
```bash 
google-chrome-stable --app=https://book.koad.sh --class=bookkoadsh $* >/dev/null 2>/dev/null & 
google-chrome --app=https://book.koad.sh --class=bookkoadsh $* >/dev/null 2>/dev/null & 
brave --app=https://book.koad.sh --class=bookkoadsh $* >/dev/null 2>/dev/null & 
```

note: the `--class` is set here so your app-launcher can link the opened window to the icon within the launcher.