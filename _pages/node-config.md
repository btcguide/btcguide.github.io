---
title: Node Configuration
---

Keep in mind that while a malicious full node can wreak havoc, it does not have access to your private keys.
The main function of this service is to confirm that bitcoin's consensus rules are being followed.

For non-experts, we recommend using a paid product as they will be easiest to setup/maintain.
Some examples:
* [MyNode](https://mynodebtc.com/)
* [Nodl](https://www.nodl.it/)
* [RaspiBlitz](https://shop.fulmo.org/raspiblitz/)
* [Umbrel](https://getumbrel.com/)

#### Optional Configuration
If you can tweak your settings, we recommend the following (not required):
* Do **not** run your node in [pruning mode](https://bitcoin.org/en/full-node#reduce-storage) as this disables `rescan` functionality.
In some edge cases you may need to rescan your node, and a pruned node will instead have to (automatically) `reindex` the whole blockchain (can take many hours to many days).
* Set [`blockfilterindex=1`](https://bitcoin.org/en/release/v0.19.0.1).
It takes just a few GB of storage and helps speedup blockchain `rescan`ing.

{% include advanced_config.md %}
