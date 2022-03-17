# koad:io entities

A koad-io entity is a set of environment variables and directories that are used to speed up and automate much of the recurring tasks in my life.

they also have keybase accounts of their own.  I interact with them just as if they were any other person in my life.  File shares, git repos and chat to issue the same commands used in my `bash terminal`.

since I can operate within separate environments I can easily keep all the parts and pieces organized in my mind.  I can reference a group of projects to a `human-recognizable digital entity` simply by issuing commands.

for example, I have many entities that I call upon

- Marsha, she is responsible for all my volunteer work.
- Astro is responsible for my web services and the administration work behind keeping it all working.
- [Alice is my `play-thing`](https://github.com/koad/alice) I use to explore different rabbit-holes and use to help explain things as you'll notice throughout.

Be wise when picking names.  
- you may want to search google to see if the thing already exists

here are a few commands I use all the time.  The results (if any) are all stored within the entity's data directory.  

Marsha checks certs then builds her website in `~/.marsha/sites/qr.ourcoin.ca/`
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

Marsha starts her interface in `~/.marsha/interface/`
```bash
marsha start interface
```

Astro opens an SSH connection to `device://jersey` and logs in (passwordless) as the user `astro`
```bash
astro ssh jersey
```

## Folders

koad:io installation  
```bash
 cd ~/.koad-io
 ls -la
```

This folder doesnt keep any personal data, its a clone of `https://github.com/koad/io`

warn: making changes in this directory may make your shit not work.  You want to make an entity, and it the entity's directory to override the parts of koad:io you wish to customize.

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

### Well known

| what 						| where 	| why	 |  
| ------------------------- | --------- | ------------------------------------ |
| `CATCHALL_DOMAIN_NAME`	| [wildcard-cert](/setup/lets-encrypt-wildcard-cert) | inbound email address generation |
| `WILDCARD_DOMAIN_NAME`	| [wildcard-cert](/setup/lets-encrypt-wildcard-cert) | private inbound subdomain generation |

