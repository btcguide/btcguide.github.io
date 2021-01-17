---
title: Coldcard
---

#### SD Card "Airgap"
While better than a USB port, SD cards are not a perfect airgap.
[Stuxnet](https://en.wikipedia.org/wiki/Stuxnet) proved that the NSA was capable of jumping a USB-drive airgap to harm the Iranian nuclear reactor program.

#### Small Screen
This makes it hard to manually verify addresses / public key info, and impossible to display QR codes (to minimize using the SD card).

#### UX Feels More Hacker/Prosumer than Enterprise Grade
The Coldcard Mark3 has come a long way and now features clicky-buttons, a faster processor, and a more RAM (for signing transactions with many inputs).

However, normal users may be skeptical to trust a device to millions of dollars that looks like a child's calculator.
Looks can be deceiving, as this is a very powerful and purpose-built device.

#### Non-Reproducible Builds
While Coldcard builds are signed by Coldcard, they are not built in a way that is reproducible so they cannot be independently verified.
That said, Coldcard firmware is fully open so users can compile it themselves if they want this guarantee.

#### Fork of Trezor
This hardware wallet was launched by forking some of Trezor's open-source code.
That said, it is very actively maintained and has many new features since then (some that Trezor has not been updated to support).

{% include hw/python.md %}

{% include hw/encouragement.md %}
