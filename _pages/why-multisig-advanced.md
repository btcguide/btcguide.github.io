---
title: Why Multisig
---

Multisig has always been amazing in theory, but in practice it has been too difficult for non-expert users.

[Multisig is not as easy as we would like it to be](https://medium.com/shiftcrypto/the-pitfalls-of-multisig-when-using-hardware-wallets-9b0e98e4c19c), but it is getting much better.
It is finally at the point where the security benefits far outweigh the costs for large HODLers.
Here are some changes that have brought multisig into mainstream:
* [BIP174 (PSBT)](https://github.com/bitcoin/bips/blob/master/bip-0174.mediawiki) created a standard for multisig interoperabiltiy between hardware wallets
* Multiple hardware wallets now support multisig, and their quality is increasing (better airgaps, hardware, UX, compatibility, etc)
* Multiple software implementations now exist to coordinate multisig transactions (Electrum, specter-desktop, Caravan) as well as paid services (Casa, Unchained Capital, etc)
* Lower fees: segwit gives a witness discount for p2wsh transactions
* Safer airgap signing: segwit makes hardware wallet sign the input values on transactions directly, making it harder to exploit vulnerabilities in the rest of your stack
* Open-source software like [seedpicker](http://seedpicker.net/) has been released that lets you add 1-2 keys to your multisig quorum for recovery without having to purchase aditional hardware wallets (until/unless you need to perform recovery)

TODO: add list of single-key sig vulnerabilities:
* [Terrifying Talk on HW wallet Vulnerabilties](https://twitter.com/mflaxman/status/1149018598708568065)
* Chosen nonce attack
* Supply chain attack
* Software bug
* etc

#### Shamir's Secret Sharing Scheme
Multisig is strictly superior to [Shamir's Secret Sharing Scheme](https://en.wikipedia.org/wiki/Shamir%27s_Secret_Sharing), and while SSSS is elegant in theory it is very easy to mess up in practice.
We prefer to call it [Shamir's Secret Snakeoil](https://en.bitcoin.it/wiki/Shamir_Secret_Snakeoil).
SSSS should only be considered **after** you've maxed out your multisig scheme (3-of-5 for most use-cases) and need additional protection.
For that use-case, you may want to look into [SLIP-0039](https://github.com/satoshilabs/slips/blob/master/slip-0039.md) or alternatively divide 1 (or more) of the BIP39 seed passphrases using Shamir's Secert Sharing Scheme.
The open-source software available to do this is still [somewhat lacking](https://twitter.com/mflaxman/status/1294831929972477952).
