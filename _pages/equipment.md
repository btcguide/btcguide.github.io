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
* 1 Basic computer with a webcam - see below for more information about system requirements
* 1 [Coldcard Mark3 Hardware Wallet](https://coldcardwallet.com/) - purchased directly from the manufacturer
* 1 [Cobo Vault](https://cobo.com/hardware-wallet/cobo-vault) - purchased directly from the manufacturer
* 1 USB stick or DVD-R (if you have a DVD drive) for installing [Ubuntu](https://ubuntu.com/) - DVD is slightly preferred (read-only, saves a USB port) if you have a choice.
* 1 MicroSD card - must be <= 32 GB for `FAT` formatting, but no harm in it being much smaller
* 1 pen and 3 pieces of paper to write down seeds

#### Computer System Requirements
The software you’re running on this machine has very low resource requirements, so you can likely repurpose an old existing laptop that you have laying around.
You can read the exact Ubuntu Desktop System requirements [here](https://help.ubuntu.com/community/Installation/SystemRequirements).
Most notoably, you’ll want the machine to be 64-bit, have at least 4GB RAM, and a 2 GHz dual-core processor.

While the optimal laptop would not be used for anything else, it is acceptable for this to be a multi-purpose machine that you use day-to-day; by design this laptop will not see bitcoin private key material and we will treat it as-if it is infected by malware.

Your hardware wallets shoudl handle the case of a compromised random number generator (entropy on seed creation and deterministic k-values on signatures), so you shouldn’t have to worry about whether your random number generator has been tampered with by any 3-letter agencies.

You do not need to use a laptop, any desktop computer can work. We find laptops to be ideal because:
* They are portable and have batteries, meaning they can easily be taken into secure rooms (like bank vaults) that may not have a power source.
* They usually have built-in webcams, which are needed for a high-quality airgap (via QR code) which we will be using. It’s also easy to pick up laptops to scan QR codes if needed.
* Minor attributes: they have less cables for the mouse/keyboard (helpful when dealing with all the clutter of multiple hardware wallets) and they often have touchscreens (nice for simpler operations).

## Bitcoin Core Node
For non-experts, we recommend using a product such as [Nodl](https://www.nodl.it/), [MyNode](https://mynodebtc.com/), [Casa Node 2](https://keys.casa/lightning-bitcoin-node), or [LuxNode](https://luxnode.io/) as they will be easiest to configure.

If your machine is up to the task, it's fine to run your Bitcoin Core node on any day-to-day computer.
If you have enough hard drive space and don't mind the software running in the background.

{% include advanced_config.md %}
