---
title: Equipment
---

TODO: add diagram showing how all these pieces interact.

This guide will assume your computer is running the free and open source [Ubuntu](https://ubuntu.com/) operating system, because it offers a good mix of security, bitcoin software compatibility, and end-user configurability.
Advanced users should be able to get other operating systems to work, but you will be on your own to figure that out for now (pull requests welcome).

The purpose of the computer will be to run [Specter-Desktop](https://github.com/cryptoadvance/specter-desktop), which will communicate blockchain information between [Bitcon Core](https://bitcoin.org/en/full-node) and your hardware wallets for verification and signing.
You will need an up-to-date Bitcoin Core Full Node, which can be running on this same computer or another.
For more information about this, see the section called [Running Bitcoin](/running-bitcoin).
Bitcoin Core's initial block download takes a few days to sync, so we recommend you take care of that while you wait for your hardware wallets to arrive.

#### Minimum Equipment to Buy:
* 1 simple computer with webcam - see below for more information about system requirements
* 1 [Coldcard Mark3 Hardware Wallet](https://coldcardwallet.com/) with 1 microSD card - must be <= 32 GB for `FAT` formatting, but much smaller is fine
* 1 [Cobo Vault](https://cobo.com/hardware-wallet/cobo-vault)
* 1 DVD-R (if your computer has a DVD drive) or USB stick for installing [Ubuntu](https://ubuntu.com/)
* 1 pen + 3 pieces of paper (or notecards) to write down seeds
* 1 printer + 2 pieces of paper - to print out [2 pages](setup-wallets/paper#generate-seed) of public information. You don't need to buy a printer if you can ask someone else to print these pages out for you. You will also need a pair of scissors to cut out the words.

#### Computer System Requirements
The software you’re running on this machine has very low resource requirements, so you can likely repurpose an old existing laptop that you have laying around.
You can read the exact Ubuntu Desktop System requirements [here](https://help.ubuntu.com/community/Installation/SystemRequirements).
Most notably, you’ll want the machine to be 64-bit, have at least 4GB RAM, and a 2 GHz dual-core processor.

While the optimal laptop would not be used for anything else, it is acceptable for this to be a multi-purpose machine that you use day-to-day; by design this laptop will not see bitcoin private key material and we will treat it as-if it is infected by malware.

Your hardware wallets should handle the case of a compromised random number generator (entropy on seed creation and deterministic k-values on signatures), so you shouldn’t have to worry about whether your random number generator has been tampered with by any 3-letter agencies.

You do not need to use a laptop, any desktop computer can work. We find laptops to be ideal because:
* They are portable and have batteries, meaning they can easily be taken into secure rooms (like bank vaults) that may not have a power source.
* They usually have built-in webcams, which are needed for a high-quality airgap (via QR code) which we will be using. It’s also easy to pick up laptops to scan QR codes if needed.
* Minor attributes: they have less cables for the mouse/keyboard (helpful when dealing with all the clutter of multiple hardware wallets) and they often have touchscreens (nice for simpler operations).

Advanced users can get by on **very** cheap computers (like a Raspberry Pi), but since we're using Ubuntu we need to meet their (fairly basic) minimum requirements.

## Bitcoin Core Node
For non-experts, we recommend using a product such as [MyNode](https://mynodebtc.com/), [Nodl](https://www.nodl.it/), [RaspiBlitz](https://shop.fulmo.org/raspiblitz/), or [Umbrel](https://getumbrel.com/) as they will be easiest to configure.

If you want to run your own bitcoin core node, see [Node Configuration](node-config) for more details.

{% include advanced_config.md %}
