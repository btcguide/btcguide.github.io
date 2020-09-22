---
title: Unchained Capital
---


{% include hosted/utxo_privacy.md %}

#### Limited Hardware Wallet Support
Unchained doesn't support Coldcard nor Cobo Vault, although they have [plans](https://unchained-capital.com/blog/gearing-up-the-caravan/) to add Coldcard in the future.
This means that **properly verifying a receive address is only possible for advanced users**.

Unchained [recently added functionality to Trezor to confirm a device is part of a multisig address](https://unchained-capital.com/blog/trezor-and-unchained-make-multisignature-safer/), however this doesn't fundamentally fix the limitations of Trezor's stateless design (see [Trezor's known issues](/known-issues/hardware/trezor)). 
These steps will only confirm that `1` of your keys is part of the quorum, not that `m` of your keys are part of the `m-of-n` quorum, so to be safe you must perform this step on *at least* `m` of your devices (more [here](/known-issues/verify-receive-address)).


{% include hosted/spof.md %}

#### Only Option is 2-of-3
 [`3-of-5` would be better](/quorum-advanced), especially when using a hosted service that abstracts away a lot of multisig's complexity.

{% include hosted/benefits.md %}
Some noteworthy benefits of using Unchained:
* Unchained has gone to great lengths to [streamline their sovereign recovery process](https://unchained-capital.com/blog/external-spend-workflow/) by releasing an open-source product called [Caravan](https://unchained-capital.github.io/caravan/) that abstracts all the steps away from end-users.
* Their [key checks](https://twitter.com/unchainedcap/status/1217882977717440515) feature is useful for promoting best practices.
* Current estate-planning offerings are not disclosed anywhere, but they are in a position to be extremely helpful to your heirs/estate should something happen to you.
