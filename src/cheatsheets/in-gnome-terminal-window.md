## Gnome Terminal

GNOME Terminal is a terminal emulator for the GNOME desktop environment written by Havoc Pennington and others. Terminal emulators allow users to access a UNIX shell while remaining on their graphical desktop. [wikipedia](https://en.wikipedia.org/wiki/GNOME_Terminal)

---

Change the title displayed in the terminal window [ref](https://askubuntu.com/questions/636944/how-to-change-the-title-of-the-current-terminal-tab-using-only-the-command-line)

Add one of these setting to your ~/.bashrc


This will automatically change the title even when you add a new tab.
```bash
PROMPT_COMMAND='echo -en "\033]0; $("pwd") \a"'
```

or

```bash
PROMPT_COMMAND='echo -en "\033]0;$(whoami)@$(hostname)|$(pwd|cut -d "/" -f 4-100)\a"'
```

or manually
```bash
 echo -en "\033]0;New terminal title\a"
```


## resize window

change the size of the window, in this case 40 lines by 80 charactors wide.
```bash
 printf '\033[8;40;100t'
```

12 lines by 160 charactors wide.
```bash
 printf '\033[8;12;160t' && clear
```

more
```bash
echo -ne "\e[8;5;100t"
echo -ne "\e[8;5;200t"
echo -ne "\e[8;20;80t"
echo -ne "\e[8;20;40t"
echo -ne "\e[8;5;100t" && htop # just the gist
echo -ne "\e[8;14;100t" && htop # 24 core with custom layout
echo -ne "\e[8;5;200t" && clear # running abreast friends
```