#### Could Reintroduce Single Points of Failure
While proper multisig allows you to have no single points of failure (see section title [Why Multisig](/why-multisig)), it still requires that you take some control of your financial sovereignty.
Users who rely on third-party services may accidentally reintroduce a single points of failure.
For example, a `2-of-3` service that send you a hardware wallet and holds one of your keys is in a trusted position;
if they were to mail you a malicious device they would now control 2 of your `2-of-3` keys!

More realistically, were a multisig service provider to be hacked it might be able to exploit the trust users have for it.
We've seen [similar attacks](https://cointelegraph.com/news/electrum-bitcoin-wallet-still-plagued-by-known-crypto-phishing-attack) on the popular Electrum Client for many years.
This might might take the form of an invalid recieve address (if using a stateless hardware wallet with limited defenses) or an invalid change address (if using a hardware wallet that can't detect it).
