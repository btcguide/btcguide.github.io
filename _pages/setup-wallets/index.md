---
title: Setup Your Hardware Wallets - Overview
---

#### Overview
We're going to configure a `2-of-3` multisignature scheme, meaning you will have 3 wallets, with a quorum of 2 required to send funds
(or safely verify an address to recieve funds on).

In order to simplify the process, one of the wallets will actually be a seed that you generate on your computer.
This "paper wallet" is only ever designed to be used for backup/recovery purposes and will hopefully never be used.

The next seed will come from your Cobo Vault, and the last seed will come from your Coldcard.

{% comment %}TODO: auto-gen this TOC somehow?{% endcomment %}
## Table of Contents
* [Paper Wallet](paper)
* [Cobo Vault](cobo)
* [Coldcard](coldcard)


{% include advanced_config.md %}
