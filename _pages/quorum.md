---
title: Picking Your Quorum
---

The main theme of this guide is to **avoid a single point of failure**.
This means multiple signatures ("multi-sig") to move your bitcoin is an absolute **must**.

For this guide, we’re going with `2-of-3`, as we’ve found it’s an excellent balance of security/useability for most people.
Once you’ve got that down, you may want to pick larger numbers in the future (see [advanced section](quorum-advanced)).

To eliminate a single point of failure, you’ll need three hardware wallets, made by three different manufacturers.
In order to avoid having to buy three hardware wallets
(and because [very few high-quality hardware wallets with good multisig support](/known-issues/hw-vendors)),
we’ll generate this third key less securely on your computer **offline**.

{% include advanced_config.md %}
