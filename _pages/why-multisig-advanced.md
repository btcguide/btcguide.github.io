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
* Open-source software like [seedpicker](http://seedpicker.net/) has been released that lets you add 1-2 keys to your multisig quorum for recovery without having to purchase aditional hardware wallets (until/unless you need to perform recovery)

TODO: add list of single-key sig vulnerabilities:
* Chosen nonce attack
* Supply chain attack
* Software bug
* etc
