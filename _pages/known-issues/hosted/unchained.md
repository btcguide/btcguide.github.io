---
title: Unchained Capital
---


{% include hosted/utxo_privacy.md %}

{% include hosted/spof.md %}

#### Limited Hardware Wallet Support
No Coldcard nor Cobo Vault support, although Unchained has [publicly committed](https://unchained-capital.com/blog/gearing-up-the-caravan/) to adding Coldcard in the future.
This means that (for now) **properly verifying a receive address is only possible for expert users**.

{% include hosted/2of3.md %}
It would be great if Unchained would offer `3-of-5` signature schemes in the future.

#### Sovereign Recovery is Complicated
While you can leave their service (or recover your coins if they go out of business), [the process](https://unchained-capital.com/blog/external-spend-workflow/) is inherently complicated.
Unchained has gone to great legnths to streamline it by releasing an open-source product called [Caravan](https://unchained-capital.github.io/caravan/) that abstracts this away from end-users.

#### Non-Standard BIP32 Paths
Good software should (mostly) abstract this away, but it has the potential to cause issues.
TODO: add link.

---
## Not Terrible
{% include hosted/benefits.md %}
