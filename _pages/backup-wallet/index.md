---
title: Backup Wallet
---

Now that we've confirmed everything is working as expected, let's back it all up *before* receiving any funds.

## Seeds and Public Keys
There are two components to your wallet that you need to backup to guarantee recovery, **seeds** and **public keys**.

#### Seeds
These are your 24 word BIP39 phrases.
You only need to have `m` (of your total `n`) seeds to recover your funds.
These should be guarded *very* carefully as anyone who gets access to these can steal your bitcoin!

#### Public Keys
One confusing thing about multisig is that you need *all* of your public keys ([including associated metadata](/backup-wallet/public-keys-advanced#extended-public-key-info)) in order to be able to spend *any* of your bitcoin.
Public keys do not need to be guarded nearly as carefully as seeds; anyone who gets access to public key information can only see which bitcoin addresses belong to you but cannot spend from them.

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
