
## nodejs
### verdaccio

#### setup
```bash
export ENTITY='alice'
export REALM_LOCATION='10.10.10.10'
export INSTALLATION_PATH=$HOME/.$ENTITY/registries/npm; 
export OPERATING_PATH=$INSTALLATION_PATH/local; 
```

#### prepare
```bash
mkdir -p $OPERATING_PATH/storage && cd $OPERATING_PATH
wget https://raw.githubusercontent.com/verdaccio/verdaccio/5.x/conf/docker.yaml
sudo chown -R 10001:65533 $OPERATING_PATH
cd $INSTALLATION_PATH
```

#### install / run
```bash
docker run -it --rm --name npm-registry \
  -p $REALM_LOCATION:4873:4873 \
  -v $OPERATING_PATH/docker.yaml:/verdaccio/conf/docker.yaml \
  -v $OPERATING_PATH/storage:/verdaccio/storage:rw \
  -v $OPERATING_PATH/plugins:/verdaccio/plugins:rw \
  verdaccio/verdaccio
```

#### use

use any one of the following to make use.

##### set manually
```bash
npm set registry http://10.10.10.10:4873/
```

##### use manually
```bash
npm install --registry http://10.10.10.10:4873
```

##### add to local env
```bash
export NPM_CONFIG_REGISTRY=http://10.10.10.10:4873
```

##### set in .npmrc
```bash
registry=http://10.10.10.10:4873
```

##### `publishConfig` in your `package.json`
```json
{
  "publishConfig": {
    "registry": "http://10.10.10.10:4873"
  }
}
```

#### precache
```bash 
nvm use 14 && yarn add ws express fastify socket.io async rxjs lodash jsonwebtoken bcrypt uuid jest winston debug minimist chalk colors ora axios fetch nodemailer passport mongoose mini-mongo nodemon dotenv cross-env commander yargs eslint js-yaml typescript fs-extra rimraf mkdirp glob shelljs ramda yup underscore validator date-fns cheerio hapi karma pug less morgan jsdom
```

#### web UI
[http://10.10.10.10:4873/](http://10.10.10.10:4873/)


#### reference

- [verdaccio.org/docs/docker](https://verdaccio.org/docs/docker)  
- [verdaccio.org/docs/installation](https://verdaccio.org/docs/installation)  
