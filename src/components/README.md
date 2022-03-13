## Core Components

I like to have things work together but component pieces operate as a single unit.  We call these `micro-services`.

I use several individual fundamental parts to create a foundation where all these `micro-services` can be derived.

these components become the standardized [koad:io](https://github.com/koad/io) stack.

any one of these can be used by itself,  the magic is in the synergistic effect of combining them.

the layers I put on top of these items becomes my `kingdom`, or `barn` as Scott would say.  It is a space in the digital real estate that exists within my files and folders.  It's an operating system for __me__, one that is independent from any one device.

> many of this can be hosted by a loved one or a team mate.

### Sandstorm [sandstorm.io](https://sandstorm.io/)

Sandstorm gives me ability to create independent sandboxes and send invites out directly to people I want to interact with.  The sandboxes could contain whatever I want, whether it is a [spreadsheet](https://apps.sandstorm.io/app/h37dm17aa89yrd8zuqpdn36p6zntumtv08fjpu8a8zrte7q1cn60), [whiteboard](https://apps.sandstorm.io/app/1gda5n8p8zsc0r9pcana2yjgtvsq169068k4ve8mk68z4x9fvzuh) or [kanban board](https://apps.sandstorm.io/app/m86q05rdvj14yvn78ghaxynqz7u2svw6rnttptxx49g1785cdv1h).  I can install apps from the [sandstorm appstore](https://apps.sandstorm.io/) or from any of my personal repositories with a single click.

- All my invite-only apps and data in one place
- consistent access control.

> __Sandstorm protects you.__ Each document, chat room, mail box, notebook, blog, or anything else you create is a "grain" in Sandstorm. Sandstorm containerizes each one in its own secure sandbox from which it cannot talk to the world without express permission. All your grains are private until you share them. The result is that 95% of security vulnerabilities are automatically mitigated.  

  
> Sandstorm makes it easy to adhere to security, regulatory, and data privacy requirements. Sandstorm manages access control on every document, so it can show who has access and allow you to revoke that access at any time. Self-hosting Sandstorm enables organizations to have complete control over where their data is stored.
[sandstorm.io](https://sandstorm.io/)


### eCoinCore

eCoinCore collects information about blockchains out in the wild.  It organizes and maintains connections to these blockchains and relays these connections into the rest of my kingdom.  This is like a VPN for blockchains, as no third party can view my queries.

> eCoinCore, Rated e for everyone! An instant-on, self-hosted blockchain toolkit with a baked-in SPV locator and daemon manager.
[ecoincore.com](https://ecoincore.com/)

### Matrix

Matrix allows for communication throughout my kingdom.  Channels and messages exist only within the peers involved.

Matrix channels are used to control application config and logic.  It is useful for signaling within multi-user applications within and outside of the kingdom.

> Matrix is an open source project that publishes the
Matrix open standard for secure, decentralised, real-time communication, and its Apache licensed reference implementations.
[matrix.org](https://matrix.org/)

### Meteor

Meteor is a toolbox that allows me to standardize and deploy content specific apps/sites/templates that connect into my kingdom.  The data witnessed within eCoinCore, Keybase and Matrix are all brought together and made available in my standard koad:io environment.

> Meteor is an open source framework for seamlessly building and deploying Web, Mobile, and Desktop applications in Javascript.
[meteor.com](https://www.meteor.com/)


## Third Party components

Top 3 
1. Keybase
2. none.
3. none.

### Keybase

Keybase, although does not pass my strict open source edict, it's client side software does.  I realize Keybase is a third party, but for some of my peers who find it impossible to install anything more than entry level software, Keybase is my go-to and last resort.

Keybase's advanced features depend on the internet itself, and there is no self-hosted choice for their server-side functionality.  There is a 1,000,000 CDN bounty for the development of a keybase server-side replacement, it will kick in when CDN is > 10$ CAD unless someone claims it beforehand.

> We use public key cryptography to ensure your messages stay private. Even we can’t read your chats.
[keybase.io](https://keybase.io/)


### Others

Use third party services to the extent that you can trust them.  This is obviously at your digression.


## Summary

Listed here are a few of the most fundamental tools used in my daily life.  This is not a complete list of everything, but it is a list of components that exist within the majority of the work within my meta-verse kingdom.

In an ideal world, maybe in my lifetime, we would see the keybase server functions wrapped into a nice self-hostable package as well as the sandstorm services become a compatible matrix integrations server.

_I am excited to see where these things go._

/koad