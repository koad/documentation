In a koad/io installation, there are several `.env` files that are used to configure specific components or services. These files store environment variables, which are key-value pairs that define various settings for the corresponding components.

Here is an explanation of the different `.env` files you may encounter:

1. `.env`: This is the main `.env` file located in the root directory of your koad/io installation (`~/.alice` or any other entity name). It contains general environment variables that are applicable to the entire installation. These variables may include configuration settings for the overall behavior of the system, such as logging options, default paths, or global settings.

2. `~/.[entity]/.env`: Each entity may have its own `.env` file.  They contain environment variables specific to that entity, allowing you to customize the configuration for each individual entity.


The `.env` files play a crucial role in configuring and customizing your koad/io installation. They provide a convenient way to manage settings and make adjustments without modifying the source code or configuration files directly. It's important to review and update these files carefully to ensure proper configuration and functionality of your koad/io environment.


## example `.env` file:

```
HARDWARE_DESCRIPTION="koad's workshop"
NPM_CONFIG_REGISTRY=http://10.10.10.10:4873
DOCKER_REGISTRY_ROOT=/var/lib/registry
METEOR_PACKAGE_DIRS=$HOME/.koad-io/packages 
```


## example `~/.[entity].env` file:

```
ENTITY='alice'
KOAD_IO_INSTANCE=$ENTITY  # old koad:io version, using only for backwards compatibility
KOAD_IO_ENTITY=$ENTITY 	  # same, so you likely won't use theses, they are included for koad's convenience

KOAD_IO_NETWORK=SOME_ZEROTEIR_INTERFACE_NETWORK

# Where can your entity's UI interface be hosted/found
KOAD_IO_WEBAPP=alice.example.com
KOAD_IO_BIND_IP=10.10.10.10

KOAD_IO_LIGHTHOUSE=10.10.10.10
LIGHTHOUSE_LOGIN_TOKEN=SOME_LOGIN_TOKEN_OPTIONAL

KOAD_IO_HOST=$HOSTNAME
KOAD_IO_USER=$USER

// Used when deploying into production
KOAD_IO_PROD_HOST=helsinki
KOAD_IO_PROD_USER=alice

DB_USER_NAME=SOME_DB_USERNAME
DB_USER_PASS=SOME_RANDOM_PASSWORD
DB_NAME=SOME_DB_NAME
DB_HOST=10.10.10.10
DB_PORT=27017

MONGO_URL=mongodb://$DB_USER_NAME:$DB_USER_PASS@$DB_HOST:$DB_PORT/$DB_NAME
POSTGRESQL_URL="nope"
INFLUXDB_URL="nope"

```



## example `~/.[entity]/site/example.com/.env` file:

```
# Describe the app to koad:io (used on dashboards/reports)
KOAD_IO_TYPE=site
KOAD_IO_LABEL=website
KOAD_IO_APP_NAME=nightly.example.com

# Bind to whatever IP you want
KOAD_IO_BIND_IP=10.10.10.10

# Bind to whatever port you want
KOAD_IO_PORT=12345

# koad:io can use the same login throughout many subdomains on the same domain
KOAD_IO_DOMAIN=example.com
KOAD_IO_DOMAIN_WILDCARD=0

# Let the app know we are behind NGINX
HTTP_FORWARDED_COUNT=1
ROOT_URL=https://nightly.example.com/

```

