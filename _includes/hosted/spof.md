#### Could Reintroduce Single Points of Failure
While proper multisig allows you to have no single points of failure (see section title [Why Multisig](/why-multisig)), it requires that you take control of your financial sovereignty.
Users who rely on third-party services may unwittingly introduce single points of failure.
For example, a `2-of-3` service that mails you a hardware wallet directly and holds one of your keys is in a trusted position;
if they were to mail you a malicious device they would now control 2 of your `2-of-3` keys!

More realistically, were a multisig service provider to be hacked, it might be able to take advantage of the trust users have for it and trick them into co-signing away their funds.
We've seen [similar attacks](https://cointelegraph.com/news/electrum-bitcoin-wallet-still-plagued-by-known-crypto-phishing-attack) on the popular Electrum Client for many years.
