## Ledger

## Warning: Experts Only!
For the reasons below, **we currently do not recommend using this hardware wallet for ordinary users**.
Expert users may find reason to add this wallet to their multisig quorum and get [the additive security benefits of multisig](#why-multisig).

---


### Terrible Multisig Support
Ledger [cannot verify a receive address](https://twitter.com/mflaxman/status/1154538947340468224) nor [verify](https://twitter.com/mflaxman/status/1163585176275947523) [change addresses](https://www.reddit.com/r/ledgerwallet/comments/6mwpnt/electrum_multisig_with_ledger_on_testnet/), making it unsuitable for both sending and receiving bitcoin in a multisig transaction.
Chief Security Officer of Ledger Charles Guillemet has defended their decision to not support multisig by saying ([link](https://stephanlivera.com/episode/103/)):

> "a tiny mistake that can lead to massive loss and at scale, and this is very concerning to me"

Note that the whole point of multisig is to provide fault-tolerance so that [you can make mistakes and still avoid losses](#why-multisig)!
This is a very bizarre stance for a security company to publicly take, which he has defended [here](https://twitter.com/P3b7_/status/1169224897131941888).
Hopefully, Ledger will join the multisig party in the future so their devices can be used securely as part of your quorum.

### No BIP174 Support
Partially Signed Bitcoin Transactions (PSBT or [BIP174](https://github.com/bitcoin/bips/blob/master/bip-0174.mediawiki)) was proposed in July 2017 and merged into Bitcoin Core [in October 2018](https://bitcoin.org/en/release/v0.17.0#bip-174-partially-signed-bitcoin-transactions-support).
Wallets that don't update their software could easily become abandonware.


### Wired "Airgap"
This device must be connected to your computer in order to function.
Wired connections are bad because the USB stack presents massive attack vectors; the whole point of hardware wallets is to keep your keys offline.


### Closed Source
While some code may be open source, it is impossible for end-users to verify how their software actually works, and thus they must instead rely on trust.
This is usually because a device uses a so-called Secure Element whose manufacturer requires its code to be kept closed-source and under NDA.
This process of "security through obscurity" is generally considered a [bad](https://stackoverflow.com/questions/533965/why-is-security-through-obscurity-a-bad-idea) [practice](https://en.wikipedia.org/wiki/Security_through_obscurity) in the information security community.
They do reveal their code to others under NDA and publish the results of third party audits of their code.

The popular bitcoin ethos of "don't trust, verify" is incompatible with software that isn't 100% open-source.

### Altcoin-Focused
In theory, supporting altcoins does not fundamentally weaken bitcoin security.
In practice, the more complex a codebase is the more likely a security bug will be introduced (or go undetected).
These wallets are liable to be slow to upgrade their security, and [bit rot](https://en.wikipedia.org/wiki/Software_rot) is more likely to set in.



### Hard-To-Use Buttons
While the physical input on most hardware devices is not perfect, Ledger's make it difficult to enter even a short 4-digit PIN.
This leads to shorter PINs and problems entering seeds/passphrases.

---

### Alternate Use: U2F Key
This wallet can be converted to a [Universal 2nd Factor (U2F)](https://en.wikipedia.org/wiki/Universal_2nd_Factor) key for logging into trusted third parties like Twitter, Google, Facebook, LinkedIn, DropBox, etc.
While this won't have any direct impact on the security of bitcoin private keys that are under your physical control, it does significantly impair hackers' ability to wreak havoc on your digital life.

*If you use this as a U2F key, you should probably use it only for that purpose and not for storing bitcoin*.
There are already many reputable U2F hardware providers and their dedicated products are very affordable, so it is *not* recommended to buy this device for use as a U2F key.
However, U2F keys can be a good way to make use of a retired bitcoin hardware wallet.

You can read more about this on [Ledger's Website](https://support.ledger.com/hc/en-us/articles/115005198545-FIDO-U2F).
