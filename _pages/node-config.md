---
title: Node Configuration
---

For non-experts, we recommend using a paid as they will be easiest to setup/maintain.
Some examples:
* [MyNode](https://mynodebtc.com/)
* [Nodl](https://www.nodl.it/)
* [RaspiBlitz](https://shop.fulmo.org/raspiblitz/)

We do **not** recommend running your node in [pruning mode](https://bitcoin.org/en/full-node#reduce-storage) if possible as this disables `-rescan` functionality.
In some edge cases, nodes run in pruning mode will have to rescan the whole blockchain, and this can take many hours to many days (TODO: add link).

{% include advanced_config.md %}
