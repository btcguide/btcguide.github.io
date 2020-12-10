### Could Reintroduce Single Points of Failure
Proper multisig allows you to have no single points of failure (see section title [Why Multisig](#why-multisig)), but it still requires you take some control of your financial sovereignty.
Users who rely on third-party services may accidentally reintroduce a single points of failure.
For example, if a `2-of-3` service holds 1 of your keys and mails you 1 (malicious) hardware wallet they are in a trusted position as they could control a majority of your keys!

More realistically, were a multisig service provider to be hacked they might be able to exploit the trust users have in them.
We've seen [similar attacks](https://cointelegraph.com/news/electrum-bitcoin-wallet-still-plagued-by-known-crypto-phishing-attack) on the popular Electrum Client for many years.
This might might take the form of an invalid receive address (if using a stateless hardware wallet with limited defenses) or an invalid change address (if using a hardware wallet that can't detect change attacks).
