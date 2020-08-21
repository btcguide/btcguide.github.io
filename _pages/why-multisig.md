---
title: Why Multisig
---

["Your keys, your bitcoin. Not your keys, not your bitcoin."](https://www.youtube.com/watch?v=vt-zXEsJ61U)

While this is certainly true, managing your own keys is **really** hard.
The math behind the bitcoin protocol is bulletproof, but implementing your own wallet solution requires you to be near perfect in your execution.
For traditional single-key signatures, the only thing between your bitcoin and an attacker is a single mistake.
You can learn more about these by listening to [Michael Flaxman's interview on Stephan Livera's Podcast (SLP97)](https://stephanlivera.com/episode/97/). 

The central principle of the guide is to avoid having any single point of failure.
To accomplish this, you will setup your own multisig wallet using multiple hardware wallets by multiple different vendors.
The goal of this guide is to achieve a basic multisig: a 2-of-3 signature scheme using at least 2 different hardware wallets made by 2 different manufacturers.

Remember that your multisig setup requires breaking multiple redundant systems, which due to [the additive power of multisig](https://twitter.com/mflaxman/status/1146813775380647937) is incredibly challenging.
On account of this, your level of caution/paranoia/effort (vs a traditional single-key signature) can be much lower and still achieve much higher security.
This is a huge win!

We support users being as paranoid as they want to be, but at the same time we want to encourage less-savvy users not to be scared away from the process.
Try not to make the perfect the enemy of the good.
A lot of people stick with a bad setup (e.g. trusted custody or signal key signature) for fear of change.
It’s better to get a decent multisig solution configured now and then iterate towards a more secure one in the future.

**If you follow these instructions, you can suffer at least one catastrophic failure and not lose any bitcoin.**
This could include things like malware on your computer, an exploitable software/firmware bug on your hardware wallet, a pwned hardware wallet, a lost/stolen hardware wallet / seed, a supply channel attack, a forgotten password / PIN / passphrase, an evil-maid, a rogue bank employee snooping in your safe deposit box, an unscrupulous third party (lawyer/accountant), an eager heir, etc.
**While this setup is far more secure than a traditional single key signature, do be mindful that the wrong combination of 2+ mistakes could be enough to cause you to lose all of your bitcoins!**

At each step, there are recommendations for how you can harden your security, and you alone will have to decide how much time/money you want to spend to be more secure.
The steps described are considered the bare minimum needed to store bitcoin without a single point of failure.

This guide is free, and there are no refunds.
There are no bailouts in Bitcoin.
We **highly** recommend you practice all of this first.

{% include advanced_config.md %}
