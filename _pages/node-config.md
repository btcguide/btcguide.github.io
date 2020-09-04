---
title: Configure Bitcoin Node
---

Keep in mind that while a malicious full node can wreak havoc, it does not have access to your private keys.
The main function of this service is to confirm that bitcoin's consensus rules are being followed.

For non-experts, we recommend using a paid product as they will be easiest to setup/maintain.
Some examples:
* [MyNode](https://mynodebtc.com/)
* [Nodl](https://www.nodl.it/)
* [RaspiBlitz](https://shop.fulmo.org/raspiblitz/)
* [Umbrel](https://getumbrel.com/)
* TODO: find 1-click cloud deploy node?

#### Required Configuration
In order for [Specter-Desktop](/install-specter) to connect to this full node, you'll need to set `server=1` in your `bitcoin.conf` file.

You'll also need a way to authenticate a connection to your node.
If your node is run on the same computer as Specter, Spectre will likely be able to automatically detect authentication info from a `.cookie` file that bitcoin core created on your computer.
If this node is run on a a different computer, you'll need to know the `rpcuser` and `rpcpassword` that your bitcoin core node is using.
We recommend setting `rpcuser` to `specter` (if you have control) for simplicity.

#### Optional Configuration
If you can tweak your settings, we recommend the following (not required):
* Do **not** run your node in [pruning mode](https://bitcoin.org/en/full-node#reduce-storage) as this disables `rescan` functionality.
In some edge cases you may need to rescan your node, and a pruned node will instead have to (automatically) `reindex` the whole blockchain (can take many hours to many days).
* Set [`blockfilterindex=1`](https://bitcoin.org/en/release/v0.19.0.1).
It takes just a few GB of storage and helps speedup blockchain `rescan`ing.


{% include next_steps.md next_url="/install-specter" next_name="Install Specter-Desktop" %}
