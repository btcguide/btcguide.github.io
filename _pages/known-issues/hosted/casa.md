---
title: Casa
---

{% include hosted/utxo_privacy.md %}
Casa is unique in that they do not perform traditional KYC, and it is even possible to signup without sharing your name.
Customers can pay anonymous with bitcoin or prepaid cards.
[Their privacy policy](https://blog.keys.casa/casa-privacy-and-data-protection-policy/) is intentionally very customer-friendly.

{% include hosted/spof.md %}

#### No Cobo Vault Support
This means that **properly verifying a receive address is only possible for advanced users** (instructions [here](https://blog.keys.casa/watch-only-wallet-guide/)).
This will hopefully change soon.

#### 1 Key Kept on Phone Hot Wallet
Software hot wallets are inherently less secure but they have a better UX and offer one less device to buy/configure/update.
You can export your mobile key from the app for sovereign recovery purposes (instructions [here](https://walletsrecovery.org/recovery-docs/casa-recovery)).

#### Seedless
Casa is [Seedless](https://blog.keys.casa/casa-seedless-security-model/), meaning that by default there are no seed backups from your hardware wallets (the mobile and casa keys are backed up automatically).
This has some UX benefits that may improve security, but can also increases the risk of loss.
*It is recommended to use this only with a `3-of-5` setup.*

#### Sovereign Recovery Is Very Hard
While you can leave their service (or recover your coins if they go out of business), [the process](https://walletsrecovery.org/recovery-docs/casa-recovery) is likely only possible for expert users.

{% include hosted/benefits.md %}
Some noteworthy benefits of using Casa:
* Casa offers [Casa Covenant](https://keys.casa/bitcoin-inheritance-plan) for inheritance, though the public details are sparse.
Opting into this would likely be incompatible with using their service anonymously.
* Their [health check](https://support.keys.casa/hc/en-us/articles/360045442511-Health-Checks) feature is useful for promoting best practices.
* They support `3-of-5` which [is an excellent setup](/quorum-advanced).
This is an especially good fit when using a hosted service that abstracts away a lot of multisig's complexity.
Casa users should *strongly* consider this option as Casa is seedless and uses 1 software wallet (see above).
