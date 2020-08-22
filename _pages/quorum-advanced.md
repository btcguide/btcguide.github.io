---
title: Advanced Quorum Choices
---

## Picking Your M and N
It might seem easy, but this choice is actually complex, especially since we want no hardware wallet vendor to be used for a quorum of seeds.

#### Problems with 1-of-n
This is just single-key signature, with many possible single keys that are capable of signing.
A vulnerability in any one of these seeds (random number generation, any hardware wallet used, etc) could lead to loss of all your backups.
You suffer the [negatives of multisig](known-issues/multisig) without the positive.

**Recommendation: only expert users with a strong use-case should ever consider this.**

#### Problems with 2-of-4
It's good that you need multiple signatures, but eliminating a single point of failure requires having 4 dfferent HW wallet vendors!
Imagine you have 4 seed but only 3 different hardware wallet vendors: 1 seed generated/protected by vendor A, 1 by vendor B,  and 2 by vendor C.
If there were a serious bug with vendor C where 2 of your seeds are known to an attacker, then in the worst case they can spend all of your bitcoin!

Note: `2-of-5` is even worse.

**Recommendation: expert users can avoid this problem on recieving funds by performing their own random number generation for *multiple* paper wallets in their quorum as described [here](setup-wallets/paper).**
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
Keep in mind that on average loss is far more comman than theft.

**Recommendation: only expert users with a strong use-case should ever consider this.**

#### N > 5: Nonstandard Transactions
Most mining pools will only mine "standard" transactions, which is defined as `m <= 5`.
This means that confirmation times will be much slower for these transactions, as a smaller percentage of bitcoin's hashpower will try to include them in block templates.

**Recommendation: do not consider this unless you are an expert.**
