## Casa

### Only Supports Older Hardware Wallets
The lack of PSBT support means that modern hardware wallets with high quality airgaps such as [Cobo Vault](#cobo) and [Specter-DIY](#specter-diy) are not yet supported.
**Properly verifying a receive address is only possible for advanced users** and also requires plugging your hardware wallet into your computer, adding another potential attack vector.

Casa has complex instructions [here](https://blog.keys.casa/watch-only-wallet-guide/) and [here](https://support.keys.casa/hc/en-us/articles/360045032452-Creating-Watch-Only-Wallets) on how to validate a receive address.

### Coldcard Implementation Doesn't Verify Cosigner Wallets
[Casa recommends you trust PSBTs of your cosigner wallets](https://support.keys.casa/hc/en-us/articles/360044798911-Coldcard-Setup) (meaning don't verify them).
In the event Casa were compromised, this leaves you at risk of loss when transacting.

### 1 Key Kept on Phone Hot Wallet
Software hot wallets are inherently less secure but they have a better UX and offer one less device to buy/configure/update.
You can export your mobile key from the app for sovereign recovery purposes (instructions [here](https://walletsrecovery.org/recovery-docs/casa-recovery)).

### Outdated Firmware
Casa [recommends users don't update their firmware](https://support.keys.casa/hc/en-us/articles/360045411571-Hardware-Wallet-Firmware-Upgrades).
This is likely to prevent hardware wallet vendors from being able to make breaking changes like [this one](https://github.com/trezor/trezor-firmware/issues/1044).
This will hopefully be resolved naturally in the future as hardware wallet vendors have strong incentives not to jeopardize access to user funds.

### Sovereign Recovery Is Very Hard
While you can leave their service (or recover your coins if they go out of business), [the process](https://walletsrecovery.org/recovery-docs/casa-recovery) is likely only possible for advanced users.

### Could Reintroduce Single Points of Failure
Proper multisig allows you to have no single points of failure (see section title [Why Multisig](#why-multisig)), but it still requires you take some control of your financial sovereignty.
Users who rely on third-party services may accidentally reintroduce a single points of failure.
For example, if a `2-of-3` service holds 1 of your keys and mails you 1 (malicious) hardware wallet they are in a trusted position as they could control a majority of your keys!

More realistically, were a multisig service provider to be hacked they might be able to exploit the trust users have in them.
We've seen [similar attacks](https://cointelegraph.com/news/electrum-bitcoin-wallet-still-plagued-by-known-crypto-phishing-attack) on the popular Electrum Client for many years.
This might might take the form of an invalid receive address (if using a stateless hardware wallet with limited defenses) or an invalid change address (if using a hardware wallet that can't detect change attacks).


### Privacy Alert
Any third party service that can participate/coordinate multisig transactions will have access to your balance and transaction history.
They may be forced to share your records with multiple government agencies, and often be legally unable to disclose their compliance with requests.
Of course most bitcoiners buy their coins on exchanges that follow KYC/AML procedures, so this may or may not be a factor for your use-case.

Casa is unique in that they do not perform traditional KYC, and it is even possible to signup without sharing your name.
Customers can pay anonymous with bitcoin or prepaid cards.
[Their privacy policy](https://blog.keys.casa/casa-privacy-and-data-protection-policy/) is intentionally very customer-friendly.

### Seedless
Casa is [Seedless](https://blog.keys.casa/casa-seedless-security-model/), meaning that by default there are no seed backups from your hardware wallets (the mobile and Casa keys are backed up automatically).
This has some UX benefits that may improve security, but can also increases the risk of loss.

### Evaluate casa in Totality

This page is about known issues, not positive attributes.
No setup is 100% secure.

Hosted multisig providers make multisig much more accessible/easier for less technically savvy HODLers.
They will likely continue to improve over time and have an incentive to push best practices onto their users.
When performed correctly, the hosting provider is unable to censor/steal funds and can only assist you in recovering your own funds.

Some noteworthy benefits of using Casa:

* Casa offers [Casa Covenant](https://keys.casa/bitcoin-inheritance-plan) for inheritance, though the public details are sparse.
	Opting into this would likely be incompatible with using their service anonymously.
* Their [health check](https://support.keys.casa/hc/en-us/articles/360045442511-Health-Checks) feature is useful for promoting best practices.
* They support `3-of-5` which [is an excellent setup](/quorum-advanced), and make it easy by providing `2` of the keys.
	This is an especially good fit when using a hosted service that abstracts away a lot of multisig's complexity.
	Casa users should *strongly* consider this option as Casa is seedless and uses 1 software wallet (see above).
