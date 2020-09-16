---
title: Specter DIY
---

{% include hw_experts.md %}


TODO: add more content

#### Cannot Buy Assembled Version
While the DIY version is great for expert users (and no longer requires soldiering!), the overwhelming majority of users prefer a product they can purchase.
The fewer people that use a product, the less thoroughly it is scrutinized/tested and higher risk it has for becoming abandonware.

Small nitpick: there is no currently available case, it's just raw electronics.

We expect both these issues to be resolved in the future, which will make this device a recommendable addition to your multisig setup.

#### No Physical Security
Not having a secure element means that if someone gets physical access to your Specter DIY device they can extract your seed.

There are two mitigations that make this an acceptable tradeoff: 
1. Many use-cases are already built around the idea of giving complete access to anyone who gets physical access to a device.
For example, if you're storing seed phrases on metal plates (with no passphrase) then an attacker who gets access to that plate has all the private keys associated with it.
To get the benefits of a secure element (enforcing PIN access to a secure element with both a limit on the number of attempts an exponentially-increasing time-delay for guesses) means that you also need to remember a PIN.
2. A long passphrase can strongly mitigate this issue, and the iPhone-style keyboard is very good for entering passphrases.

#### Written in Python
This is not inherently a problem (python is a good general-purpose programming language!), but several hardware wallets with varying level of multisig support are also written in python, such as; Trezor, Coldcard, and Passport.
These hardware wallets share *a lot* of upstream code, and it's possible that if a vulnerability were discovered in one it would be present in the others.

{% include encouragement.md %}
