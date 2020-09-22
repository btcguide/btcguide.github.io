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
This may be a bad thing (software hot wallets are inherently less secure) or a good thing (better UX and one less device to buy/configure/update).
It is possible to export your mobile key from the app for sovereign recovery purposes (instructions [here](https://walletsrecovery.org/recovery-docs/casa-recovery)).

#### Sovereign Recovery Is Very Hard
While you can leave their service (or recover your coins if they go out of business), [the process](https://walletsrecovery.org/recovery-docs/casa-recovery) is likely only possible for expert users.

{% include hosted/2of3.md %}
Casa does offer `3-of-5`, which is extra important because:
* Their offering is by default [seedless](https://blog.keys.casa/casa-seedless-security-model/), meaning there are no backups of your seeds!
* They use both hardware and software wallets (see above).

{% include hosted/benefits.md %}
Some noteworthy benefits of using their service:
* Casa offers [Casa Covenant](https://keys.casa/bitcoin-inheritance-plan) for inheritance, though the public details are sparse.
Opting into this would likely be incompatible with using their service anonymously.
* Their [health check](https://support.keys.casa/hc/en-us/articles/360045442511-Health-Checks) feature is useful for promoting best practices.
