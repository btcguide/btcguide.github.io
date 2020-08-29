---
title: Coldcard
---

#### Verifying a Receiving Address Breaks Airgap
[Coldcard doesn't currently support address exploration with an airgap](https://github.com/Coldcard/firmware/pull/25).
In order to verify a receive address on a coldcard you must significantly weaken your airgap and plug the Coldcard into your laptop via USB port.

We expect they'll release this feature in the future, but the recommendation for now is to use Cobo Vault as the primary device when it comes to [verifying receive addresses](/verify-receive-address/).
Advanced users can pursue [various mitigation strategies](/verify-receive-address/coldcard-advanced).

#### SD Card "Airgap"
While better than a USB port, SD cards are not a perfect airgap.
[Stuxnet](https://en.wikipedia.org/wiki/Stuxnet) proved that the NSA was capable of jumping a USB-drive airgap to harm the Iranian nuclear reactor program.

Note that USB useage is currently required for verifying receive addresses.

#### Small Screen
This makes it hard to manually verify addresses / public key info, and impossible to display QR codes (to avoid using the SD card as an airgap).

#### UX Feels More Hacker/Prosumer than Enterprise Grade
The Coldcard Mark3 has come a long way and now features clicky-buttons, a faster processor, and a more RAM (for signing transactions with many inputs).

However, normal users may be skeptical to trust a device to millions of dollars that looks like a child's calculator.
Looks can be deceiving, as this is a very powerful and purpose-built device.

#### Written in Python
This is not inherently a problem (python is a good general-purpose programming language!), but several hardware wallets with varying level of multisig support are also written in python, such as; Trezor, Coldcard, and Passport.
These hardware wallets share *a lot* of upstream code, and it's possible that if a vulnerability were discovered in one it would be present in the others.

{% include encouragement.md %}
