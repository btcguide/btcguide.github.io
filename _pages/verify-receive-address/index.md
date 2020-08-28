---
title: Verify Receive Address
---

**It is essential to be sure you control a bitcoin address before you receive funds on it, as this is a common attack that leads to losses**.
You can read more about this issue (and some multisig-specific considerations) [here](/known-issues/verify-receive-address).

---

**In order to securely receive funds, you must first verify that receive address on at least a quorum (`m` in `m-of-n`) of your trusted displays.**
In the default case, this means you would check on **both** your Cobo Vault and your Coldcard.
This is both annoying -- two devices should be kept in different physical locations -- and in the case of Coldcard mildly frustrating as [they don't currently support address exploration with an airgap](/known-issues/coldcard#verifying-a-receiving-address-breaks-airgap).

Advanced users can mitigate some of these issues by following [these steps](/verify-receive-address/advanced).

[TODO]: auto-gen this TOC somehow?
## Table of Contents
* [Specter Instructions](/verify-receive-address/specter)
* [Cobo Vault Instructions](/verify-receive-address/cobo)
* [Coldcard Instructions](/backup-wallet/public-keys)

{% include advanced_config.md %}
