---
title: Backup Wallet
---

Now that we've confirmed everything is working as expected, let's back it all up *before* receiving any bitcoin.

## Seeds and Public Keys
There are two components to your wallet that you need to backup to guarantee recovery: **seed phrases** and **public keys**.

#### Seed Phrases
[BIP39](https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki) seeds are 24\* word phrases that represent your bitcoin private keys.
With multisig, you only need to have `m` (of your total `n`) seed phrases to sign a transaction.
Seed phrases should be guarded *very* carefully as anyone who gets access to `m` of your `n` seed phrases could steal your bitcoin!

\*Expert users may choose to have a shorter seed-phrase, though we do not normally recommend this.

#### Public Keys
One confusing thing about multisig is that you need *all* of your public keys ([including associated metadata](/backup-wallet/public-keys-advanced#extended-public-key-info)) in order to be able to spend *any* of your bitcoin.
Public keys do not need to be guarded nearly as carefully as seeds; anyone who gets access to `public key information can only see which bitcoin addresses belong to you but cannot spend from them.

For non-expert users, we recommend storing a copy of *all* extended public keys with *each* individual seed as well as redundant backups in many other places that may include:
* Unsecured in a filing cabinet at home and/or work
* With your heirs, who may one day have to figure this out without your help
* In a safe-deposit box
* With your accountant, lawyer, or financial advisor
* With an insecure cloud provider (advanced users may want to encrypt this first)

[TODO]: auto-gen this TOC somehow?
## Table of Contents
1. [Backup Seeds Instructions](/backup-wallet/seeds)
1. [Backup Public Keys](/backup-wallet/public-keys)


{% include next_steps.md next_url="/send-bitcoin" next_name="Send Bitcoin" %}
