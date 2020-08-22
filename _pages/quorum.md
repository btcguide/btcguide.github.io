---
title: Picking Your Quorum
---

The main theme of this guide is to **avoid a single point of failure**.
This means multiple signatures ("multi-sig") to move your bitcoin is an absolute **must**.

However, **a 2-of-2 multisig introduces a two new single points of failure**; should you have an issue with either wallet, you could be locked out of your funds.
The most likely scenario would be key loss, but even with excellent backups something as simple as a software bug in one of your hardware wallets could harm you.
For example, if one hardware wallet were displaying an extended public key for which it didn't have the associated private key, you could be locked out of your funds.
In some clever attacks involving bip32 derivation paths, an attacker could even try to ransom your funds back to you (kind of like [CryptoLocker](https://en.wikipedia.org/wiki/CryptoLocker)).

For these reasons, you want your m-of-n multisig threshold to be `1 < m < n`.
For this guide, we’re going with 2-of-3, as we’ve found it’s an excellent balance of security/useability for most people.
Once you’ve got that down, you may want to pick larger numbers in the future.

To eliminate a single point of failure, you’ll need at least 2 hardware wallets, made by 2 different manufacturers.
In order to avoid having to buy three hardware wallets (and because there are so few good hardware wallet vendors with multisig support), we’ll generate this third key less securely on your computer (offline).

{% include advanced_config.md %}
