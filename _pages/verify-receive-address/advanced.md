---
title: Verify Receive Address
---

**It is essential to be sure you control a bitcoin address before you receive funds on it, as this is a common attack that leads to losses**.
You can read more about this issue [here](/known-issues/verify-receive-address).

#### When to Choose A Less Secure Approach
Having to travel to multiple geographies just to verify a single receive address (not even to spend bitcoin) can be undesirable for practical reasons.

One way around this is to (partially) trust the addresses your host computer displays.
If your host computer says address X follows the rules of your quorum (`m` signatures required from these `n` seeds your hardware wallets control), **and** your Cobo Vault agrees, you might decide it's worth the risk to consider that receive address valid.
**If your host computer (which may be infected with malware) and your Cobo Vault were compromised, this could results in immediate loss of funds sent to this address.**

Factors that make it less risky to consider this approach:

1. **When the amount you're receiving is low**.
(But remember, BTC price appreciation could increase the USD/EUR/GBP/etc. value of the bitcoin in this address, so consider this as well.)
1. **When the computer you're using to verify this address is a dedicated machine**. An eternally quarantined machine _significantly_ reduces risk.
1. **When you previously saved (preferably printed) a file of addresses that you verified on a quorum of trusted devices**,
your selected address is included in that file, and you are confident that the file has not been altered/tampered with.
1. **When performing a `3-of-5` multisig transaction where you verified the address on 2 trusted devices in the quorum**
but not the full 3 required.
1. **When your hardware wallets you use to verify the address previously saved/registered the public keys info from the rest of your seeds**,
so that tampering with any seed would be caught by this wallet. TODO: add more on this.

You might consider it safe to send to an address that you've previously received funds on and been able to spend, but this has two serious issues:

1. This is known as "address reuse", and it's bad for both privacy and security (in the event that serious quantum computers become available/viable).
TODO: add link/explanation.
1. The fact that you were previously able to spend does indicate you have control, but doesn't guarantee it.
In an extreme case, your host computer may be malware-infected yet still relaying/signing your small transactions in hopes of tricking you into making a large deposit (you can think of this as a long-con).

## Offline Address Verification
Your Specter-Desktop software is connected to the internet, or at least connected to your Bitcoin Core node which is connected to the internet.
We can improve this by using an offline/dedicated machine, where we install only the software absolutely required for our purposes.

While this will help protect you against malware on your computer, you are still at risk from an [Evil maid attack](https://en.wikipedia.org/wiki/Evil_maid_attack) with physical access to your computer (or paper printout).
Such an "evil maid" could tamper with this software/printout to instead show bitcoin addresses that they control, and trick you into receiving a deposit on their address.

#### Option A: Dedicated Machine
TODO: add instructions for inputting extended public keys & paths (no private keys/seeds) running Electrum, Sparrow, Caravan, or some CLI script.

It is recommended to use an eternally quarantined machine, meaning that it is never again connected to the internet and not used for any other purpose.
That way, the attack surface is reduced and you are not at risk of malware on an ongoing basis.

#### Option B: Print the Addresses to Paper
One benefit of this is that you could get by without a dedicated machine, and the other is that paper is easier for most people to secure vs a computer.

This option becomes less feasible as the number of bitcoin addresses you need rises. Consider, for example, a bitcoin business that receives many payments each day; a paper-based solution will be very difficult to manage in that situation.

Steps:

1. Follow the instructions in the previous step and setup a clean (freshly wiped) machine to verify receive addresses.
1. Export a very large amount of receive addresses to a file.
You never want to have to repeat this setup and paper is cheap, so consider a very large number (say 10,000 addresses).
1. Print this file, and consider making multiple copies.

Now that you never need to check this computer again, you can go about using it for whatever you like and not have to worry about keeping it secure.
Ideally, you would wipe the computer, but since it is only touching _public_ key information the only risk is a privacy leak.


{% include next_steps.md next_url="/backup-wallet" next_name="Backup Wallet" %}
