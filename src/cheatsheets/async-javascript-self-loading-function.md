A self calling asynchronous function in Javascript

```js
(async ()=>{
	console.log('I am asynchronous!');
	let result = await someAsyncFunction();
	console.log('done!');
})();
```