```javascript

const {Signale} = require('signale');

log = new Signale({
	displayDate: true,
	displayTimestamp: true,
	types: {
		warning: { badge: 'Ξ',	color: 'yellow',	label: 'warning',	logLevel: 'info' },
		alert: 	{ badge: 'և',	color: 'yellow',	label: 'alert',		logLevel: 'info' },
		remind: { badge: 'Ҝ',	color: 'yellow',	label: 'remind',	logLevel: 'info' },
		danger: { badge: 'ѻ',	color: 'red',		label: 'danger',	logLevel: 'info' },
		santa: 	{ badge: '🎅',	color: 'red',		label: 'santa',		logLevel: 'info' },
		pending: { badge: 'ͽ' },
	}
});

log.config({
  displayTimestamp: true,
  displayDate: true
});

log.debug(koad);

```