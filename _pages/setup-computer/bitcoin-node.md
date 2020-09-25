---
title: Configure Bitcoin Node
---

Think of your bitcoin node as a fake bitcoin detector, it will confirm that bitcoin's consensus rules are being followed so that when you receive a payment you can validate that you are getting real bitcoins. It will also help with fee estimation, coin selection, and generating transactions.

Keep in mind that while a malicious full node can try to deceive you, it does not have access to your private keys.

Recommended options for setting up your Bitcoin Node are [RaspiBlitz](https://shop.fulmo.org/raspiblitz/), [Nodl](https://www.nodl.it/), and myNode Premium edition[MyNode](https://mynodebtc.com/). They all have Specter packaged. Note RaspiBlitz is free, Nodl and myNode Premium are paid products. 

Alternatively you can install Specter on your desktop or laptop PC alongside Bitcoin Core. 

[TODO]: find 1-click cloud deploy node?

#### Required Configuration
In order for [Specter-Desktop](/install-specter) to connect to this full node, you'll need to set `server=1` in your `bitcoin.conf` file.

You'll also need a way to authenticate a connection to your node.
If your node is run on the same computer as Specter, Specter will likely be able to automatically detect authentication info from a `.cookie` file that bitcoin core created on your computer.
If this node is run on a different computer (a "remote" machine), you'll need to know the `rpcuser` and `rpcpassword` that your bitcoin core node is using.
We recommend setting `rpcuser` to `specter` (if you can) for simplicity.

#### HWI Bridge
Note that for physically connecting hardware wallets using your laptop/desktop with Specter packaged on another device e.g. myNode, RaspiBlitz or nodl, you may need to set up [HWI Bridge](https://github.com/cryptoadvance/specter-desktop/blob/master/docs/hwibridge.md). 

#### Optional Configuration
If you can tweak your settings, we recommend the following (optional):
* Do **not** run your node in [pruning mode](https://bitcoin.org/en/full-node#reduce-storage) as this disables `rescan` functionality.
In some edge cases you may need to rescan your node, and a pruned node will instead have to (automatically) `reindex` the whole blockchain (can take many hours to many days).
* Set [`blockfilterindex=1`](https://bitcoin.org/en/release/v0.19.0.1).
It takes just a few GB of storage and helps speedup blockchain `rescan`ing.


{% include next_steps.md next_url="/setup-computer/specter" next_name="Install Specter-Desktop" %}
