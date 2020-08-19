---
title: Why Multisig
---

["Your keys, your bitcoin. Not your keys, not your bitcoin."](https://www.youtube.com/watch?v=vt-zXEsJ61U)

While this is certainly true, managing your own keys is **really** hard.
The math behind the bitcoin protocol is bulletproof, but implementing your own wallet solution requires you to be near perfect in your execution.
Us mere mortals can sometimes fall short of this goal.
For traditional single-key signatures, the only thing between your bitcoin and an attacker is a single mistake, and there are ample opportunities to make them (and many hackers looking to exploit vulnerabilities).
You can learn more about these by listening to [Michael Flaxman's interview on Stephan Livera's Podcast (SLP97)](https://stephanlivera.com/episode/97/). 

The central principle of the guide is to avoid having any single point of failure.
The goal of this tutorial is for you to setup your own multisig wallet using multiple hardware wallets by multiple different manufacturers.
The more redundancy you add the more error-proof your setup can become, but also the more complicated and difficult for you to access.
The goal of this guide is to achieve the most basic multisig setup: a 2-of-3 signature multisig using at least 2 different hardware wallets made by 2 different manufacturers.

Security and useability are often a tradeoff, so our goal here is to get you an acceptable level of security, with the best UX, and the easiest setup.
Suggestions on how to improve this guide are always welcome.
Remember that your multisig setup requires breaking multiple  redundant systems, which due to [the additive power of multisig](https://twitter.com/mflaxman/status/1146813775380647937) is incredibly challenging.
On account of this, your level of caution/paranoia/effort (vs a traditional single-key signature) can be much lower and still achieve much higher security.
This is a huge win!

We support users being as paranoid as they want to be, but at the same time we want to encourage less-savvy users not to be scared away from the process.
Try not to make the perfect the enemy of the good.
A lot of people stick with a bad setup (e.g. trusted custody or signal key signature) for fear of change.
It’s better to get a decent multisig solution configured now and then iterate towards a more secure one in the future.
For example, it's great to start with a 2-of-3 keys setup and eventually move to a 3-of-5 keys setup.

**If you follow these instructions, you can have at least one catastrophic fail and not lose any bitcoin.**
This could include things like malware on your computer, an exploitable software/firmware bug on your hardware wallet, a pwned hardware wallet, a lost/stolen hardware wallet / seed, a supply channel attack, a forgotten password / PIN / passphrase, an evil-maid, a rogue bank employee snooping in your safe deposit box, an unscrupulous third party (lawyer/accountant), an eager heir, etc.
**While this setup is far more secure than a traditional single key signature, do be mindful that the wrong combination of 2+ of things like this happening could be enough to cause you to lose all of your bitcoins!**

[Multisig is not as easy as we would like it to be](https://medium.com/shiftcrypto/the-pitfalls-of-multisig-when-using-hardware-wallets-9b0e98e4c19c), but it is getting much better.
It is finally at the point where the security benefits far outweigh the costs.

At each step, there are recommendations for how you can harden your security, and you alone will have to decide how much time and money you want to spend to be more secure.
The steps described below are considered the bare minimum amount of effort needed to store bitcoin without being reckless.
There are no bailouts in Bitcoin. This guide is written for a less technical user who wants the optimal amount of security for the least amount of work.
You should be very familiar with the concepts behind bitcoin, but you do not need to be able to write code or use the command line (these steps are highly error prone anyway).

This guide is free, and there are no refunds.
We **highly** recommend you practice all of this first.
