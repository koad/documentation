# eCoinCore

## basic concept

eCoinCore is a handful of chosen tools that combine to create a unique outcome for the executioner.

``` mermaid
erDiagram

  DAEMONS ||--o{ BLOCKCHAIN : access
  ELECTRUM ||--o{ BLOCKCHAIN : access

  DAEMONS ||--o{ CACHEBOX : manages
  CACHEBOX ||--o{ ELECTRUM : manages
  CACHEBOX ||--o{ EXCHANGE-RATES : collects
  CACHEBOX ||--o{ EXCHANGE-RATES : archives
  CACHEBOX ||--o{ QUERIES : collects
  CACHEBOX ||--o{ QUERIES : archives

  MOBILE ||--|{ CACHEBOX : uses
  MOBILE ||--|{ DESKTOP : signs
  MOBILE ||--|{ WEBAPP : signs

  DESKTOP ||--|{ CACHEBOX : uses
  WEBAPP ||--|{ CACHEBOX : uses

  LOCKBOX ||--|{ MOBILE : SIGNS
  PAPER ||--|{ MOBILE : SWEEPS


```

## basic components

eCoinCore consists of many applications, at the core there are 5 that work together to create the experience and seed an all encompassing workflow for future use-case development.

### CacheBox  

  - collects queries and exchange rate data for past events  
  - collects an inventory of exchange rates from various enabled sources  
  - periodically tests and evaluates each known SPV server   

  - Makes available an API and websocket for serving   
    - SPV service details  
    - blockchain data  
    - exchange rates  
    - blockchain configuration details  

### Public UI  
  - Makes available, and searchable, the blockchain and other stored data to human users via 
    - webapp (Public UI)  
    - desktop (Private UI)  
    - mobile companion  

### Private UI (Desktop)
  - serves a private facing dashboard  
    - installing and tracking one's own coin daemons  
    - installing and tracking one's own SPV services   
    * within multiple devices and multiple locations  
  - provides a developers workbench
    - preloaded with useful cheatsheets for creating SPV enabled Bitcoin-type blockchain based javascript d/apps.

### Mobile Companion  
  - user interface  
  - key ring  
  - contacts  
  - contracts  
  - event  

### Lockbox
  - printable key generation
  - completely offline / air-gapped
  - paper portfolio generator
    - signed contracts
    - determinisms
    - hd wallet backup to paper
  - PSBT signing from non-authorized apps 
    - webapp
    - desktop

---

``` mermaid
graph LR
  A[Start] --> B{Error?};
  B -->|Yes| C[Hmm...];
  C --> D[Debug];
  D --> B;
  B ---->|No| E[Yay!];
```

still working on this.. :P

---

``` mermaid
erDiagram

  BLOCKCHAIN ||--o{ CACHEBOX : places

  USER ||--|{ MOBILE : uses
  USER ||--|{ DESKTOP : uses
  USER ||--|{ WEBAPP : uses
  USER ||--|{ LOCKBOX : uses

  PUBLIC ||--|{ BLOCKCHAIN : contains

  MOBILE ||--|{ CACHEBOX : uses

  MOBILE ||--|{ KEYS : contains

  LOCKBOX ||--|{ KEYS : contains
  LOCKBOX ||--|{ DETERMINISMS : contains
  LOCKBOX ||--|{ CONFIGURATIONS : contains

  CACHEBOX ||--|{ BLOCKDATA : contains
  CACHEBOX ||--|{ PREVIOUS-QUERIES : contains

  PREVIOUS-QUERIES ||--|{ BLOCKS : contains
  PREVIOUS-QUERIES ||--|{ TRANSACTIONS : contains
  PREVIOUS-QUERIES ||--|{ CONFIGURATIONS : contains

  CACHEBOX ||--|{ EXCHANGE-RATES : contains

  CACHEBOX ||--|{ DETERMINISMS : contains
  CACHEBOX ||--|{ CONFIGURATIONS : contains
    
  EXCHANGE-RATES ||--|{ CURRENT : contains
  EXCHANGE-RATES ||--|{ PREVIOUS  : contains

  CACHEBOX ||--o{ ELECTRUMS : monitors
  ELECTRUMS ||--|{ INVENTORY : contains
  ELECTRUMS ||--|{ CONFIDENCE : calculates
  ELECTRUMS ||--|{ RELIABILITY : calculates

```
