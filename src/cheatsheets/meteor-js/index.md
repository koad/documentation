# meteorjs - tool cheatsheet

> Meteor is an open source framework for seamlessly building and deploying Web, Mobile, and Desktop applications in Javascript.  
[meteor.com](https://www.meteor.com/)

## program cheatsheet

### install Meteor
```bash
npm install -g meteor
```
```bash
yarn install -g meteor
```
need `npm`?  install it via [`node-volume-manager (nvm)`](/cheatsheets/node-volume-manager)

### create new bare meteor project
will create a folder called `src` in the `current working directory`
```bash
meteor create --bare src
```

To start with a different app template, try one of the following:
```bash
 meteor create --bare       # to create an empty app
 meteor create --minimal    # to create an app with as few Meteor packages as possible
 meteor create --full       # to create a more complete scaffolded app
 meteor create --react      # to create a basic React-based app
 meteor create --vue        # to create a basic Vue-based app
 meteor create --apollo     # to create a basic Apollo + React app
 meteor create --svelte     # to create a basic Svelte app
 meteor create --typescript # to create an app using TypeScript and React
 meteor create --blaze      # to create an app using Blaze
```

### use a koad:io skeleton
only use a `--bare` project when using a skeleton.

> copy the PWA skeleton to override aspects of the `--bare` project.
```bash
meteor create --bare src && \
cp -Rf ~/.koad-io/skeletons/progressive/* ./
```

use your [`entity`](https://docs.koad.sh/reference/koad-io-entity/) to create this same setup in the `usual place`
```bash
alice create site --progressive example.koad.sh
```

### opt out of mongodb (production)

Meteor will automatically spawn a mongodb in the .meteor/local folder of your project when you are developing it but a built project in production needs MONGO_URL to be set.

If you want to run meteor without a mongodb (accounts and live data won't work), or maybe use a different DB for these things (advanced af).

Good for...

1. simple sites that don't have login, 
2. serverside done in-memory only (mongodb in-memory collections, never calling an actual DB).
3. that use a different meteor server's via DDP.

[issues/31](https://github.com/meteor/meteor-feature-requests/issues/31)

```bash
export MONGO_URL=false
```

## file specific cheatsheets
file: [`src/.meteor/packages`](/cheatsheets/meteor-js/dot-meteor-slash-packages)  
file: [`.env`](/cheatsheets/meteor-js/dot-env)  

## links

[install meteor - www.meteor.com/developers/install](https://www.meteor.com/developers/install)  
[documentation - docs.meteor.com/install.html](https://docs.meteor.com/install.html)  
[api documentation - docs.meteor.com/api/core.html](https://docs.meteor.com/api/core.html)  
[cli documentation - docs.meteor.com/commandline.html](https://docs.meteor.com/commandline.html)  
[environment variables - docs.meteor.com/environment-variables.html](https://docs.meteor.com/environment-variables.html)  
