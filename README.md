# DashKit.Swift

### Initialization

```swift
import HdWalletKit
import DashKit
        
let seed = Mnemonic.seed(mnemonic: [""], passphrase: "")!

let dashKit = try DashKit.Kit(
    seed: seed,
    walletId: "unique_wallet_id",
    syncMode: BitcoinCore.SyncMode.full,
    networkType: DashKit.Kit.NetworkType.mainNet,
    confirmationsThreshold: 3,
    logger: nil
)
```

### DashTransactionInfo

Dash has some transactions marked `instant`. So, instead of `TransactionInfo` object *DashKit.Kit* works with `DashTransactionInfo`, that has that field and a respective `DashKitDelegate` delegate class.


## Prerequisites

* Xcode 10.0+
* Swift 5+
* iOS 13+

## Installation

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/curdicu/DashKit.git", .upToNextMajor(from: "1.0.0"))
]
```

