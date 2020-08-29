---
title: Backup Seeds
---

Remember that anyone who gets access to `m` of your `n` seeds (as well as your much less secure [public key information](/backup-wallet/public-keys)) can steal **all** of your bitcoin, so **do not store store a quorum of your seeds in one place!**

#### Redundancy
You want to backup each of your 24 word bip39 seed phrases on a piece of paper, so that you can recover if your hardware wallet is lost, defective, or destroyed.
That means at a minium you'll have 3 pieces of paper, each with 1 seed phrase.
Then, `m` of your seeds along with **all** `n` of your extended public key info (see [Backup Public Keys](/backup-wallet/public-keys)) will allow you to recover your funds.

#### Security
Some good places to store seeds:
* **Vaults at banks** - safe-deposit boxes have the added benefit that in the event of your death they should naturally transfer over to your heirs.
* **Safes at home/work** - you may not have the security systems/monitoring of a bank, but you also don't have to trust a third party to let you in (nor peak).
* **Burried in a mountain** - X marks the spot!
* **With a trusted family member** (or very close friend) - remember that if you give away `m` seeds, you no longer control your bitcoin!

{% include advanced_config.md %}
