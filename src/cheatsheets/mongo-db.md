
### setup
set some enviroment variables, then the following commands would work out of the box.
```bash
export KOAD_IO_ENTITY=marsha
export DB_USER_NAME=$KOAD_IO_ENTITY
export DB_USER_PASS=$(dd if=/dev/urandom bs=1 count=32 2>/dev/null | base64 -w 0 | rev | cut -b 2- | rev)
export DB_HOST=10.10.10.11 # The host inside my overlay
export DB_PORT=27017
export DB_NAME=$KOAD_IO_ENTITY

export DB_ROOT_INIT_USERNAME=koad
export DB_ROOT_INIT_PASSWORD=$(dd if=/dev/urandom bs=1 count=32 2>/dev/null | base64 -w 0 | rev | cut -b 2- | rev)
```


if you use the previous commands, you should also print out the passwords rthat were generated. 
```bash
echo && \
echo "generated two passwords, copy and paste them somewhere safe!" && \
echo DB_USER_PASS=$DB_USER_PASS && \
echo DB_ROOT_INIT_PASSWORD=$DB_ROOT_INIT_PASSWORD && echo
```

maybe you want to use this as a state DB for a koad:io entity? .. paste the the passwords in the entity's `.env` file.
```bash
echo && echo "$KOAD_IO_ENTITY's .env file > $HOME/.$KOAD_IO_ENTITY/".env && echo
```

I'll use my personal overlay for DB_HOST, this way nobody can connect to it unless they are inside my metaverse.  maybe auth is optional here, since maybe I am the only one with access to the overlay.  hmm.


### create
your DB using docker,
```bash
docker run --name $KOAD_IO_ENTITYs-mongodb -d -p $DB_HOST:$DB_PORT:27017 -v /home/koad/.$KOAD_IO_ENTITY/database/mongo:/data/db -e MONGO_INITDB_ROOT_USERNAME=$INIT_ROOT_USERNAME -e MONGO_INITDB_ROOT_PASSWORD=$INIT_ROOT_PASSWORD mongo 
```

### connect

use this to find out your string
MONGO_URL=mongodb://DB_USER_NAME:DB_USER_PASS@DB_HOST:DB_PORT/DB_NAME
```bash
echo "MONGO_URL=mongodb://$DB_USER_NAME:$DB_USER_PASS@$DB_HOST:$DB_PORT/$DB_NAME"
```

connect via another container
```bash
docker run -d --name MYAPP -e MONGODB_CONNSTRING=mongodb+srv://username:password@clusterURL MYAPP:1.0
```

## hmmm..

Maybe my shit is too old,.

MongoDB 5.0 CPU Intel G4650 compatibility
```bash
WARNING: MongoDB 5.0+ requires a CPU with AVX support, and your current system does not appear to have that!
  see https://jira.mongodb.org/browse/SERVER-54407
  see also https://www.mongodb.com/community/forums/t/mongodb-5-0-cpu-intel-g4650-compatibility/116610/2
  see also https://github.com/docker-library/mongo/issues/485#issuecomment-891991814
```



## links

[Docker and MongoDB - mongodb.com/compatibility/docker](https://www.mongodb.com/compatibility/docker)  