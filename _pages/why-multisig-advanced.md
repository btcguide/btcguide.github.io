---
title: Why Multisig?
---

Multisig has always been amazing in theory, but in practice it has been too difficult for non-expert users.

Multisig is still [not as easy as we would like it to be](https://medium.com/shiftcrypto/the-pitfalls-of-multisig-when-using-hardware-wallets-9b0e98e4c19c), but it is getting better every day.
It is finally at the point where the security benefits far outweigh the costs for large HODLers.
Here are some changes that have made multisig mainstream accessible:
* **[BIP174 (PSBT)](https://github.com/bitcoin/bips/blob/master/bip-0174.mediawiki) created a standard for multisig interoperability** between hardware wallets.
* **Multiple hardware wallets now support multisig**, and their quality is increasing (better airgaps, hardware, UX, compatibility, etc).
* **Multiple software implementations now exist** to coordinate multisig transactions (Electrum, specter-desktop, Caravan) as well as paid services (Casa, Unchained Capital, etc).
* **Reduction in popularity of airdrop coins** that were harder (or sometimes impossible) to claim for bitcoin multisig users.
* **Open-source paper wallets** [like SeedPicker](http://seedpicker.net/) have been released that lets you add seed(s) to your multisig quorum for recovery without having to purchase additional hardware wallets to get started (until/unless you need to perform emergency recovery).
* **Lower fees**: segwit gives a witness discount for `p2wsh` transactions, which has led to them being labelled "[Unfairly Cheap](https://twitter.com/lopp/status/988041430332530688)"!
* **Running a node has never been easier** - not only do the resources required continue to be low (an engineering marvel!), but there are now many companies that will sell you a node-in-a-box as well as open source scripts/tutorials for simplifying node deployment/administration.
* **Safer airgap signing**: [BIP143 (segwit)](https://github.com/bitcoin/bips/blob/master/bip-0143.mediawiki) allows hardware wallets to sign the input values on transactions directly, making it harder to exploit vulnerabilities in the rest of your stack.

There have been [so many hardware wallet vulnerabilities](https://twitter.com/mflaxman/status/1149018598708568065) and we expect new ones will continue to be discovered; multisig fundamentally doesn't change that.
The big difference is that a proper multisig scheme allows for 1 (or more) catastrophic failures without putting funds at risk.

#### Shamir's Secret Sharing Scheme
Multisig is strictly superior to [Shamir's Secret Sharing Scheme](https://en.wikipedia.org/wiki/Shamir%27s_Secret_Sharing) (SSSS), and while SSSS is elegant in theory it is very easy to mess up in practice.
SSSS also reintroduces a single point of failure; in order for a key to be generated (or used) it must be recombined in a single place.
We prefer to call it [Shamir's Secret Snakeoil](https://en.bitcoin.it/wiki/Shamir_Secret_Snakeoil).
SSSS should only be considered for expert users **after** you've maxed out your multisig scheme (`3-of-5` for most use-cases) and need additional protection.
For that use-case, you may want to look into [SLIP-0039](https://github.com/satoshilabs/slips/blob/master/slip-0039.md) or alternatively divide 1 (or more) of the BIP39 seed passphrases using Shamir's Secret Sharing Scheme.
The open-source software available to do this is still unfortunately [somewhat lacking](https://twitter.com/mflaxman/status/1294831929972477952), but should improve over time.

{% include next_steps.md next_url="/quorum" next_name="Pick Quorum" %}
