### Coldcard

#### Verifying a Receiving Address Breaks Airgap
[Coldcard doesn't currently support address exploration with an airgap](https://github.com/Coldcard/firmware/pull/25).
In order to verify a receive address on a coldcard you must significantly weaken your airgap and plug the Coldcard into your laptop via USB port!

We expect they'll release this feature in the future, but the recommendation for now is to use Cobo Vault as the primary device when it comes to [verifying receive addresses](#verify-receive-address).
Advanced users can pursue [various mitigation strategies](#verify-receive-address-on-coldcard-advanced).

#### SD Card "Airgap"
While better than a USB port, SD cards are not a perfect airgap.
[Stuxnet](https://en.wikipedia.org/wiki/Stuxnet) proved that the NSA was capable of jumping a USB-drive airgap to harm the Iranian nuclear reactor program.

#### Wired "Airgap"
This device must be connected to your computer in order to function.
Wired connections are bad because the USB stack presents massive attack vectors; the whole point of hardware wallets is to keep your keys offline.
Coldcard requires a USB connection only to perform address verification (see above for related issues).

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

#### Complex Driver Configuration
In order to connect a hardware wallet to your computer (thus breaking the "airgap"), your computer needs to be configured to interact with it.
Advanced users will need to setup [udev rules](https://github.com/spesmilo/electrum/tree/master/contrib/udev).

Fixing the airgap on receive address verification would eliminate this issue altogether.

#### Written in Python
This is not inherently a problem (python is a good general-purpose programming language!), but several hardware wallets with varying level of multisig support are also written in python, including: Trezor, Coldcard, KeepKey, Specter-DIY, and Passport.
These hardware wallets share *a lot* of upstream code, and it's possible that if a vulnerability were discovered in one it would be present in the others.

---

#### Don't Be Discouraged
Security is not a binary, and no device is 100% secure.
Remember that [multisig security is additive](#why-multisig), and using this device as part of a proper multisig setup can *substantially* improve your bitcoin security.
