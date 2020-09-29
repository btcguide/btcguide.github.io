---
title: Setup Computer Overview
no_advanced_link: true
---

We will sometimes refer to this computer as "watch-only" because it can only see transactions/balances.
If your computer is infected by malware it can try to deceive you, but unlike your hardware wallets it does not have access to your private keys.
For this reason, it may be reasonable for you to skimp on many of the advanced security/validation steps.

Your computer will run two important pieces of software:
* [Bitcoin Core full node](https://bitcoin.org/en/bitcoin-core/) - to interact with (and validate!) the bitcoin blockchain
* [Specter-Desktop](https://github.com/cryptoadvance/specter-desktop) - to interact with your hardware wallets when verifying receive addresses and signing transactions

For regular users, we recommend using a pre-built bitcoin core node which includes Specter-Desktop:
* [RaspiBlitz](https://github.com/rootzoll/raspiblitz) - free to make or can be bought as a pre-made device
* [myNode](https://www.mynodebtc.com) - can be bought outright, or built and [Specter-Desktop is included in myNode premium](https://twitter.com/BitcoinQ_A/status/1280802711399796736)
* [Nodl](https://www.nodl.it) - can be bought outright


Advanced users who have an extra focus on security and/or enjoy customization may prefer to setup their own computer, bitcoin core node, and specter-desktop following these instructions:

[TODO]: auto-gen this TOC somehow?
1. [Setup Computer](computer)
1. [Run Bitcoin Core Node](bitcoin-node)
1. [Install Specter-Desktop](specter)


{% include next_steps.md next_url="/setup-wallets" next_name="Setup Hardware Wallets" %}
