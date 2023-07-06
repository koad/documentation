# Meteor SubsManager

https://github.com/kadirahq/subs-manager

## Usage

Installation:

```
meteor add meteorhacks:subs-manager
```

Then create a new SubsManager instance:

```js
PostSubs = new SubsManager();
```

Then instead of subscribing to `Meteor.subscribe()`, use `PostSubs.subscribe()`. Check this example:

```js
Template.blogPost.onCreated(function() {
    var self = this;
    self.ready = new ReactiveVar();
    self.autorun(function() {
        var postId = FlowRouter.getQueryParam('postId');
        var handle = PostSubs.subscribe('singlePost', postId);
        self.ready.set(handle.ready());
    });
});
```

Here's how this works:

* Let's say you visit page `/posts?postId=abc`.
* Then Meteor will subscribe to the `singlePost` publication with `abc` as the postId.
* Then let's imagine you visit to `/posts?postId=bbc`.
* Just like above, it'll subscribe to the `singlePost` publication with `bbc` as the postId.
* Now, let's say we go back to `/posts?postId=abc`. Then, subsManager won't fetch data again from the server. Subscription is already exists inside the client.

Check following links for more information:

* [Related docs in the FlowRouter Guide](https://kadira.io/academy/meteor-routing-guide/content/subscriptions-and-data-management/using-subs-manager)
* [BulletProof Meteor Lesson](https://bulletproofmeteor.com/basics/subscription-caching)

### Resetting

Sometime, we need to re-run our subscriptions due to various reasons.

> Eg:- After a user has update the plan.

In those situations, you can try to reset Subscription Manager.

```js
var subs = new SubsManager();

// later in some other place
subs.reset();
```

### Clear Subscriptions

In some cases, we need to clear the all the subscriptions we cache. So, this is how we can do it.

```js
var subs = new SubsManager();

// later in some other place
subs.clear();
```

## Cache Control

Since now you are caching subscriptions, the Meteor server will also cache all your client data. But don't worry - that's not a huge issue.

But, you can control the caching behavior. Here's how to do it.

```js
var subs = new SubsManager({
    // maximum number of cache subscriptions
    cacheLimit: 10,
    // any subscription will be expire after 5 minute, if it's not subscribed again
    expireIn: 5
});
```

## Patterns for using SubsManager

### Using a global Subscription Manager

You can create a global subscription manager as shown in the above example. By doing that, all your subscriptions are cached as a whole.

### Using separate Subscription Managers

If you need more control over caching, you can create separate Subscription Managers for each set of subscriptions and manage them differently. 

> If you are using SubsManager inside a ReactComponents, this is the suggested way.

### Using global ready checking

You can also check the ready status of all the subscriptions at once like this:

```js
var subs = new SubsManager();
subs.subscribe('postList');
subs.subscribe('singlePost', 'id1');

Tracker.autorun(function() {
  if(subs.ready()) {
    // all the subscriptions are ready to use.
  }
});
```

### Cache subscriptions you only need

With Subscription Manager you don't need to use it everywhere. Simply use it wherever you need without changing other subscriptions.

## Limitations

Subscription Manager aims to be a drop-in replacement for [`Meteor.subscribe`](http://docs.meteor.com/#meteor_subscribe) (or `this.subscribe()` in Iron Router). At the moment, the following functionality doesn't work.

* `onError` and `onReady` callbacks ([issue](https://github.com/meteorhacks/subs-manager/issues/7))