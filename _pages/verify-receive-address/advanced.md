---
title: Verify Receive Address
---

**It is essential to be sure you control a bitcoin address before you receive funds on it, as this is a common attack that leads to losses**.
You can read more about this issue [here](/known-issues/verify-receive-address).

#### When to Choose A Less Secure Approach
Having to travel to multiple geographies just to verify a single receive address (not even to spend bitcoin) can be undesireable for practical reasons.

One way around this is to (partially) trust the addresses your host computer displays.
If your host computer says address X follows the rules of your quorum (`m` signatures requires from these `n` seeds your hardware wallets control), **and** your Cobo vault agrees, you might decide it's worth the risk to consider that receive address valid.
**Don't forget that if your host computer (which may be infected with malware already) and your Cobo Vault were compromised, this could results in immediate loss of funds sent to this address.**

Factors that make it less risky to consider this approach:
1. **When the amount you're receiving is low**.
Keep in mind bitcoin price appreciation could increase the $ value of the bitcoin in this address.
2. **When the computer you're using to verify this address is a dedicated machine** -
an eternally quarantined machine is even better.
3. **When you previously saved (preferably printed) a file of addresses that you verified on a quorum of trusted devices**,
this address matches that file, and you are confident that nobody tampered with the file.
4. **When performing a `3-of-5` multisig transaction where you verified the address on 2 trusted devices in the quorum**
but not the full 3 required
5. **When your hardware wallets you use to verify the address previously saved/registered the public keys info from the rest of your seeds**,
so that tampering with any seed would be caught by this wallet. TODO: add more on this.

You might consider it safe to send to an address that you've previously received funds on and been able to spend, but this has two serious issues:
1. This is known as address reuse, and it's a bad for both privacy as well security (in the event of a quantum computer).
TODO: add link/explanation.
2. The fact that you were previously able to spend does indicate you have control but doesn't guarantee it.
In an extreme case, your host computer may have been malware infected and relaying the unsigned transaction to a 3rd party who actually controls the keys and they signed the transaction, in hopes of tricking you into making a large deposit (which they will steal).


## Setting Up Redundant Devices for Address Verification

#### Setup Address Verification Machine
TODO: add instructions for inputting extended public keys & paths only (running Electrum, Specter, Caravan, or some other script).

It is *highly recommended* that you make this an eternally quarantined machine, meaning that it is never again connected to the internet and not used for any other purpose.
That way, you're not at ongoing risk of malware.
You are, however, at risk that an [Evil maid](https://en.wikipedia.org/wiki/Evil_maid_attack) with physical access to your computer tampers with it to display bitcoin addresses on it that they control!

#### Print a File on Setup
One benefit of this is that you could get by without a dedicated machine:
1. Follow the instructions in the previous step and setup a clean (freshly wiped) machine to verify recieve addreses.
2. Export a very large amount of receive addresses (you never want to repeat this step) to a file.
3. Print this file, consider making multiple copies.

Now that you never need to check this computer again, you can go about using it for whatever you like and not have to worry about keeping it secure.
Just be sure you guard the paper you printed out, as you don't want an [Evil maid](https://en.wikipedia.org/wiki/Evil_maid_attack) to swap it out for paper with their bitcoin addresses on it!
