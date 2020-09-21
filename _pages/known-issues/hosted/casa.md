---
title: Casa
---

{% include hosted/utxo_privacy.md %}
Casa is neat in that they will allow you to signup without showing any government documents, and in extreme cases potentially even your name.

{% include hosted/spof.md %}

#### No Cobo Vault Support
This will hopefully change.
This also means that (for now) **properly verifying a receive address is only possible for advanced users**.

#### Some Keys Kept on Phone Hot Wallet
Given the nature of multisig (and the size of your quorum) this may be a bad thing (software hot wallets are inherently far less secure) or a good thing (better UX and one less device to buy/configure/update).

#### Sovereign Recovery Is Very Hard
While you can leave their service (or recover your coins if they go out of business), [the process](https://walletsrecovery.org/recovery-docs/casa-recovery.html) is likely only possible for expert users.

{% include hosted/2of3.md %}
Casa does offer `3-of-5`, which is extra important if using their service because:
* Their offering is by default [seedless](https://blog.keys.casa/casa-seedless-security-model/), meaning there is no backups of your seeds.
* They use both hardware and software wallets (1 of your keys is generated on your phone).

{% include hosted/benefits.md %}

Casa Does offer [Casa Covenant](https://keys.casa/bitcoin-inheritance-plan), but the details are sparse.
Opting into this would also likely break any chance at using their service anonymously.

