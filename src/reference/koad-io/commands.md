[![Matrix](/assets/badges/matrix/commands.svg)](https://matrix.to/#/#commands:koad.sh?via=koad.sh)

https://img.shields.io/matrix/lobby:koad.sh?color=dfs&label=sdf

&logo=matrix
https://matrix.to/#/#commands:koad.sh
&server_fqdn=matrix.koad.sh

https://img.shields.io/static/v1?label=koad.sh&message=commands&color=lightgrey&style=for-the-badge&logo=matrix

## command types

koad:io has two types of commands.

1. Wrapper command, used to wrap environment details into regular commands
2. Regular command, created by you or installed by you.


your koad:io command folder is `.koad-io` and is located in your home directory
```bash
cd ~/.koad-io
```

it contains two folders by default  

2. - ~/.koad-io/commands  
	- is where you build your SI commands
	- will only run if commanded by an `entity`

## wrapper commands

`~/.koad-io/bin`   

- exists within your `PATH`

### koad-io cli wrapper

`~/.koad-io/bin/koad-io`   

```bash
#!/bin/bash

## koad-io cli wrapper
## a component of koad:io
## copyright kingofalldata.com


# we want to save CWD as the directory which the command was fired from, and pass this into the regular command.
export CWD=$PWD

# ack
echo "--koad-io [$ENTITY] $1 start--"

# ensure we have arguments to parse, else run the koad:io update tool.  
echo "$0 [$# arguments]"
if [[ $# -eq 0 ]]; 
    then >&2 echo "Did you want something?" && exec $HOME/.koad-io/commands/install/command.sh && exit 64;
fi

# Load any enviroment details that exist in the entities dotfiles folder.
[ -f $HOME/.$ENTITY/.env ] && echo "loading $HOME/.$ENTITY/.env" && set -a && source $HOME/.$ENTITY/.env 
[ -f $HOME/.$ENTITY/.credentials ] && echo "loading $HOME/.$ENTITY/.credentials" && set -a && source $HOME/.$ENTITY/.credentials 

KOAD_IO_COMMANDS_DIR="$HOME/.koad-io/commands/$2"
ENTITY_COMMANDS_DIR="$HOME/.$ENTITY/commands/$2"

# TODO: these next 16 lines need to be replaced with some logic

# Check to see if we even have a command of that name,
[[ ! -d $KOAD_IO_COMMANDS_DIR ]] && [[ ! -d $ENTITY_COMMANDS_DIR ]] && echo "Cannot find that command, sorry..[command does not exist]" >&2 && exit 66;

WORKING_DIR="$HOME/.koad-io/commands/$2"
EXEC_ARGS="$3 $4 $5 $6 $7"

# find a more specific command, and override WORKING_DIR and EXEC_ARGS.
# // load any default command from koad:io
[[ -d $KOAD_IO_COMMANDS_DIR/$3/ ]] && WORKING_DIR="$KOAD_IO_COMMANDS_DIR/$3" && EXEC_ARGS="$4 $5 $6 $7"
[[ -d $KOAD_IO_COMMANDS_DIR/$3/$4/ ]] && WORKING_DIR="$KOAD_IO_COMMANDS_DIR/$3/$4" && EXEC_ARGS="$5 $6 $7"
[[ -d $KOAD_IO_COMMANDS_DIR/$3/$4/$5/ ]] && WORKING_DIR="$KOAD_IO_COMMANDS_DIR/$3/$4/$5" && EXEC_ARGS="$6 $7"

# // load any command from entity
[[ -d $ENTITY_COMMANDS_DIR/$3/ ]] && WORKING_DIR="$ENTITY_COMMANDS_DIR/$3" && EXEC_ARGS="$4 $5 $6 $7"
[[ -d $ENTITY_COMMANDS_DIR/$3/$4/ ]] && WORKING_DIR="$ENTITY_COMMANDS_DIR/$3/$4" && EXEC_ARGS="$5 $6 $7"
[[ -d $ENTITY_COMMANDS_DIR/$3/$4/$5/ ]] && WORKING_DIR="$ENTITY_COMMANDS_DIR/$3/$4/$5" && EXEC_ARGS="$6 $7"

# // load any command from current working directory's command folder
[[ -d $CWD/commands/$3/ ]] && WORKING_DIR="$ENTITY_COMMANDS_DIR/$3" && EXEC_ARGS="$4 $5 $6 $7"
[[ -d $CWD/commands/$3/$4/ ]] && WORKING_DIR="$ENTITY_COMMANDS_DIR/$3/$4" && EXEC_ARGS="$5 $6 $7"
[[ -d $CWD/commands/$3/$4/$5/ ]] && WORKING_DIR="$ENTITY_COMMANDS_DIR/$3/$4/$5" && EXEC_ARGS="$6 $7"

# // finally, load command from current working directory
[[ -f $CWD/$2.sh ]] && WORKING_DIR="$CWD/" && EXEC_ARGS="$4 $5 $6 $7"

# command file can either be named `command.sh` or have the same name as the command with .sh extention
FILETORUN="$WORKING_DIR/command.sh"
[[ -f $WORKING_DIR/$2.sh ]] && echo "Command is in file form" >&2 && FILETORUN="$WORKING_DIR/$2.sh";

# Make sure we have a valid command file to run, else crash 66
[[ ! -f $FILETORUN ]] && echo "Malformed command setup, sorry -- i dont know how to proceed.." >&2 && exit 66;

# All is well, lets go!
echo "--exec $FILETORUN $EXEC_ARGS"
exec $FILETORUN $EXEC_ARGS

```

### entity example command (alice)

`~/.koad-io/bin/alice`   

The entity command exports it's name and passes itself and the command arguments to the koad:io cli wrapper

```bash
#!/bin/bash

export ENTITY='alice'
koad-io "$@";
```


## undocumented koad:io commands

these commands exist in my world, but maybe most of them are shit and not important to your world.   I will post them somewhere, at some time,. but for now, lets explore re-creating the commands you want for yourself.

join me in the #commands:koad.sh matrix channel and we can play for a bit.

[![Matrix](https://img.shields.io/matrix/commands:koad.sh?label=commands:koad.sh&logo=matrix&server_fqdn=matrix.koad.sh)](https://matrix.to/#/#commands:koad.sh?via=koad.sh)



`~/.koad-io/commands/`   

### absorb
### add
### archive
### backup
### blame
### branch
### browse
### build
### cast
### check
### checkout
### clone
### commit
### config
### create
### decrypt
### deploy
### destroy
### detatch
### diff
### drop
### edit
### encrypt
### enroll
### find
### follow
### forge
### generate
### git
### help
### hex
### init
### inspect
### install
### launch
### learn
### list
### locate
### lock
### log
### manage
### manual
### merge
### mv
### notes
### open
### play
### pop
### probe
### pull
### push
### rebase
### reboot
### receive
### reference.sh
### rekey
### reset
### resize
### restart
### restore
### revoke
### rm
### send
### shell
### shortlog
### show
### sign
### spawn
### ssh
### start
### stash
### status
### stop
### store
### switch
### tag
### tail
### tldr
### track
### update
### upgrade
### upload
### verify
### watch
### whereami
### whereareyou
### whereis
### whoami
### whoareyou
### whois


## note

Applications you have installed will likely have their own commands added to this list.

Check our application specific commands by using `[application] help` .. ie: `frankie sandstorm help` or `frankie sandstorm commands`


## docs

```bash
alice regenerate docs
```
