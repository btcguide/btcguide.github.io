---
title: Verify Receive Address (Advanced)
---

## Save a File on Setup
TODO


## Clever Attack (and mitigation)
Let's say you have a 2-of-3 multisig, your host computer is infected with malware and your "Cobo Vault" is compromised/fake.
Here is an attack where you could be tricked into using an address that you don't actually control to recieve funds:
1. Host computer displays a 2-of-3 receiving address, where your Cobo Vault is not part of the multisig (or represents only 1-of-3 needed keys).
2. You pull out your "Cobo Vault" and it (falsely) confirm the same receive address on the screen.
3. You then deposit funds to this address, and are confused when they magically vanish.

**In order to securely receive funds, you must first verify that receive address on at least a quorum (`m` in `m-of-n`) of your trusted displays.**
In the default case, this means you would check on **both** your Cobo Vault and your Coldcard.
This is both annoying -- two devices that may very well be kept in different location -- and in the case of ColdCard mildly frustrating as [they don't currently support address exploration with an airgap](https://github.com/Coldcard/firmware/pull/25).
Currently, in order to verify a receive address on a coldcard you must weaken the airgap and plug the coldcard into your laptop via USB.

One way around this is to (partially) trust the addresses your host computer displays.
If your host computer says address X follows the rules of your quorum (m signatures requires from these n seeds), **and** your Cobo vault agrees, depending on the transaction size you might decide it's worth the risk to consider that receive address valid.
**Don't forget that if your host computer (which may be infected with malware already) and your Cobo Vault were compromised, this could results in immediate loss of funds sent to this address.**

Factors that make it less risky to consider this approach:
1. When the amount you're transacting is low
2. When the computer you're using to verify this address is a dedicated machine (or even better an eternally quarantined machine).
3. When you previously saved (preferably printed) a file with addresses and verified them on a quorum of machines, this address matches that file, and you are confident that nobody tampered with the file.
4. When performing a 3-of-5 multisig transaction where you verified the address on 2 trusted devices in the quorum (but not the full 3).

You might consider it safe to send to an address that you've previously received funds on and been able to spend, but this has two serious issues:
1. This is known as address reuse, and it's a bad for both privacy and security in the event of a quantum computer. TODO: add link.
2. The fact that you were previously able to spend does indicate you have control but doesn't guarantee it.  In an extreme case, your host computer may have been malware infected and relaying the unsigned transaction to a 3rd party who actually controls the keys and they signed the transaction, in hopes of tricking you into making a large deposit (which they will steal).


TODO: add setup instructions for eternally quarantined machine with extended public keys & paths only (running Electrum, Spectre, Caravan, or some other script).
