---
title: Configure Bitcoin Node
---

Think of your bitcoin node as a fake bitcoin detector, it will confirm that bitcoin's consensus rules are being followed so that when you receive a payment you can validate that you are getting real bitcoins. It will also help with fee estimation, coin selection, and generating transactions.

Keep in mind that while a malicious full node can try to deceive you, it does not have access to your private keys.

You can install Specter Desktop on your laptop or desktop PC alongside Bitcoin Core. 

Other users may prefer using a package for setting up their Bitcoin Node, such as [RaspiBlitz](https://shop.fulmo.org/raspiblitz/), [Nodl](https://www.nodl.it/), and [MyNode](https://mynodebtc.com/) (Premium edition). They all have Specter packaged. Note RaspiBlitz is free, Nodl and myNode Premium are paid products. 

[TODO]: find 1-click cloud deploy node?

#### Required Configuration
In order for [Specter-Desktop](/install-specter) to connect to this full node, you'll need to configure some settings in your `bitcoin.conf` file. You can do this by going to the directory where Bitcoin is installed, and opening the bitcoin.conf file in a text editor (e.g. Notepad). Insert the following lines:

`server=1`

`blockfilterindex=1`

Then save, close, and reopen Bitcoin Core for the changes to apply. If your node is run on the same computer as Specter, Specter will likely be able to automatically detect authentication info from a `.cookie` file that bitcoin core created on your computer. Specter may require you to configure the location of your blockchain data (which may be on an external HDD or SSD if you've used one), configure this in Specter settings. 

#### Remote nodes
You'll also need a way to authenticate a connection to your node. If this node is run on a different computer (a "remote" machine), you'll need to know the `rpcuser` and `rpcpassword` that your bitcoin core node is using. We recommend setting `rpcuser` to `specter` (if you can) for simplicity.

#### HWI Bridge
Note that for physically connecting hardware wallets using your laptop/desktop with Specter packaged on another device e.g. myNode, RaspiBlitz or Nodl, you may need to set up [HWI Bridge](https://github.com/cryptoadvance/specter-desktop/blob/master/docs/hwibridge.md). 

#### Optional Configuration
If you can tweak your settings, we recommend the following (optional):
* Do **not** run your node in [pruning mode](https://bitcoin.org/en/full-node#reduce-storage) as this disables `rescan` functionality.
In some edge cases you may need to rescan your node, and a pruned node will instead have to (automatically) `reindex` the whole blockchain (can take many hours to many days).
* If you have set [`blockfilterindex=1`](https://bitcoin.org/en/release/v0.19.0.1), as suggested above, it takes just a few GB of storage and helps speedup blockchain `rescan`ing.


{% include next_steps.md next_url="/setup-computer/specter" next_name="Install Specter-Desktop" %}
