---
title: Equipment
---

TODO: add diagram showing how all these pieces interact.

This guide will assume your computer is running the free and open source [Ubuntu](https://ubuntu.com/) operating system, because it offers a good mix of security, bitcoin software compatibility, and end-user configurability.
Advanced users should be able to get other operating systems to work, but you will be on your own to figure that out for now.

The purpose of the computer will be to run [Specter-Desktop](https://github.com/cryptoadvance/specter-desktop), which will communicate blockchain information between [Bitcoin Core](https://bitcoin.org/en/full-node) and your hardware wallets for verification and signing.
You will need an up-to-date Bitcoin Core Full Node, which can be running on this same computer or another.
For more information about this, see the section called [Running Bitcoin](/running-bitcoin).
Bitcoin Core's initial block download takes a few days to sync, so we recommend you get started on that while you wait for your hardware wallets to arrive.

#### Minimum Equipment to Buy:
* 1 low-end computer with webcam - see below for more information about system requirements
* 1 [Coldcard Mark3 Hardware Wallet](https://coldcardwallet.com/) with 1 microSD card - must be <= 32 GB for `FAT` formatting, but *much* smaller is fine.
The previous Mark2 version may work, but since this is a security product it is always recommended to buy the latest version.
* 1 [Cobo Vault](https://cobo.com/hardware-wallet/cobo-vault) - Essential or Pro model.
* 1 DVD-R (if your computer has a DVD drive) or USB stick for installing [Ubuntu](https://ubuntu.com/)
* 1 pen + 3 pieces of paper (or notecards) to write down your BIP39 seed phrases
* 1 printer, 2 pieces of paper, + scissors - to print out [2 pages](setup-wallets/paper#generate-seed) of non-sensitive (public) information. You don't need to buy a printer if you can ask someone else to print these pages out for you. You will use the scissors to cut out the words.

#### Computer System Requirements
The software you’re running on this machine has very low resource requirements, so you can likely repurpose an old laptop that you have laying around.
You can read the exact Ubuntu Desktop System requirements [here](https://help.ubuntu.com/community/Installation/SystemRequirements).
Most notably, you’ll want the machine to be 64-bit, have at least 4GB RAM, and a 2 GHz dual-core processor.

While the optimal laptop would not be used for anything else, it is acceptable for this to be a multi-purpose machine that you use day-to-day; by design this laptop will not see bitcoin private key material and we will always treat it as-if it is infected by malware.

You do not need to use a laptop, any desktop computer can work. We find laptops ideal because:
* They are portable and have batteries, meaning they can easily be taken into secure rooms (like bank vaults) that may not have a power source.
* They usually have built-in webcams, which are needed for a high-quality [airgap](https://en.wikipedia.org/wiki/Air_gap_(networking)) (via QR code) that we will be using. It’s also easy to physically pick up laptops to scan QR codes if needed.
* They have less cables for the mouse/keyboard, which is helpful when dealing with the clutter of multiple hardware wallets.

## Bitcoin Core Node
For regular users, we recommend using
[RaspiBlitz](https://shop.fulmo.org/raspiblitz/),
[MyNode](https://mynodebtc.com/), or
[Nodl](https://www.nodl.it/)
(more [here](/setup-computer/)).

For advanced users, you can [run your own bitcoin core node](setup-computer/bitcoin-node) for more details.

{% include next_steps.md next_url="/setup-computer" next_name="Configure Your Computer" %}
