---
title: Unchained Capital
---


{% include hosted/limited_hw.md %}
Unchained has complex instructions [here](https://medium.com/coinmonks/address-verification-when-changing-keys-for-unchained-capital-vaults-268005e7563e) on how to validate a receive address.
While they [recently added limited address verification functionality to Trezor](https://unchained-capital.com/blog/trezor-and-unchained-make-multisignature-safer/), this doesn't fundamentally fix [Trezor's many known issues](/known-issues/hardware/trezor).
As Trezor is stateless, these steps will only confirm that `1` of your keys is part of the quorum, you must repeat these steps on [*at least* `m` (and preferably `n`) of your devices](/known-issues/verify-receive-address).

{% include hosted/spof.md %}

{% include hosted/utxo_privacy.md %}

#### Only Option is 2-of-3
 [`3-of-5` would be better](/quorum-advanced), especially when using a hosted service that already:

* Abstracts away a lot of multisig's complexity
* Holds `1` (or more) of your seeds

{% include hosted/benefits.md %}
Some noteworthy benefits of using Unchained:

* Unchained has gone to great lengths to [streamline their sovereign recovery process](https://unchained-capital.com/blog/external-spend-workflow/) by releasing an open-source product called [Caravan](https://unchained-capital.github.io/caravan/) that abstracts all the steps away from end-users.
* Their [key checks](https://twitter.com/unchainedcap/status/1217882977717440515) feature is useful for promoting best practices.
* Current estate-planning offerings are [barely disclosed](https://twitter.com/mflaxman/status/1308834924452106243), but they are in a position to be extremely helpful to your heirs/estate should something happen to you.
