---
title: Unchained Capital
---


{% include hosted/utxo_privacy.md %}

#### Limited Hardware Wallet Support
Unchained doesn't support Coldcard nor Cobo Vault, although they have [plans](https://unchained-capital.com/blog/gearing-up-the-caravan/) to add Coldcard in the future.
This means that **properly verifying a receive address is only possible for expert users** (for now).

{% include hosted/2of3.md %}
It would be great if Unchained would offer `3-of-5` signature schemes in the future.

{% include hosted/spof.md %}

#### Sovereign Recovery is Complicated
While you can leave their service (or recover your coins if they go out of business), [the process](https://unchained-capital.com/blog/external-spend-workflow/) is inherently complicated.
Unchained has gone to great legnths to streamline it by releasing an open-source product called [Caravan](https://unchained-capital.github.io/caravan/) that abstracts this away from end-users.
Unchained's use of non-standard BIP32 paths has the potential to cause issues, though good software should (mostly) abstract this away.
TODO: add link.

---
## Not Terrible
{% include hosted/benefits.md %}
