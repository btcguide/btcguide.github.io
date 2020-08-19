---
title: Equipment
---

This guide will assume your computer is running the free and open source [Ubuntu](https://ubuntu.com/) operating system.
The purpose of this machine will be to run [Electrum](https://electrum.org/) as a light client that will fetch blockchain info (balance, transaction history, etc), assemble unsigned transactions, collect signatures, broadcast signed transactions to the blockchain, and keep track of your transaction history.
While it is very possible to run Electrum on another operating system, we picked Ubuntu for having a good mix of security, bitcoin software compatibility, and end-user configurability.
Everything in this guide should work on another operating system, but if you go that route you’ll have to figure out the details on your own.


#### Minimum Equipment:
* 1 Basic computer with a webcam - see below for more information about system requirements
* 1 [Coldcard Mark3 Hardware Wallet](https://coldcardwallet.com/) - purchased directly from the manufacturer
* 1 [Cobo Vault](https://cobo.com/hardware-wallet/cobo-vault) - purchased directly from the manufacturer
* 1 USB stick or DVD-R (if you have a DVD drive) for installing [Ubuntu](https://ubuntu.com/) - DVD is slightly preferred (read-only, saves a USB port) if you have a choice.
* 1 MicroSD card - must be <= 32 GB for `FAT` formatting, but no harm in it being much smaller
* 1 pen and 3 pieces of paper

#### Recommended additions
* 1 extra MicroSD card - so each hardware wallet has its own dedicated MicroSD card.
* 3 x physical metal bitcoin seed storage devices (review of several [https://blog.lopp.net/metal-bitcoin-seed-storage-stress-test-round-iii/](here))


#### Computer System Requirements
The software you’re running on this machine has very low resource requirements, so you can likely repurpose an old existing laptop that you have laying around.
You can read the exact Ubuntu Desktop System requirements [here](https://help.ubuntu.com/community/Installation/SystemRequirements).
You’ll want the machine to be 64-bit, have at least 4GB RAM, and a 2 GHz dual-core processor.

While the optimal laptop would not be used for anything else, it is acceptable for this to be a multi-purpose machine that you use day-to-day; this laptop will never see any bitcoin private key material anyway and we will treat it as-if it is infected by malware.

Your software should handle the case of a compromised random number generator (added entropy on seed creation, deterministic k-values on signatures), so you shouldn’t have to worry about whether your random number generator has been tampered with by any 3-letter agencies.

You do not strictly need to use a laptop, any desktop computer can work. We find laptops to be ideal because:
* They have batteries, meaning they can be taken into secure rooms (like bank vaults) that may not have a power source.
* They usually have built-in webcams, which are needed for the high-quality airgap (via QR code) that we will be using. It’s also easy to pick up laptops to scan/display these QR codes.
* Minor attributes: they have less cables for the mouse/keyboard (helpful when dealing with all the clutter of multiple hardware wallets) and they often have touchscreens (nice for simpler operations).

**WARNING: using Electrum in the standard way is very convenient, but risks revealing which addresses are yours to anonymous/volunteer SPV servers on the internet.** These volunteer servers may be run by blockchain surveillance companies like [chainalysis](https://www.chainalysis.com/). Dishonest SPV servers can also attempt to trick SPV clients into following a version fo the blockchain that is invalid if it has more Proof of Work.

TODO: add more reading/links on these 2 topics.

For advanced topics including the hardware needed to run your own Electrum Server to eliminate these risks, see [here](/equipment-advanced).
