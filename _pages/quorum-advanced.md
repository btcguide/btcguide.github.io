---
title: Pick Quorum
---

## Picking Your M and N
It might seem easy, but this choice is actually complex, especially since we want no hardware wallet vendor to be used for a quorum of seeds.
We'll see below that you want your m-of-n multisig threshold to be `1 < m < n`.

#### Problems with 1-of-n
This has similar security to a single-key signature, with many possible single keys that are capable of signing.
A vulnerability in any one of these seeds (random-number generation, the hardware wallet used, etc) could lead to loss of all your bitcoin.
You suffer [the negatives of multisig](/known-issues/multisig) without the positive.

**Recommendation: only expert users with a unique use-case should ever consider this.**

#### Problems with 2-of-2
A common fallacy is to take your `1-of-1` and convert it to a `2-of-2`, as multisig's security model is additive.
However, **a `2-of-2` multisig introduces a new single point of failure**: should you have an issue with either wallet, you could be locked out of your funds.
The most likely scenario would be key loss, but even with excellent backups something as simple as a software bug in one of your hardware wallets could harm you.
For example, if one hardware wallet were displaying an extended public key for which it didn't have the associated private key, you could be locked out of your funds.
In some clever attacks involving bip32 derivation paths, an attacker could even try to ransom your funds back to you (kind of like [CryptoLocker](https://en.wikipedia.org/wiki/CryptoLocker)).

#### 2-of-3 is Good
This is a good default choice:

* It is _relatively_ easy to implement
* Has few moving parts
* Minimal hardware purchasing requirements

The big negative is that it only has tolerance for one catastrophic failure (vs zero in single-key signature schemes), and your use-case might desire greater distribution of your keys (more locations, or trusted parties). We'll see below why `3-of-5` helps address (some of) these concerns.

#### Problems with 2-of-4
It's good that you need multiple signatures, but eliminating a single point of failure requires having 4 different HW wallet vendors!
Imagine that you have 4 seeds but only 3 different hardware-wallet vendors: 1 seed generated/protected by vendor A, 1 by vendor B, and 2 by vendor C.
If there were a serious bug with vendor C where 2 of your seeds are known to an attacker, then in the worst case they can spend all of your bitcoin!

Note: `2-of-5` is even worse.

**Recommendation: expert users can avoid this problem on receiving funds by performing their own random number generation for *multiple* paper wallets in their quorum as described [here](setup-wallets/paper).**
However, keep in mind that there are currently [very few high-quality hardware wallets with good multisig support](/known-issues/hw-vendors), so if you need to use those recovery keys you may be forced to use the same hardware wallet vendor for 2+ seeds.


#### 3-of-5 is Excellent
Like `2-of-3`, `3-of-5` is a great choice.
It offers more redundancy vs `2-of-3` (you can suffer **two** serious issues and not lose funds).
The obvious negative is that you now need to buy and keep track of **five** hardware wallets (instead of 3).
Since there are currently [very few high-quality hardware wallets with good multisig support](/known-issues/hw-vendors), your keys will almost certainly not be guarded by 5 wallets from 5 different vendors.

**Recommendation: this is a good quorum to use.**
For simplicity, this guide is focused on `2-of-3` but a future version may include explicit instructions for `3-of-5`.
Advanced users will be able to figure out how to adopt the steps in the guide to a larger quorum.

#### 4-of-5 Works, But Is Risky
Lose two seeds and all your funds are lost.
This is the same as `2-of-3`, but instead of having 3 seeds to protect, you now have 5.
This tradeoff makes sense for very few people; those who are far more worried about theft vs loss.
Keep in mind that on average loss is far more common than theft.

**Recommendation: only expert users with a strong use-case should ever consider this.**

#### N > 5 is Costly and Risky
N > 5 is technically possible (see e.g. [this demonstration of `15-of-15`](https://twitter.com/thebitcoinrabbi/status/1300097349230956544)).

But unless you know exactly what you're doing and why, you should avoid N > 5. At that point, the cost and complexity likely exceeds any additional security benefits.

Furthermore, N > 5 can be dangerous. Due to size limits ([legacy](https://bitcoin.stackexchange.com/questions/23893/what-are-the-limits-of-m-and-n-in-m-of-n-multisig-addresses), [segwit](https://bitcoin.stackexchange.com/questions/51509/will-segwit-allow-for-m-of-n-multisig-with-very-large-n-and-m)), using M and N values that are too large carries the additional risk of creating "nonstandard" transactions (unlikely to be propagated and mined) or even invalid transactions, which could result in _permanent loss of funds_!

**Recommendation: only expert users with a strong use-case should ever consider this.**


{% include next_steps.md next_url="/equipment" next_name="Equipment" %}
