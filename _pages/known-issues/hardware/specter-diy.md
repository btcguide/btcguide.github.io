---
title: Specter DIY
---

TODO: add more content

{% include hw/experts.md %}

#### Cannot Buy Assembled Version
While the DIY version is great for expert users (and no longer requires soldering!), the overwhelming majority of users prefer a product they can purchase.
The fewer people that use a product, the less thoroughly it is scrutinized/tested and higher risk it has for becoming abandonware.

Small nitpick: there is no currently available case, it's just raw electronics.

We expect both these issues to be resolved in the future, which will make this device a recommendable addition to your multisig setup.

#### No Physical Security
Not having a secure element means that if someone gets physical access to your Specter DIY device they can extract your seed.

There are two mitigations that make this an acceptable tradeoff:

1. Many use-cases are already built around the idea of giving complete access to anyone who gets physical access to a device.
For example, if you're storing seed phrases on metal plates (with no passphrase) then an attacker who gets access to that plate has all the private keys associated with it.
To get the benefits of a secure element (enforcing PIN access to a secure element with both a limit on the number of attempts and an exponentially-increasing time-delay for guesses) means that you also need to remember a PIN.
1. A long passphrase can strongly mitigate this issue, and the iPhone-style keyboard is very good for entering passphrases.

{% include hw/python.md %}

{% include hw/encouragement.md %}
