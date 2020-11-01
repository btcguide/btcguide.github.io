---
title: Why Multisig?
---

["Your keys, your bitcoin. Not your keys, not your bitcoin."](https://www.youtube.com/watch?v=vt-zXEsJ61U)

While this is certainly true, managing your own keys is **really** hard.
The math behind the bitcoin protocol is bulletproof, but being your own bank requires you to be near perfect in your execution.
When it comes to cryptography, you are only as strong as your weakest link.
For traditional single-key signature schemes, the only thing between your bitcoin and an attacker is a single mistake!
Learn more about some of these risks by listening to [SLP Episode 97 with Michael Flaxman](https://stephanlivera.com/episode/97/). 

The central principle of the guide is to avoid having any single point of failure.
To accomplish this, you will setup your own multisig wallet using multiple hardware wallets from multiple different vendors.
The goal of this guide is to achieve a basic multisig setup:`2-of-3`signatures from different hardware wallets made by different manufacturers.

Remember that your multisig setup requires an attacker to break multiple redundant systems, which due to [the additive power of multisig](https://twitter.com/mflaxman/status/1146813775380647937) is _incredibly challenging_.
On account of this, your level of caution/paranoia/effort (vs a traditional single-key signature) can be much lower and yet still achieve much higher security.

**If you follow these instructions, you can suffer at least one catastrophic failure and not lose any bitcoin.**
This could include things like:
* An exploitable software/firmware bug on your hardware wallet
* A pwned (or fake) hardware wallet
* An unscrupulous trusted third party (lawyer/accountant/custodian/etc) with access to a key for recovery
* A lost/stolen hardware wallet / seed
* An upstream supply channel attack
* A forgotten PIN / passphrase
* A lost seed
* A compromised random-number generator
* An [evil-maid attack](https://en.wikipedia.org/wiki/Evil_maid_attack)
* Malware on your computer
* A rogue bank employee snooping in your safe deposit box
* An eager heir
* Etc

**While this setup is far more secure than a traditional single key signature with no fault tolerance, be mindful that the wrong combination of 2+ major mistakes could be enough to lose all of your bitcoin!**

Switching to fault tolerant multisig is the most important thing you can do to improve your security.
A lot of people stick with a bad setup -- trusted custody or single key signature -- for fear of change.
Don't make [the perfect the enemy of good](https://en.wikipedia.org/wiki/Perfect_is_the_enemy_of_good); upgrade to multisig today for a solid foundation and you can still iterate in the future!

We support users being as paranoid as they want to be, but think that with proper multisig it is overkill for all but the largest HODLers.
At each step, there are recommendations for how you can harden your security, and you alone will have to decide how much time/money you want to spend to sleep better at night.

This guide is free, and there are no refunds.
[There are no bailouts in Bitcoin](https://twitter.com/stephanlivera/status/1207802135791845376).
We **highly** recommend you practice all of this first.
See disclaimer [here](/disclaimer).

{% include next_steps.md next_url="/quorum" next_name="Pick Quorum" %}
