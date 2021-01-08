---
title: Advanced Single Sig
---

A common response to multisig is: *"but what if I do single-sig with a passphrase, is that secure?"*

Well, it depends.
Remember that when single-key signature schemes are performed perfectly, the math behind them *is* bulletproof.
Being that mere mortals are in control of the keys and the software that interacts with them, the reality is often quite different.
With single sig, an attacker needs to find just 1 vulnerability to separate you from your bitcoin.

Let's use some examples to demonstrate how this scheme (which was a good choice in ~2015) is strictly inferior to multisig.

#### Interacting with Blockchain Data
How does your wallet interact with blockchain data?
Do you maintain a perfect airgap?
If your hardware wallet is plugged into your computer (meaning no airgap), then you are 1 vulnerability (out of **[many](https://twitter.com/mflaxman/status/1149018598708568065)**) from losing your bitcoin.

This immediately eliminates Trezor, Ledger, and Keepkey.
You must now be using either:

* Your own software wallet (like Electrum) which is quite dangerous for non-expert users.
* A hardware wallet like Coldcard or Cobo Vault that has an airgap. Note that these devices are not perfect, see known issues [for Coldcard](/known-issues/hardware/coldcard) and [for Cobo](/known-issues/hardware/cobo).

For the rest of this page we'll assume you're using a hardware wallet, as few non-experts run software wallets these days.

#### Load Your Own Firmware
In order to be able to trust what your device is telling you (basic things like a deposit address on receiving funds or advanced things like change detection when spending) you must be sure it's running the correct software.
In practice, the best way to do this is to load the firmware onto the device yourself (note that this is not perfect, as a truly clever purchased device could fake receipt of the firmware and still lie to you).
Since it only takes one mistake to lose bitcoin, closed-source software is reckless for storing bitcoin (note that this is not true for multisig where the security model is additive).
This leaves only the Coldcard.

If you really want to be safe, you should order the hardware yourself and build the device on your own.

#### Bad Random Number Generator
Users are [notoriously bad at generating strong passwords](https://www.youtube.com/watch?v=_JNGI1dI-e8), but let's assume your passphrase has enough entropy that it is truly impossible to crack, even for an attacker with access to your seed phrase.
You no longer need to worry about a compromised random number generator on address generation, nor rolling dice for entropy (and verifying this output is being used correctly).
As this long passphrase is by definition challenging to remember, you're going to need to back this up.

Again, with multisig you don't need fancy passphrases (by default) as breaking a multisig scheme would require a quorum of devices' seed phrases to be compromised (in a way that your attacker could exploit).

#### Verification
In order to achieve perfect execution (so that attacks cannot be exploited) you need to know what your device is doing.
As the saying in bitcoin goes: "don't trust, verify."
You should have a second device (preferably made by a second manufacturer) to confirm everything your first device tells you (receive address verification, spend transactions send the amounts you expect, proper change detection, etc).

If this sounds a lot like a convoluted version of multisig, it's because it is.
Single-sig products typically don't build that much verification into their workflows.
You also now need to be worried that all the information needed to steal your bitcoin now exists in multiple places.

#### Chosen Nonce Attacks
If your nonce is not truly random, the private key used can be [easily calculated](https://twitter.com/mflaxman/status/1082045755991486464).
If your extended public key is known to your attackers, they can trivially derive the rest of your child private keys!

Advanced users can sign the same transaction multiple times and prove that their k-value is deterministic, but this is still no guarantee of randomness (expert users can write their own code to verify [RFC6979](https://tools.ietf.org/html/rfc6979) implementation).

Note multisig *massively* reduces the risk of chosen nonce attacks, as your attacker would need to be able to extract the nonce from a quorum of your signatures.

#### Multiple Pieces
You now have a scheme with multiple parts (seed words and passphrase) which both need to be combined in order to recover your bitcoin.
We can think of this like a 2-of-2 scheme, because if you lose either part you lose *all* of your bitcoin.
A better scheme would be something like a 2-of-3 multisig, where you can lose a part and not lose all of your bitcoin.

And if you're saying you'll use Shamir's Secret Sharing Scheme, read [this note](/why-multisig-advanced#shamirs-secret-sharing-scheme) first.

#### Inheritance
What happens if you get hit by a bus?
Multisig handles this situation reasonably well, as you can give 1+ seeds to your heirs while you're alive, and/or arrange for the transfer of any remaining seeds if you die (by using a safe deposit box or a hosted service like [Casa](/known-issues/hosted/casa) or [Unchained](/known-issues/hosted/unchained)).
The boundaries are well-defined and the recovery process uses common standards.

#### But I'm Perfect
Let's assume you are the rare expert who can take all of these precautions and execute this setup flawlessly.
You're now guarding multiple pieces of information, and verifying each step on multiple devices.
Wouldn't you be better off to combine that with a standard that enforces multiple signatures and explicitly allows for 1 or more mistakes?
See [Why Multisig](/why-multisig) section for more details.
