
First things first...

---
## Pick a username

before you go and make your user.  Think about a username.

- Don't include your real name
- Don't include your birth year
- Do pick a cool name you can live with, you won't be able to change it later.

> Stuck?  Generate a random one > [coolgenerator.com](https://www.coolgenerator.com/username-generator)


---
## Pick a domain name

By installing applications in a way where we can use the browser to access them, we can move out of locking ourselves into single devices.

We will use a single wildcard certificate to secure many subdomains to your various applications.
- this limits the amount of details leaked to the domain/DNS providor.
- private endpoints can exist without 3rd party configurations

You need to come up with a domain name.  This will be used for email, matrix as well as hosting sandstorm and bestoke interfaces you find in the future.

examples
1. office.YOURNAME.sh
2. meet.YOURNAME.sh
3. whatever.YOURNAME.sh

Since we use subdomains, there is some interplay available between the web-apps that would otherwise not exist.  

### Aquire your domain name

You can get a domain name from basically anywhere.  Out of all the registrars I have used, [https://porkbun.com/](https://porkbun.com/) has easily become my favorite.

Porkbun is the fastest registrar (almost instant) for recognising updated txt records which is something we do here when we go to get our wildcard cert. 

Porkbun also has an API, but I havent yet taken advantage of that; but plan on it.

I don't have a referal code for porkbun.com.  The companies I do have referal codes for arent worthy.

---
## Keybase identity

The keybase manual is located at [book.keybase.io](https://book.keybase.io/), you will want to browse through it a few times to really get your head around the concept of `peer based encryption`.




#### Before you begin

##### proceed with caution
When creating your keybase account you will be asked for your mobile number as well as your email.  You don't have to give this information to keybase and you do not have to share your contacts with the app either.  These things are optional.


##### Concept of `Proofs`
The best way to let others know that your Keybase account belongs to you is to tell them in person. The next best way is through proofs.

Proofs link your Keybase account to your other online accounts. Proofs help people trust that you are really you on Keybase



#### After you sign up


##### Think before you follow

When [following a fellow Keybase user](https://book.keybase.io/account#following), your keybase app will always keep up an up to date catelog of your peer's keys.  BUT everyone in the world can see that you followed that person.  You may not want to follow people you know and love publically.  

This information is called your `social graph`, so be mindful before you follow anyone on keybase.

You should only publicize things that is already public knowledge.  This might include your teams and other things that have brands.  

>  We've been working on Keybase.io for a little over half a year now, and we would like it succeed, but we're a little bit nervous. The more successful we are, the more valuable target we become.
[keybase.io/docs/server](https://book.keybase.io/docs/server)

read and consider '[What Keybase is Really Doing](https://book.keybase.io/docs/server#what-keybase-is-really-doing)'

tip: follow random people to camouflage your true social structure!

##### Securing a backup key

You will often see backup keys in the new techno-revolution.  The old way was `username and password` which has been replaced by `cryptographic maths`.  Your keys are your anchors in the sea of unlimited possibilities.  

Keybase, like many new-age applications, generate a `mnemonic phrase` for backing up.  This phrase is like any other device key but it is displayed as human readable (and copyable) words instead of a `bunch of random letters and numbers`.  This is for you to write down and keep safe. 

__If you lose all all of your devices and keys, you will never be able to get back in to your keybase account.  Keybase cannot reset your account, you will be locked out.__

Never take a screenshot or picture of your device keys!  Always write them out by hand and mark them with the date and the name of the app (in this case, Keybase).


exerpt from [book.keybase.io/account](https://book.keybase.io/account#devices)
> When you create your Keybase account, Keybase creates a key pair for your account and the device—your phone or computer—that you sign up with.

> The public key is uploaded to Keybase’s servers and is publicly available. The private key lives only on your device. This means that no one else can access your account—or anything shared through it—without having your device (not even Keybase).

> You can and should add more devices and paper keys to your account so you don’t lose access to it if you lose a device. A paper key is a long string of randomly-generated words that’s linked to your account the same way a device is.

> When you add a new device or paper key, your existing device vouches for the new one. All your devices and paper keys are cryptographically linked. And each additional device or paper key you add to your account also gets a key pair.

> So, no one can compromise your account without having all of your devices and paper keys. This guarantees that only you have access to your account.


##### Lockdown Mode
[keybase.io/docs/lockdown](https://book.keybase.io/docs/lockdown)

__Disable all web site features that mutate or expose sensitive cloud-hosted data.__

Once in lockdown mode, all security-sensitive features must be performed on a valid Keybase device, with an active signing key.

Users can only enable or disable lockdown mode with a valid Keybase device (and, of course, never from the Web site). This can be done:

- via mobile apps (☰ → Advanced → "Forbid accounts changes from the Website")
- via desktop apps (☰ → Settings → Advanced → "Forbid accounts changes from the Website")
- via the CLI (keybase account lockdown --enable)

---
## Aquire your hardware

A device that can act on your behalf, always-on and present to answer the call of other devices so you can be reached by your peers in the metaverse.

__Your eyes and ears for connecting within digital spaces.__


I recommend starting with two devices,

### on premise
this is your personal effects
 - a raspi 4 is a good choice for now (2022)
 - add network storage
 - pihole dhcp services +unbound dns
 - backup services 
 - SSH access: bash prompt

### a public face
 - email services
 - matrix services
 - sandstorm services
 - nginx + letsencrypt
 - can run processes that are hosting public services
 - can secure and route private area network services
 - can proxy connections to local ports or overlay ports

This device should exist in a datacenter somewhere, you might already have something else in mind.  The power required is not much unless you interact with alot of federated matrix servers or create alot of grains in your Sandstorm.

#### Linode
Linode takes an extra step to `set a clever hostname`.

Image  
- Ubuntu 18.04 LTS

Region
- Choose whichever is closest to you

Linode Plan  
- Shared CPU  
 - Linode 2 GB  
  - $10/mo ($0.015/hr) USD  
  - 1 CPU, 50 GB Storage, 2 GB RAM  
  - 2 TB Transfer  
  - 40 Gbps In / 2 Gbps Out  

Linode Label
- set label as your clever hostname

[Linode referal code](https://www.linode.com/?r=22e92537ea1123350bfe2f5b8c8812e6d5278adc)
> Using my referal code you'll receive a $100, 60-day credit once a valid payment method is added to your new account. When you spend $25 on Linode services, and have remained an active customer in good standing for 90 days, i'll receive a $25 non-expiring account credit. 

#### Vultr

Choose Server  
- High Frequency  

Server Location  
- Choose whichever is closest to you

Server Image  
- Ubuntu 18.04 x64  

Server Size  
- 64GB NVMe  
- $12/month USD  
- 1 CPU  
- 2 GB Memory  
- 2 TB Bandwidth 

Server Hostname & Label
- Be sure to `set a clever hostname`

[Vultr referal code](https://www.vultr.com/?ref=9012486-8H)
> I earn $35 for every new unique paid user I refer. The users I refer receive $100 to test out vultr's platform. Duplicate accounts not eligible. Referred customer must link a valid credit card or Paypal method to be eligible for the $100 credit. Unused portion of $100 credit expires after 14 days. Referred users must be active for 14+ days and use at least $35 in payments to be counted as verified sales.


Both Linode and Vultr will let you upgrade your VPS's specs if you get too popular for your own good. If you get too popular, you might need to upgrade into a dedicated server.

## With this setup

### Access the progressive web apps (PWA) 

that are hosted on your VPS
- You can use your hosted element web app in a browser, mobile device or chromebook.
- You can use your hosted jitsi web app in a browser, mobile device or chromebook.
- You can use sandstorm in your browser
- You can clean and block traffic on your home network
- You can build and serve all kinds of webservices for your life at work and at play.

### Generate Email Accounts
#### Set a Catch All email account

### Parental Control
#### Filter websites
#### block known corporate spying and telemetry


