We will use mongodb to store state and authentication data for our `entity`.


## Install

Install direct from MongoDB's repo
```bash
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

sudo add-apt-repository 'deb [arch=amd64] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse'
sudo apt install mongodb-org
sudo systemctl enable --now mongod
```

Install using a docker container
```bash

```

## Secure

create root user,
```mongodb
use admin
db.createUser({user:"koad", pwd:"PUT_MONGODB_ROOT_PASSWORD_HERE", roles:[{role:"root", db:"admin"}]})
```

From within mongo, authenticate as root
```mongodb
use admin
db.auth( "koad", "PUT_MONGODB_ROOT_PASSWORD_HERE")
```


## Setup

Connect to dabrain's mongo instance as root
```bash
mongo --host 127.0.0.1 -u koad -p PUT_MONGODB_ROOT_PASSWORD_HERE --authenticationDatabase admin
```

Create a new database and user for some app somewhere
```mongodb
use alice
db.createUser(
  {
    user: "alice",
    pwd: "somerandompassword",
    roles: ["readWrite"],
    mechanisms:[  
      "SCRAM-SHA-1"
    ]
  }
)

```

## Maintain
Connect to the instance
```bash
mongo --host $MONGO_URL
```
See what is what (from within the mongo shell)
```
db.runCommand({connectionStatus : 1})
```

Restart the installed mongodb instance
```bash
sudo systemctl restart mongod
```

Restart the dockerizes mongodb instance
```bash
```

## Utilize

Use this DB on some meteor app.. prefix the meteor command with
```
export DB_USER_NAME=PUT_YOUR_DB_USER_NAME_INFO_HERE
export DB_USER_PASS=PUT_YOUR_DB_USER_PASS_INFO_HERE
export DB_HOST=PUT_YOUR_DB_HOST_INFO_HERE
export DB_PORT=PUT_YOUR_DB_PORT_INFO_HERE
export DB_NAME=PUT_YOUR_DB_NAME_INFO_HERE
export MONGO_URL=mongodb://DB_USER_NAME:DB_USER_PASS@DB_HOST:DB_PORT/DB_NAME
```

references:
https://linuxize.com/post/how-to-install-mongodb-on-ubuntu-20-04/
https://www.digitalocean.com/community/tutorials/how-to-install-mongodb-on-ubuntu-20-04
