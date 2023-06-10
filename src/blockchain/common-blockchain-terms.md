# Common blockchain things


## What is a passphrase / recovery seed phrase?

A passphrase is a sequence of words or other text that is used to generate a cryptographic key or password. Passphrases are often used to create more secure and memorable passwords, as they are typically longer and more complex than traditional passwords. Passphrases are also used in some cryptographic systems as a means of authentication, encryption, or digital signing. In the context of cryptocurrency, a passphrase may be used to encrypt a private key or seed phrase, providing an additional layer of security for the associated funds.

## What is a meme coin?

A meme coin is a cryptocurrency that is created based on a popular internet meme or cultural phenomenon. These coins are often created as a joke or satire, and do not have any serious technological or financial backing. Some of the most popular meme coins include Dogecoin, which features the Shiba Inu dog from a popular internet meme, and Garlicoin, which was created as a parody of Bitcoin. While meme coins can be fun and entertaining, they are often highly volatile and not considered a serious investment by many in the cryptocurrency community.


## What is a hash rate?

In the context of blockchain and cryptocurrency, hash rate refers to the computational power being used to mine and validate blocks on a network. It represents the speed at which a miner can solve a mathematical puzzle to add a new block to the blockchain. The higher the hash rate, the faster a miner can find the solution and add a new block to the blockchain, which increases their chances of earning a block reward. Hash rate is usually measured in hashes per second (H/s), kilohashes per second (KH/s), megahashes per second (MH/s), gigahashes per second (GH/s), or terahashes per second (TH/s), depending on the scale of the mining operation.


## What is a marketcap?

Market capitalization, or market cap, is a metric used to measure the total value of a publicly traded company or cryptocurrency. It is calculated by multiplying the total number of outstanding shares or tokens by the current market price per share or token. Market cap provides a rough estimate of the size and value of a company or cryptocurrency and is used by investors to compare different assets and assess their relative worth.


## What is a block reward?

A block reward is the amount of cryptocurrency that is given to the miner or validator of a new block in a blockchain network. Block rewards serve as incentives for miners to validate transactions and maintain the network.

In the case of Bitcoin, for example, the block reward is currently 6.25 BTC, and it is halved every 210,000 blocks or approximately every four years. This is to ensure that the total supply of Bitcoin remains limited to 21 million, as per the protocol. Other cryptocurrencies may have different block reward systems and mechanisms for adjusting them.


## What is a merkle tree?

A Merkle tree, also known as a hash tree, is a data structure used in cryptography and computer science to efficiently verify the integrity of large data sets. It is named after its inventor, Ralph Merkle.

A Merkle tree is constructed by recursively hashing pairs of nodes, until only a single hash value, known as the root hash or Merkle root, remains. Each non-leaf node in the tree represents the hash of its two child nodes, and the Merkle root represents the hash of the entire tree.

Merkle trees are commonly used in blockchain technology, where they are used to represent the transaction history of a particular block, allowing for efficient and secure verification of the block's contents. In this context, each transaction is represented as a leaf node in the Merkle tree, and the root hash is included in the block header. By comparing the root hash in the block header to the computed root hash of the transactions, nodes can quickly verify the integrity of the block's contents without having to verify each individual transaction.


## What is a block height?

In blockchain technology, a block height refers to the number of blocks that have been added to the blockchain since the genesis block, which is the first block of the chain. Each block contains a reference to the previous block in the chain, so by counting the number of blocks between a given block and the genesis block, the block height of that block can be determined.

Block height is an important metric in blockchain networks as it allows nodes to synchronize with the network and ensures that all participants have a consistent view of the blockchain. It is also used to calculate the difficulty level of the mining process and the block reward, both of which can change as the block height increases.



## What is a block confirmation?

In blockchain, block confirmation refers to the process by which a transaction or a block is verified and added to the blockchain. Once a block is added to the blockchain, it is considered "confirmed." The more confirmations a block has, the more secure and permanent the transaction is considered to be.

Each block in a blockchain contains a unique cryptographic hash that is generated from the block's data, including the transactions that are included in the block. When a new block is added to the chain, it includes a reference to the previous block's hash, which creates a chain of blocks that cannot be altered without also changing all subsequent blocks in the chain.

The confirmation process involves a network of nodes or miners working to validate the transactions in a block and add it to the blockchain. The process of validating transactions and adding them to the blockchain can take some time, especially if the network is congested, and the number of confirmations required to consider a transaction or a block as final varies depending on the cryptocurrency.


## What is a transaction hash?

A transaction hash is a unique identifier for a specific transaction on a blockchain network. It is a string of alphanumeric characters that serves as a digital fingerprint for the transaction. The hash is generated using a cryptographic hash function, which takes the transaction data and produces a fixed-length output that uniquely identifies the transaction. This hash is used to track and verify the status of a transaction on the blockchain network. It can be used to look up details of the transaction on a blockchain explorer, including the amount of cryptocurrency transferred, the sender and receiver addresses, and the timestamp of the transaction.


## What is a block hash?

A block hash is a unique identifier for a block in a blockchain. It is a fixed-length string of letters and numbers that is generated using a cryptographic hash function, such as SHA-256, and is used to uniquely identify and verify the contents of a block. The block hash is generated by taking the hash of the block header, which includes the block's version, timestamp, previous block hash, Merkle root hash, nonce, and difficulty level. The block hash must meet certain criteria, such as being below a certain target difficulty level, in order for the block to be considered valid and added to the blockchain. Once a block has been added to the blockchain, its block hash becomes part of the input for the next block's hash, creating a chain of blocks that are linked together by their hashes.


## What is a hash function?

A hash function is a mathematical function that takes in input data of arbitrary size and produces a fixed-size output known as a hash value, hash code, or message digest. Hash functions are designed to be one-way functions, meaning it is easy to compute the hash value from the input data, but extremely difficult (if not impossible) to compute the original input data from the hash value.

Hash functions are widely used in computer science and cryptography for a variety of purposes, such as data integrity checks, digital signatures, password storage, and blockchain technology. In blockchain technology, hash functions are used to create the cryptographic links between blocks in the chain, which ensures that the data in the blocks cannot be tampered with without being detected.


## What is a block reward halving?

A block reward halving is an event that occurs in some cryptocurrency protocols, where the amount of rewards given to miners or validators for successfully adding a new block to the blockchain is reduced by half. This is typically a pre-programmed and predictable event that occurs after a certain number of blocks have been added to the blockchain.

For example, in the Bitcoin protocol, the block reward is halved approximately every four years, or every 210,000 blocks. The initial block reward for Bitcoin was 50 BTC, but it was halved to 25 BTC in 2012, halved again to 12.5 BTC in 2016, and then halved to 6.25 BTC in 2020. This reduction in block rewards is intended to maintain the scarcity of the cryptocurrency and prevent inflation.

