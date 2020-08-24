---
title: Backup Wallet
---

## Seeds and Public Keys
There are two components to your wallet that you need to backup to guarantee recovery, **seeds** and **extended public keys**.

#### Seeds
These are your 12-24 word BIP39 phrases.
You only need to have `m` (of your total `n`) seeds to recover your funds.
These should be guarded *very* carefully as anyone who gets access to these can steal your bitcoin!
Each seed should be stored in different physical location.


#### Extended Public Keys
One confusing thing about multisig is that you need *all* of your extended public keys (and related configuration settings) in order to be able to spend *any* of your funds.
Extended public keys  do not need to be guarded nearly as carefully as seeds; anyone who gets access to public key information can only see which bitcoin addresses belong to you (but cannot spend from them).
For non-expert users, we recommend making *lots* of redundant copies of this, and storing a copy of *all* extended public keys with *each* individual seed as well as in other places (with your accountant, lawyer, unsecured in a filing cabinet at home/work, etc).

The info needed to backup your extended public keys also includes related configuration settings:
* BIP32 paths - instructinons for your hardware wallet to derive the specific key used for signing from the seed
* Quorum information - `m` and `n`
* Root Fingerprint - of your master public key

You don't need to know what these are, your software will handle it automatically.
The main thing is that you know you have to keep a copy of all this data, and unlike your 24 word seed phrase it's too large to write down by hand.

{% comment %}TODO: auto-gen this TOC somehow?{% endcomment %}
## Table of Contents
* [Backup Seeds Instructions](/backup-wallet/seeds)
* [Backup Extended Public Keys](/backup-wallet/public-keys)

{% include advanced_config.md %}
