---
title: Configure Computer
---

#### A Note on Caution
In a perfect world, you’d carefully verify the software you’re installing.
However, since this machine won't store private key material\* (and multiple signatures will be required to move funds) it may be acceptable for you to install software that seems correct without properly verifying it using the command-line.

_\*While we recommend that no private key material ever touch this machine, that setup is slightly more involved and thus you may choose to generate 1 seed on this machine (and then wipe it after).
Remember that this alone is not sufficient to steal/lockup funds, so it may present an acceptable tradeoff for smaller HODLers.
For more details, see [Paper Wallet Setup steps](/setup-wallets/paper)._

## Install Ubuntu

You’ll want to download and install the latest long term stable (LTS) version of [Ubuntu Desktop](https://ubuntu.com/download/desktop) (currently `20.04.1`).
Put the installer on a USB stick or burn it onto a DVD.
Both options are good, though we find DVDs are slightly preferable as they are slightly more secure and don’t take up a USB port.
See [these step-by-step instructions](https://ubuntu.com/tutorials/install-ubuntu-desktop).



{% include next_steps.md next_url="/setup-computer/bitcoin-node" next_name="Configure Your Bitcoin Node" %}
