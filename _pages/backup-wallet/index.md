---
title: Backup Wallet
---

## Seeds and Public Keys
There are two components to your wallet that you need to backup to guarantee recovery, **seeds** and **public keys**.

#### Seeds
These are your 24 word BIP39 phrases.
You only need to have `m` (of your total `n`) seeds to recover your funds.
These should be guarded *very* carefully as anyone who gets access to these can steal your bitcoin!

#### Public Keys
One confusing thing about multisig is that you need *all* of your public keys ([including associated metadata](/backup-wallet/public-keys-advanced#extended-public-key-info)) in order to be able to spend *any* of your bitcoin.
Public keys do not need to be guarded nearly as carefully as seeds; anyone who gets access to public key information can only see which bitcoin addresses belong to you but cannot spend from them.

For non-expert users, we recommend storing a copy of *all* extended public keys with *each* individual seed as well as in many other places (with your accountant, lawyer, unsecured in a filing cabinet at home/work, etc) including cloud providers.

{% comment %}TODO: auto-gen this TOC somehow?{% endcomment %}
## Table of Contents
* [Backup Seeds Instructions](/backup-wallet/seeds)
* [Backup Public Keys](/backup-wallet/public-keys)

{% include advanced_config.md %}
