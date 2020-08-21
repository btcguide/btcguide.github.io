---
title: Node Configuration
---

For non-experts, we recommend using a paid product as they will be easiest to setup/maintain.
Some examples:
* [MyNode](https://mynodebtc.com/)
* [Nodl](https://www.nodl.it/)
* [RaspiBlitz](https://shop.fulmo.org/raspiblitz/)

We do **not** recommend running your node in [pruning mode](https://bitcoin.org/en/full-node#reduce-storage) if possible as this disables `-rescan` functionality.
In some edge cases, nodes run in pruning mode will have to rescan the whole blockchain, and this can take many hours to many days (TODO: add link).

Keep in mind that while a malicious full node can wreak havoc, it does not have access to your private keys.
The main function of this service is to confirm that bitcoin's consensus rules are being followed.

{% include advanced_config.md %}
