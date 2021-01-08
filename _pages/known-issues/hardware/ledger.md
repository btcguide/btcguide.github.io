---
title: Ledger
---

{% include hw/experts.md %}

#### Terrible Multisig Support
Ledger [cannot verify a receive address](https://twitter.com/mflaxman/status/1154538947340468224) nor [verify](https://twitter.com/mflaxman/status/1163585176275947523) [change addresses](https://www.reddit.com/r/ledgerwallet/comments/6mwpnt/electrum_multisig_with_ledger_on_testnet/), making it unsuitable for both sending and receiving bitcoin in a multisig transaction.
Chief Security Officer of Ledger Charles Guillemet has defended their decision to not support multisig by saying ([link](https://stephanlivera.com/episode/103/)):

> "a tiny mistake that can lead to massive loss and at scale, and this is very concerning to me"

Note that the whole point of multisig is to provide fault-tolerance so that [you can make mistakes and still avoid losses](/why-multisig)!
This is a very bizarre stance for a security company to publicly take, which he has defended [here](https://twitter.com/P3b7_/status/1169224897131941888).
Hopefully, Ledger will join the multisig party in the future so their devices can be used securely as part of your quorum.

#### No BIP174 Support
{% include hw/psbt.md %}

{% include hw/wired_airgap.md %}

{% include hw/closed_source.md %}

{% include hw/shitcoins.md %}

#### Hard-To-Use Buttons
While the physical input on most hardware devices is not perfect, Ledger's make it difficult to enter even a short 4-digit PIN.
This leads to shorter PINs and problems entering seeds/passphrases.

{% include hw/u2f.md %}
You can read more about this on [Ledger's Website](https://support.ledger.com/hc/en-us/articles/115005198545-FIDO-U2F).
