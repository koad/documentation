## Make your koad-io or meteor app a server-side only thing.

### how?

Install a 404 handler to deal 404 errors instead of your app for any route that is not being used.

`src/server/404-handler.js`
```js
import { Meteor } from 'meteor/meteor'
var pathToRegexp = require('path-to-regexp')
EventLog = new Mongo.Collection('eventlog');

// we populate this once the app has fully started. (Meteor.startup())
paths = [];

// list of hosts that this app will be responsible for answering on.
// if a request comes in on any other host then reject it.
hosts = [
	"api.koad.sh",
	"whatever.koad.sh",
];

var isValidHost = function(requestHostname){
	return hosts.includes(requestHostname);
};

var isValidRoute = function(requestUrl){
	splitUrl = requestUrl.split('?')[0]
	valid_route = false
	paths.forEach(function(path) {
		if(pathToRegexp(path).test(splitUrl))
		{
			valid_route = true
			return false;
		} else {
			return true;
		}
	});
	return valid_route
};

Meteor.startup(() => {

	let routeList = Router.routes;
	routeList.forEach(function(route){
		if(route && route._path && (paths.indexOf(route._path) == -1)) paths.push(route._path)
	});

	WebApp.connectHandlers.use('/', (req, res, next) => {
	
		let validHost = isValidHost(req.headers["host"]);
		let validRoute = isValidRoute(req.url);

		if(validHost && validRoute){
			// log.info('valid route:', req.url);
    		next(); // Route exists, let iron router render it    
		} else {
			// log.info('invalid route touched:', req.url);
			var connection={};
			if(typeof req.headers === 'object'){
		        connection = req.headers['x-forwarded-for'].split(",")[0] || req.connection.remoteAddress || req.socket.remoteAddress || req.connection.socket.remoteAddress;
			} else log.error('unable to find the headers in the connection request!!!')
	        

	        /////
	        /////
	        // maybe you want to grab the info here, since if there is a 404 error -- would be nice to fix if it's not intentional.
		        var host = req.headers['x-forwarded-host'];

				var event = {
				    host,
				    user: this.userId || connection,
				    message: "File not found for '"+req.url+"'",
				    date: new Date(),
				    type: "404 ERROR",
				    icon: 'fa fa-warning'
				};

		        EventLog.insert( event );
				// log.info({event});
	        /////
	        /////

			res.writeHead(404, {'Content-Type': 'text/html'});
			res.end();
		}
	});
});

```