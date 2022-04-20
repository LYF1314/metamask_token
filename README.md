# metamask_token

A Flutter project to get metamask account and twitter account.

## About docs

## WalletConnect
- <https://docs.walletconnect.com/>

Wallet Support
In order to add support for mobile linking within your wallet, you will just need to register the following deep link or universal link subscriptions in your mobile app.

### For Android
Android has the easiest integration as its operating system is designed to handle multiple applications subscribing to the same deep linking schema. Hence you will only need to register to the wc: schema that is defined per the WalletConnect URI standard.

```
wc:00e46b69-d0cc-4b3e-b6a2-cee442f97188@1?bridge=https%3A%2F%2Fbridge.walletconnect.org&key=91303dedf64285cbbaf9120f6e9d160a5c8aa3deb67017a3874cd272323f48ae
```

### For iOS
iOS has some more caveats to the integration but we ensure to make it as straightforward as possible. Since its operating system is not designed to handle multiple applications subscribing to the same deep linking schema, we've designed the QRCode Modal to list supporting wallets on our registry and target specific deep links or universal links for each wallet.

To add your own wallet to the registry, login to your WalletConnect Cloud account.

We recommend that universal links are used instead of deep links for iOS since they provide smoother UX with less prompts. When a dapp triggers a mobile connection on iOS, you should expect the following links

```
examplewallet://wc?uri=wc:00e46b69-d0cc-4b3e-b6a2-cee442f97188@1?bridge=https%3A%2F%2Fbridge.walletconnect.org&key=91303dedf64285cbbaf9120f6e9d160a5c8aa3deb67017a3874cd272323f48ae
```

<br/>

### examplewallet deeplink

|  wallet name   | wallet scheme | deeplink |
|  ----  | ----  | ----  |
| MetaMask  | metamask |metamask://wc?uri= |
| Rainbow  | rainbow | rainbow://wc?uri=|
| Trust  | trust |trust://wc?uri=|
