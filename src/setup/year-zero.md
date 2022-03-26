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


## Core component pieces of any digital kingdom.

Being the king means you are responsible for your kingdom.

`Only you` can create your digital kingdom.  Computers are like little kingdoms.  The root user is the king, and everyone else is her subject.  Bring your devices together using `maths` to ensure the longevity of your metadata and become `The King of all Data`.  You can then pass the kingdom down through the generations and leave a lasting legacy of experience for your lineage.


### Encryption keys

encryption keys are little bits of information you can use to `sign`, `verify`, `encrypt` and `decrypt` data.  These four functions can be used to safely lock up data so you can put them places that might not otherwise be trusted.  If you can lock up your data, then you can worry less about where your data is stored.

encryption keys also give you the ability to `identify` others in the digital spaces.  without any keys, it is impossible to `know for sure` who you are talking to or who is eves-dropping.  the lack of main-stream use of encryption keys is the primary reason `scamming` online is so ramped.

Learn how to use and manage encryption keys; these are the keys to your `personal meta-verse`.  This is will be the deciding factor in whether or not you are able to maintain your freedom in the coming technological future.


### Communications

| depends on keys.

Where can you go, right now, and have a private conversation with someone you love?  Can you prove nobody else is listening in or recording your thoughts?

You need to be aware of the methods of communication you are using.  You need to know that the path your message takes through the internet to get to it's intended recipient often opens the message up to others who can read, record and analyze the messages.

If you use the recipient's `public encryption key` to lock the messages up, you can rest assured that only the intended recipient can see the contents of the messages.




### Data storage using Git

Imagine having an undo button on any folder on your computer and have the ability to set permissions on who can read and who can write to your folder.

Git is used to transform a computer folder into a place where it can be worked on by many people in many locations.  Git is a perfect tool for anyone to secure their personal files and folders using multiples of their own devices.


### Digital identity.

You must be the creator of your own digital identity.  If you allow corporations and governments to issue you a digital identity you will never live free.  Freedom comes with the biggest cost of all; responsibility.  You are responsible for the safety and privacy of your own data.  



# recommendations

The following three items are a staple in starting down the road to building a personal digital space (meta-verse) where privacy and creativity are both first-class citizens.  This is not the end-game, this is just the beginning; with a solid foundation for future growth.

## Keybase 
- for key, social profile, private git repositories and public teams

Keybase is a perfect place to become introduced to private key technology.  It allows an entry-level user to create a key for each of their devices and bring them together in a digital identity controlled solely by the user. 

Keybase extends the digital identity to provide many advanced features in a simplified and easy to use user interface. Public, private and team chat, files and git are immediately available to the most in-experienced user which will help you get your toes wet in coming cryptographic revolution.

Keybase is not the final solution.  Keybase a proprietary service and is owned by Zoom.  It uses amazon web services (AWS) to store your data.  Your files, folders and messages are saved on Amazon's computers but they are contained and locked up using keys that never leave your devices.  Keybase has gone through great lengths to assure us that they a safe solution to our needs, but a real king knows home is the only real place to build his kingdom.

You should strive to eventually replace Keybase with self-hosted and non-custodial tools and devices for things that are dear to you.  It is recommended only for the greenest of users; as well as those who wish to take advantage of the public profile and cryptographic proofs and key exchange that Keybase offers.

Read more about [my thoughts and feeling on Keybase](https://ecoincore.com)

## Matrix
- for private chat, clubs and businesses.

Matrix is an open network for secure, decentralized communication.  Similar to email, in that you use the matrix along with a domain name and have an address similar to email.  Matrix works best by installing a `home server` at your house where you can keep it along with your other `personal affects`.  You could also ask a friend or family member who is more technically skilled to host your matrix services or join a local `users group` where you can find a skilled neighbor to help out.  

Once you have a matrix server in order, you will forever have a place to call home.  Keep your server clean, invite only those you trust, and don't be afraid to create new channels for each topic/project in your life.   You could also use this privately, like a journal.  You can create channels where you are the only one present.

Learn more about how and why you need to drop everything and `jack in to the matrix now`

Once you get into the matrix, [send me a `dm` at @matrix:koad.sh](@matrix:koad.sh)

## GTD
- for learning the behavior of highly effective people.

David Allen's book, 'GTD: The Art of Stress-free Productivity' (circa 2002), gives insight into the human psyche and the behaviors which cause `cognitive dissonance`.  His systematic approach to dealing with `inputs` will help you understand the process of becoming organized and dealing with the `fire-hose of reality`.

Allen's book does not get into any high-tech tools or applications;  he offers a strict `low-tech` approach that anybody can use to get started with paper and pen.  Only when you learn the fundamentals and apply them in your life, as well as, learn how to safe-guard your data would I recommend `upgrading` your routine to a digital one.

Allen's premise is simple: our productivity is directly proportional to our ability to relax. Only when our minds are clear and our thoughts are organized can we achieve effective productivity and unleash our creative potential. In Getting Things Done Allen shows how to:

* Apply the "do it, delegate it, defer it, drop it" rule to get your in-box to empty
* Reassess goals and stay focused in changing situations
* Plan projects as well as get them unstuck
* Overcome feelings of confusion, anxiety, and being overwhelmed
* Feel fine about what you're not doing

From core principles to proven tricks, Getting Things Done can transform the way you work, showing you how to pick up the pace without wearing yourself down.


---

Once you have keys, communication, storage and a solid system for dealing with projects/inputs you will be more powerful than a million men.  Having the direction, insight and determination to accomplish your goals is the key to effortless creation.


# Next steps

- [Tao Te Ching](/reference/books/lao-tzu-the-book-of-the-way/)
- [The Amazing Power of Deliberate Intent: Living the Art of Allowing
](/reference/books/the-amazing-power-of-deliberate-intent/) by Jerry and Ester Hicks
- Conversations with God: An uncommon dialog, [Neale Donald Walsch](http://www.nealedonaldwalsch.com/)
