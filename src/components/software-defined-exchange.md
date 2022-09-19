## AtomicDEX

AtomicDex is used to seamlessly convert one native token to any another using atomic swaps.

__this makes it easy to interact with any discovered blockchain on-the-fly without the need for stockpiles of all discovered native tokens.__ :thinking:


### MM2

MM2 is the heart of the AtomicDEX.  This is the core logic used to perform trades and maintain the order-books.


#### Install
```bash
mkdir -p ~/.atomicdex/mm2
cd ~/.atomicdex/mm2

wget https://raw.githubusercontent.com/KomodoPlatform/coins/master/coins
wget https://github.com/KomodoPlatform/atomicDEX-API/releases/download/beta-2.1.4315/mm2-9fe6e9402-Linux-Release.zip

unzip mm2-9fe6e9402-Linux-Release.zip
# rm mm2-9fe6e9402-Linux-Release.zip
```

#### Run
set the environment
```bash
export MM2_SEED_PHRASE="this is where your twenty four word passphrase would go and you had better write the muthafuka down and put it somewhere safe"
export MM2_RPC_PASSWORD="makeupsomerandomshithere"
```

```bash
screen -S atomicdex-daemon
cd ~/.atomicdex/mm2
./mm2 "{\"gui\":\"MM2GUI\",\"netid\":7777, \"userhome\":\"/${HOME#"/"}\", \"i_am_seed\":true, \"passphrase\":\"$MM2_SEED_PHRASE\", \"rpc_password\":\"$MM2_RPC_PASSWORD\"}"
```


#### scripts
[gcharang](https://github.com/gcharang) has created a handful of useful scripts that might be handy for those who want to dig deeper > [github://gcharang/mm2scripts](https://github.com/gcharang/mm2scripts)
```bash
cd ~/.atomicdex/
git clone https://github.com/gcharang/mm2scripts scripts
```


##### notes
- running as seed: AtomicDEX also gives us the ability to look at all trades, and from this we can assume value data for any enabled blockchain.
``i_am_seed: true``
