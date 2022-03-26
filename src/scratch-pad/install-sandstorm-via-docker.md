
# sandstorm.koad.sh

```bash
screen -S sandstorm-koad-dot-sh
export DNAME=sandstorm.koad.sh
export SSDV=/home/koad/.astro/storms/$DNAME
export BASE_URL=https://$DNAME
export SSUSER=koad
```

## first-run: install from scratch

this will run interactively,. you will need to answer some questions about the install.
this will delete the container once done, but then the folder structure will be good enuf to run the real thing 
```bash
docker run -it --rm --name $DNAME-build \
--privileged --network host -v $SSDV:/opt/sandstorm buildpack-deps bash -c \
'useradd --system --user-group sandstorm ; curl https://install.sandstorm.io/ > install.sh && REPORT=no BASE_URL=$BASE_URL OVERRIDE_SANDSTORM_DEFAULT_SERVER_USER=$SSUSER bash install.sh'
```

the previous step would have spit out a key,. copy that into your clipboard
```bash
https://sandstorm.koad.sh/setup/token/SOMERANDOMSTRINGOFCHARACTORS
```

## then: run the installation
```bash
docker run -d --restart unless-stopped --sig-proxy=true --name $DNAME \
--privileged --network host -v $SSDV:/opt/sandstorm buildpack-deps bash -c \
'useradd --system --user-group sandstorm && /opt/sandstorm/sandstorm start && tail -f /opt/sandstorm/var/log/sandstorm.log & sleep infinity'
```


## other shit

```bash
docker stop sandstorm.koad.sh
docker start sandstorm.koad.sh
docker restart sandstorm.koad.sh
```

## Links
[Packaging tutorial (Generic)](https://docs.sandstorm.io/en/latest/vagrant-spk/packaging-tutorial/)


---
[Roundcube; and avoiding walled gardens](https://sandstorm.io/news/2014-08-11-roundcube)  
| With Sandstorm, we’re solving a lot of these problems:  
> - All your apps run under the same roof, whether they are from the same developer or competing developers. You can use a diverse set of apps without having to remember a separate password for each one.  
> - In place of OAuth, we’re building the Powerbox. This UI integrates better into the app’s UX by simultaneously acting as a picker and permissions granter. Apps usually need to present a picker anyway, so this is less disruptive. For example, if an app wants you to choose some contacts to which to send invitations, instead of first asking for permission to all your contacts just to display a picker UI back to you, the app will ask Sandstorm to display a Powerbox picker for contacts. Only the contacts you choose will be passed to the app. So, the UX is exactly the same, except without the separate permissions check, and yet it is more secure. The same idea would apply to choosing photos, or choosing anything else.  
> - When using the Powerbox UI, the requesting app does not name an exact receiving app it wants to access, but instead specifies a protocol. So instead of saying “I need access to Mailpile,” the app would say “I need access to an e-mail app,” and you could potentially choose Mailpile, Roundcube, or any other e-mail app. Apps do have to implement compatible protocols, which can be difficult, but this approach at least leaves open the possibility of a newcomer app emulating the protocols already used by other apps in the space, thereby breaking down the network effect that would otherwise prevent a new app from gaining a foothold.  
