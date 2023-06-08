## Async Javascript

async is the new callback.



### Self Calling Function

A self calling asynchronous function in Javascript

I use this when I need to run a single bit of code and I need it to be asynchronous.  So for example this could be all by itself in `index.js` and I can run it using `node index.js`
```js
function someAsyncFunction() {
	return 'results from someAsyncFunction()';
}

(async ()=>{
	console.log('I am asynchronous!');
	let result = await someAsyncFunction();
	console.log({result});
	console.log('done!');
})();
```


### Error Handling



## Reference
[Async + Await Error Handling Strategies](https://www.youtube.com/watch?v=wsoQ-fgaoyQ)

