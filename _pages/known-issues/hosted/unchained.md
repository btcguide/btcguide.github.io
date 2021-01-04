### Unchained Capital

#### Only Supports Older Hardware Wallets
The lack of PSBT support means that modern hardware wallets with high quality airgaps such as [Cobo Vault](#cobo) and [Specter-DIY](#specter-diy) are not yet supported.
**Properly verifying a receive address is only possible for advanced users** and also requires plugging your hardware wallet into your computer, adding another potential attack vector.

Unchained has complex instructions [here](https://medium.com/coinmonks/address-verification-when-changing-keys-for-unchained-capital-vaults-268005e7563e) on how to validate a receive address.
While they [recently added limited address verification functionality to Trezor](https://unchained-capital.com/blog/trezor-and-unchained-make-multisignature-safer/), this doesn't fundamentally fix [Trezor's many known issues](/known-issues/hardware/trezor).
As Trezor is stateless, these steps will only confirm that `1` of your keys is part of the quorum, you must repeat these steps on [*at least* `m` (and preferably `n`) of your devices](/known-issues/verify-receive-address).

#### Could Reintroduce Single Points of Failure
Proper multisig allows you to have no single points of failure (see section title [Why Multisig](#why-multisig)), but it still requires you take some control of your financial sovereignty.
Users who rely on third-party services may accidentally reintroduce a single points of failure.
For example, if a `2-of-3` service holds 1 of your keys and mails you 1 (malicious) hardware wallet they are in a trusted position as they could control a majority of your keys!

More realistically, were a multisig service provider to be hacked they might be able to exploit the trust users have in them.
We've seen [similar attacks](https://cointelegraph.com/news/electrum-bitcoin-wallet-still-plagued-by-known-crypto-phishing-attack) on the popular Electrum Client for many years.
This might might take the form of an invalid receive address (if using a stateless hardware wallet with limited defenses) or an invalid change address (if using a hardware wallet that can't detect change attacks).


#### Privacy Alert
Any third party service that can participate/coordinate multisig transactions will have access to your balance and transaction history.
They may be forced to share your records with multiple government agencies, and often be legally unable to disclose their compliance with requests.
Of course most bitcoiners buy their coins on exchanges that follow KYC/AML procedures, so this may or may not be a factor for your use-case.


#### Only Option is 2-of-3
 [`3-of-5` would be better](/quorum-advanced), especially when using a hosted service that already:
 
* Abstracts away a lot of multisig's complexity
* Holds `1` (or more) of your seeds

#### Evaluate unchained capital in Totality

This page is about known issues, not positive attributes.
No setup is 100% secure.

Hosted multisig providers make multisig much more accessible/easier for less technically savvy HODLers.
They will likely continue to improve over time and have an incentive to push best practices onto their users.
When performed correctly, the hosting provider is unable to censor/steal funds and can only assist you in recovering your own funds.

Some noteworthy benefits of using Unchained:

* Unchained has gone to great lengths to [streamline their sovereign recovery process](https://unchained-capital.com/blog/external-spend-workflow/) by releasing an 		open-source product called [Caravan](https://unchained-capital.github.io/caravan/) that abstracts all the steps away from end-users.
* Their [key checks](https://twitter.com/unchainedcap/status/1217882977717440515) feature is useful for promoting best practices.
* Current estate-planning offerings are [barely disclosed](https://twitter.com/mflaxman/status/1308834924452106243), but they are in a position to be extremely helpful to your heirs/estate should something happen to you.
