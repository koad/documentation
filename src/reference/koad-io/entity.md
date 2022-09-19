# koad:io entities


## what?
A koad-io entity is a set of environment variables and directories that are used to organize and automate much of the recurring tasks in my life.  

These directories make it easy to remember where I left off even on projects I only have to deal with every few years.

Entities also have keybase accounts of their own.  I interact with them just as if they were any other person in my life.  Team/family file shares, git repos as well as chat to interact the same as I would in my `bash terminal`.


## who?
Since I can operate within separate environments I can easily keep all the parts and pieces of any project/context together in an enviroment, i can also keep it organized in my mind.  

An entity is a dotfile directory located in your home directory under the same name
ie: `~/`+`dot`+`alice` 
```bash
/home/koad/.alice
```

> It is best to encrypt this folder using [a PGP key; do you have one?](https://book.koad.sh/reference/generate-keybase-gpg-key/)


I can interact with an `entity` simply by issuing commands.

for example, I have many entities that I call upon

- Marsha, she is responsible for all my volunteer work.
- Astro is responsible for my web services and the administration work behind keeping it all working.
- [Alice is my `play-thing`](https://github.com/koad/alice) I use to explore different rabbit-holes and use to help explain things as you'll notice throughout.

Be wise when picking names.  
- you may want to search google to see if the thing already exists

here are a few commands I use all the time.  The results (if any) are all stored within the entity's data directory.  

Marsha checks certs then builds her website in `~/.marsha/sites/qr.ourcoin.ca/` then uploads the build-package to the production server.
```bash
marsha probe domain qr.ourcoin.ca
marsha build site qr.ourcoin.ca
marsha upload site qr.ourcoin.ca
```

Alice archives the videos in `~/.alice/archive/inbound/`
```bash
alice archive video https://www.youtube.com/watch?v=dQw4w9WgXcQ
alice archive video dQw4w9WgXcQ
```

Marsha starts her user interface in `~/.marsha/interface/`
```bash
marsha start interface
```

Astro opens an SSH connection to `device://jersey` and logs in (passwordless) as the user `astro`
```bash
astro ssh jersey
```

in all cases, the command is a wrapper command, setting a single enviroment variable `KOAD_IO_ENTITY` and then passing all arguments to the koad-io command.

The command `alice` looks like this:
> `cat ./.bin/alice`
```bash
#!/bin/bash

export KOAD_IO_ENTITY='alice';
koad-io "$@";
```

from here, koad-io uses it's standardize approach to loading the appropriate enviroment variables from the `.alice` folder.  The system itself can be of any design, in my case it's based on where `I think I would` put something, rather than where some linux geek thinks I should.


## location

the entity's folder can be moved anywhere, edit the wrapper command and specify...
`KOAD_IO_ENV_LOCATION`

```bash
#!/bin/bash

export KOAD_IO_ENTITY='alice';
export KOAD_IO_ENV_LOCATION='/home/koad/.wonderland/entities/alice';
koad-io "$@";
```


## portability

`KOAD_IO_ENABLE_PORTABLITY` if you want to contain on an external drive and use it on multiple devices.  [read before flight](https://book.koad.sh/reference/koad-io-entity/)  

- must also specify `KOAD_IO_ENV_LOCATION`

```bash
#!/bin/bash

export KOAD_IO_ENTITY='alice';
export KOAD_IO_ENABLE_PORTABLITY=true;
export KOAD_IO_ENV_LOCATION='/media/koad/ROG1T/koad-io-entities/alice';
koad-io "$@";
```

## Folders

koad:io installation   


This folder doesnt keep any personal data, its a clone of `https://github.com/koad/io`  


ALL of your data is stored within your entities datadir (ie: `~/.alice`).

```bash
 cd ~/.koad-io
 ls -la
```

warning: making changes in this directory may make your shit not work.  You want use an entity's directory to override the parts of environment you wish to customize.

get koad-io
```
 git clone https://github.com/koad/io ~/.koad-io
```
update koad-io
```
 cd ~/.koad-io && git pull
```

Your entity's folder
```bash
 cd ~/.$KOAD_IO_ENTITY
 ls -la
```
example `~/.alice/`


## Environments
`.env` file located at `~/.$KOAD_IO_ENTITY/.env`

edit using text editor
```bash
nano ~/.$KOAD_IO_ENTITY/.env
```
or using default entity's environment
```bash
export KOAD_IO_ENTITY=alice
$KOAD_IO_ENTITY edit env ~/.$KOAD_IO_ENTITY/.env
```
or using specific entity's environment
```bash
alice edit env ~/.$KOAD_IO_ENTITY/.env
```

### Stacking

Many environment variables are loaded depending on how you are using this stuff.

The same variable might exist in all of your .env files, overwriting itself as each one gets loaded.

Here is the order things get loaded in.

1. `~/.koad-io/.env`: this is where koad-io gets installed
2. `~/.$KOAD_IO_ENTITY/.env`: this is your entity
3. `$CURRENT_WORKING_DIRECTORY/.env`: when calling within a folder somewhere
4. `~/.koad-io/commands/$KOAD_IO_COMMAND/.env`: when calling a koad:io command

### debug

check the environment vars that are loaded
```bash
env
```

### Well known env vars

these files are normally the start of everything.  fill these out before running koad:io for the first time and everything will start flowing, like a waterfall.

> there is an installation interface available as well, but it's important to realize how this folder/files setup works; it is meant for you as a human user to work with directly, sometimes the interfaces just keep you from knowing.  
>  
> __start with editing these files manually, then if you become an expert and want to deploy things automagically you can utililize the installer interface__.  

`~/.KOAD_IO_INSTANCE/.env`

| what                      | where     | why  |  default  |  
| ------------------------- | --------- | ------------------------------------ | ---------- |
| `ENTITY`  | global | use this in your own creations | `alice` |
| `CATCHALL_DOMAIN_NAME`    | [wildcard-cert](/setup/lets-encrypt-wildcard-cert) | inbound email address generation | |
| `WILDCARD_DOMAIN_NAME`    | [wildcard-cert](/setup/lets-encrypt-wildcard-cert) | private inbound subdomain generation | |
| `KOAD_IO_INSTANCE` | all koad:io | the entity containment| `$ENTITY` |
| `KOAD_IO_HOST` | all koad:io | the host to runs the production env | `$HOSTNAME` |
| `KOAD_IO_USER` | all koad:io | the user who runs in production | `$USER` |
| `KOAD_IO_LIGHTHOUSE` | all koad:io | submit work, check for updates | `$WILDCARD_DOMAIN_NAME` |
| `KOAD_IO_INTERFACE` | all koad:io | the network interface serving the backend | `$KOAD_IO_HOST.local:443` |
| `KOAD_IO_BIND_IP` | all koad:io | the network interface to bind to | `0.0.0.0` |


```bash
ENTITY=alice
CATCHALL_DOMAIN_NAME=zvaniga.com
WILDCARD_DOMAIN_NAME=koad.sh

KOAD_IO_INSTANCE=$ENTITY
KOAD_IO_HOST=$HOSTNAME
KOAD_IO_USER=$USER
KOAD_IO_LIGHTHOUSE=$WILDCARD_DOMAIN_NAME
KOAD_IO_INTERFACE=$KOAD_IO_HOST.local:443
KOAD_IO_BIND_IP=10.10.10.10
KOAD_OVERLAY_NETWORK=ztqu3l6xu5
```

`~/.KOAD_IO_INSTANCE/.credentials`

| what | it is |  
| ---- | ----- |
| `MATRIX_USER`  | matrix username |
| `MATRIX_HOME_SERVER`  | matrix user's home server |
| `MATRIX_SESSION_KEY`  | matrix session key |
| `KEYBASE_USER`  | keybase username |
| `KEYBASE_SESSION_KEY`  | keybase paper key |
| `DARK_SKY_API_KEY`  | weather api access key |


```bash
MATRIX_USER=alice
MATRIX_HOME_SERVER=$WILDCARD_DOMAIN_NAME
MATRIX_SESSION_KEY=put_your_sesssion_key_here__no_quotes
KEYBASE_USER=alice
KEYBASE_SESSION_KEY="put your key in here, with quotes"
DARK_SKY_API_KEY=put_your_DARK_SKY_API_KEY_here__no_quotes
```