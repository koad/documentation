# `.env` - file cheatsheet
file: [`~/.koad-io/.env`](/cheatsheets/meteor-js/dot-env)  

this file exists in many places.  be mindful of stacking

### koad:io installation
file: [`.env`](/cheatsheets/meteor-js/dot-env)  
Don't put things here except for hardware related things. Using the koad-io bare installation is not recommended and may result in unintended consequences.

### Standard koad:io entity
file: [`~/.alice/.env`](/cheatsheets/meteor-js/dot-env)  
```env
KOAD_IO_INSTANCE=alice
KOAD_IO_DOMAIN=koad.sh
KOAD_IO_DOMAIN_WILDCARD=0
KOAD_IO_LOCAL_USER=koad

METEOR_PACKAGE_DIRS=$HOME/.alice/packages 

DB_USER_NAME=PUT_YOUR_DB_USER_NAME_INFO_HERE
DB_USER_PASS=PUT_YOUR_DB_USER_PASS_INFO_HERE
DB_HOST=PUT_YOUR_DB_HOST_INFO_HERE
DB_PORT=PUT_YOUR_DB_PORT_INFO_HERE
DB_NAME=PUT_YOUR_DB_NAME_INFO_HERE
MONGO_URL=mongodb://DB_USER_NAME:DB_USER_PASS@DB_HOST:DB_PORT/DB_NAME
```

### Standard koad:io website
file: [`~/.alice/site/koad.sh/.env`](/cheatsheets/meteor-js/dot-env)  
```env
KOAD_IO_DOMAIN=ecoincore.com
KOAD_IO_DOMAIN_WILDCARD=1
KOAD_IO_TYPE=site
KOAD_IO_PORT=34333
KOAD_IO_HOST=lenoir
KOAD_IO_USER=koad
KOAD_IO_SOURCE=koad-on-wonderland

SOURCE=src
DATADIR=$HOME/.$KOAD_IO_INSTANCE/sites/$KOAD_IO_DOMAIN
BUILDDIR=$DATADIR/builds/$CURRENT_DATE_TIME

WINDOW_SIZE='1440,900'
```