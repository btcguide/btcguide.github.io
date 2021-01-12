---
title: Pick Quorum
---

The main theme of this guide is to create fault tolerance by **avoiding a single point of failure**.
This means multiple signatures ("multi-sig") to move your bitcoin is an absolute **must**.

We recommend `2-of-3` by default, as we believe it strikes an excellent balance between security and usability for most use-cases.
Once you're comfortable with `2-of-3`, you may want to pick larger numbers in the future (see [advanced section](quorum-advanced)).

You'll need three hardware wallets, made by three different manufacturers.
In order to avoid having to buy three hardware wallets (and because there are only [very few high-quality hardware wallets with good multisig support](/known-issues/hw-vendors)),
we'll generate this third key less securely on your computer **offline**.

{% include next_steps.md next_url="/equipment" next_name="Equipment" %}
