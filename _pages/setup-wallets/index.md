---
title: Setup Hardware Wallet Overview
---

#### Overview
We're going to configure a `2-of-3` multisignature scheme, meaning you will have 3 wallets, with a quorum of 2 required to send funds
(or safely verify an address to receive funds on).

In order to simplify the process, one of the wallets will actually be a seed that you generate on your computer.
This "paper wallet" is only ever designed to be used for backup/recovery purposes and will hopefully never be used.
The 2nd seed will come from your Cobo Vault, and the 3rd seed will come from your Coldcard.

While there are a lot of steps here, you only ever have to do them once.
Then, your wallet can then generate (nearly) infinite addresses and sign (nearly) infinite transactions.

[TODO]: auto-gen this TOC somehow?
## Table of Contents
1. [Paper Wallet](paper)
1. [Cobo Vault](cobo)
1. [Coldcard](coldcard)
1. [Coordinate Multisig (Specter-Desktop)](coordinate-multisig)


{% include next_steps.md next_url="/verify-receive-address" next_name="Verify Receive Address" %}
