---
title: Verify Receive Address
---

It is **essential** to be sure you control a bitcoin address before you use it to receive funds and [verifying multisig receive addresses is slightly more complicated than single-key setups](/known-issues/verify-receive-address).

**In order to securely receive funds, you must verify a given receive address on at least a quorum (`m` in `m-of-n`) of your trusted displays.**
In the default case, this means you would check on **both** your Cobo Vault and your Coldcard.
This is both annoying -- the two devices should be kept in different physical locations -- and in the case of Coldcard mildly frustrating as [they don't currently support address exploration with an airgap](/known-issues/hardware/coldcard#verifying-a-receiving-address-breaks-airgap).

Once you have verified your address on a quorum of devices, it is safe to give that address out to a payee.
Advanced users can mitigate some of these issues by following [these steps](/verify-receive-address/advanced).

[TODO]: auto-gen this TOC somehow?
## Table of Contents
1. [Specter Instructions](/verify-receive-address/specter)
1. [Cobo Vault Instructions](/verify-receive-address/cobo)
1. [Coldcard Instructions](/verify-receive-address/coldcard)

{% include next_steps.md next_url="/backup-wallet" next_name="Backup Wallet" %}
