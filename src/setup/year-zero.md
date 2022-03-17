# WORK IN PROGRESS
## THIS PAGE IS STILL BEING DRAFTED!

You start from nothing, and from there; comes everything.

## Spawn a trusted zone.

Lets design you a new, most perfect, digital environment.  One that you can stretch out in and really be creative.

Start with one device, and build out your world. 

You want a machine that can be left on all the time.  One that wont heat up and kill itself, and one that doesnt make any noise. 

You can't use a raspberry pi for sandstorm, but can for the rest.  I recommend buying some mini-pc that doesnt

you could put sandstorm right on your laptop to have it available to you with no internet,
you could put many sandstorms up,  I have mine in a dedicated server from dacentec.

### Choosing your hardware

You want a device that will run your kingdom without breaking down. 

#### ethernet ports
If you use a device with 2 ethernet ports, you can also use it to secure your physical network. (firewall)


### Placing your hardware

You might consider disguising this device.  If you make it look like a doorbell or clock, you would 
have a greater chance of it not being stolen or otherwise `captured`.



## Identify attack vectors.

Is your home wifi physically also the same device as your modem?

you NEED a point of entry (firewall), and your ISP shall not enter. 



## Start slow, think long and hard and don't rush.

Don't take any short cuts.  Setting your space up right will unlock glorious potential in your life's experience.   Your ablities to interact with and take advantage of your life's data will super-charge your ability to manifest pre-paved outcomes.


## 

### Email services

Running an email server has always been a royal pain in the ass.  I let google handle my email for far too long.  I will expand this info as I sort it all out.

I plan on using ...


[Dovecot](http://dovecot.org/)
-   [IMAP](https://en.wikipedia.org/wiki/Internet_Message_Access_Protocol) over SSL
- 	full text search provided by [Solr](https://lucene.apache.org/solr/).
-   [POP3](https://en.wikipedia.org/wiki/Post_Office_Protocol) over SSL, also via Dovecot


[Postfix](https://www.postfix.org/)
-   [SMTP](https://en.wikipedia.org/wiki/Simple_Mail_Transfer_Protocol) over SSL 
-  	including a nice set of [DNSBLs](https://en.wikipedia.org/wiki/DNSBL) to discard spam before it ever hits your filters.


[PostgreSQL](http://www.postgresql.org/).
-   Virtual domains for your email



server verification NS records so the Internet knows your mailserver is legit.
- 	[DKIM](http://www.dkim.org/)
- 	[DMARC](http://www.dmarc.org/) 

[Rspamd](https://www.rspamd.com/)
- 	Spam fighting

[EncFS](http://www.arg0.net/encfs)
-   Secure on-disk storage for email and more.

-   [CalDAV](https://en.wikipedia.org/wiki/CalDAV) 
-   [CardDAV](https://en.wikipedia.org/wiki/CardDAV) 


-   [Monit](http://mmonit.com/monit/) to keep everything running smoothly (and alert you when it’s not).
-   [collectd](http://collectd.org/) to collect system statistics.

-   Firewall management via [Uncomplicated Firewall (ufw)](https://wiki.ubuntu.com/UncomplicatedFirewall).
-   Intrusion prevention via [fail2ban](http://www.fail2ban.org/)
rootkit detection via [rkhunter](http://rkhunter.sourceforge.net).
-   SSH configuration preventing root login and insecure password authentication

nginx

-   [RFC6238](http://tools.ietf.org/html/rfc6238) two-factor authentication compatible with [Google Authenticator](http://en.wikipedia.org/wiki/Google_Authenticator) and various hardware tokens
-   Nightly backups to [Tarsnap](https://www.tarsnap.com/).

git
- tea
- keybase
- gitlab/sandstorm

-   Read-it-later via [Wallabag](https://www.wallabag.org/)


### Matrix home server

- matrix synapse home server
- element progressive web app (chat)
- jitsi meet (zoom like meeting space)


### Sandstorm 
- x86 only

