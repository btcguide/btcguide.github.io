---
title: Advanced Quorum Choices
---

## Problems with 1-of-n

## Problems with 2-of-4
Eliminating a single point of failure requires having 4 dfferent HW wallets!

2-of-5 is even worse.

TODO: more on this.

## 3-of-5 is excellent
TODO: more on this.

## 4-of-5 works but is risky
Lose two seeds and all your funds are lost.
This is the same as 2-of-3, but instead of having 3 seeds to protect, you now have 5.
This tradeoff makes sense for very few people; those who are far more worried about theft vs loss.

## Nonstandard Transactions
Keep in mind that in order for a bitcoin transactions to be considered “standard” (and mined by most mining pools) you must have m <= 5, so you really don’t want to go above that unless you are an expert.
