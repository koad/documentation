
Progressive Web Apps have the advantage of being installable and live on a device without the need for an app store. And, part of the process is the Web App Manifest which allows developers to control how an app appears and how it's launched. Also, web designers/front end developers will already have the skillset needed to start building immediately. There's no need to learn a new language, unlike native apps. 

## Considerations
- WebAPK - Google Play server will create an APK (Android Package, a native app container) on the fly and install it in the device as if it's coming from the Play Store
- custom web app installation banner
- sharable content buttons
- analytics tracking
- ios compatibility
- data in the background
- pseudo-browsers suck -> https://www.npmjs.com/package/is-webview
- publishing to stores
- trusted web acivities wrapper APK > https://developers.google.com/web/updates/2017/10/using-twa

## examples

using [github://onderceylan/pwa-asset-generator](https://github.com/onderceylan/pwa-asset-generator)
### generate app icons
```sh
pwa-asset-generator icon.png ./assets --padding "6px" --icon-only --favicon --background "#FFF" --maskable false --type png
```

### generate ios splash screen
```sh
pwa-asset-generator banner-transparent.png ./assets --splash-only --xhtml --single-quotes
```



### custom web app installation banner

capture the event object into a variable
```js
var installPromptEvent;
window.addEventListener('beforeinstallprompt', function(event) {
      event.preventDefault();
      installPromptEvent = event;
});
```

then can use that captured event when needed
```js
function callInstallPrompt() {
          // We can't fire the dialog before preventing default browser dialog
    if (installPromptEvent !== undefined) {
          installPromptEvent.prompt();
    }
}
```

when in full-screen mode, there is no URL bar or share action from the browser for the user to share content with social networks. We can take advantage of the Web Share API and have a fallback to open native social apps.
```js
function share() {
    var text = 'Add text to share with the URL';
    if ('share' in navigator) {
        navigator.share({
            title: document.title,
            text: text,
            url: location.href,
        })
    } else {
        // Here we use the WhatsApp API as fallback; remember to encode your text for URI
        location.href = 'https://api.whatsapp.com/send?text=' + encodeURIComponent(text + ' - ') + location.href
    }
}
```


### analytics tracking
```js
window.addEventListener('appinstalled', function(event) {
     // Track event: The app was installed (banner or manual installation)
});

window.addEventListener('beforeinstallprompt', function(event) {
     // Track event: The web app banner has appeared
     event.userChoice.then(function(result) {
           if (result.outcome === 'accepted') {
                // Track event: The web app banner was accepted
           } else {
                // Track event: The web app banner was dismissed
           }
     });
});
```

add a start url to the manifest to track when the user opens the app from the home screen or is opened by the PWA scope
```js
{
	start_url: '/?utm_source=standalone&utm_medium=pwa'
}
```

find out if the app is opened within the browser
```js
var isPWAinBrowser = true;
// replace standalone with fullscreen or minimal-ui according to your manifest
if (matchMedia('(display-mode: standalone)').matches) {
     // Android and iOS 11.3+
     isPWAinBrowser = false;
} else if ('standalone' in navigator) {
     // useful for iOS < 11.3
     isPWAinBrowser = !navigator.standalone;
}
```


manage push notification clicks
```js
self.addEventListener('push', function(e) {
    // Track event: Push Message Received
});
self.addEventListener('notificationclick', function(e) {
    // Track event: Push Message Clicked, you can read e.action.id to track actions
});
self.addEventListener('notificationclose', function(e) {
    // Track event: Push Message Dismissed
});
```

### data in the background
```js
navigator.serviceWorker.ready.then(function(reg) { 
   reg.sync.register('myTag')
});
```


```js
self.addEventListener('sync', function(event) {
    if (event.tag === 'myTag') {
        event.waitUntil(doAsyncOperationForMyTag());
    }
});
```

```js

```




## Reference

[9 amazing PWA secrets](https://www.creativebloq.com/features/9-amazing-pwa-secrets) by [ Maximiliano Firtman](https://www.creativebloq.com/author/maximiliano-firtman)  
[Zero to 15 — Building a Nothing PWA in 15 minutes](https://dev.to/henrylim96/zero-to-15--building-a-nothing-pwa-in-15-minutes-258j)  
[Getting Started with Progressive Web Apps](https://developers.google.com/web/updates/2015/12/getting-started-pwa)  
[The offline cookbook](https://jakearchibald.com/2014/offline-cookbook/) by [Jake Archibald](https://jakearchibald.com/)