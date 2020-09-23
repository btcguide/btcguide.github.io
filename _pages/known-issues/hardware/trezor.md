---
title: Trezor
---

{% include hw/experts.md %}

#### Trezor Bridge Warning
Default usage leaks your xpub to Trezor's servers (and whoever they share records with).
This is [estimated at 99% of their users](https://coldbit.com/how-to-use-a-trezor-without-leaking-your-balance-and-transaction-history-to-third-parties/).
This has severe privacy implications and some [potential security implications](https://www.reddit.com/r/Bitcoin/comments/5csles/what_are_the_security_risks_of_sharing_xpub/).

{% include hw/stateless.md %}

#### Limited BIP174 Support
{% include hw/psbt.md %}
You can track Trezor's progress on this issue [here](https://github.com/trezor/trezor-firmware/issues/49).

{% include hw/wired_airgap.md %}
Trezor's Model T does not use [the built-in SD card for transacting](https://www.hardware-wallets.net/faq/what-is-the-sd-card-slot-on-the-trezor-model-t-for/).

#### No Keyboard
With only 2 buttons, it's very hard to enter a 24-word seed or strong passphrase.
You can read about advanced recovery steps on the screen for both Trezor One [here](https://blog.trezor.io/using-advanced-recovery-on-trezor-4af0eb53c3bb) and for the Model T [here](https://blog.trezor.io/learn-about-trezor-recovery-seed-offline-backup-fe235873c69f).

To mitigate this, Trezor can plug into your computer and use clever tricks to "securely" enter text on your computer, but is not ideal from a security/UX perspective.

#### No Physical Security
If a clever attacker with ~$100 USD of equipment gains *physical* access to your Trezor (model T or Trezor One) they can extract your seed.
You can read more about this [here](https://donjon.ledger.com/Unfixable-Key-Extraction-Attack-on-Trezor/) and [here](https://blog.kraken.com/post/3662/kraken-identifies-critical-flaw-in-trezor-hardware-wallets/) (Trezor's response [here](https://blog.trezor.io/our-response-to-ledgers-mitbitcoinexpo-findings-194f1b0a97d4)).

These attacks can be mitigated with a strong passphrase, and cannot be exploited remotely (must have physical access to your Trezor).

{% include hw/shitcoins.md %}
Trezor does have [a bitcoin-only firmware](https://shop.trezor.io/btc-only/), though [this is not a perfect solution](https://www.reddit.com/r/TREZOR/comments/dccdxq/bitcoinonly_firmware_available/).
TODO: find better explainer link.

#### Slow To Sign Multisig Transactions
It is unclear why this is the case:  
<https://twitter.com/lopp/status/1308082310038732801>

#### Have Made Breaking Changes in the Past
In June 2020, [BTCPay users found they were no longer able to access their funds](https://twitter.com/BtcpayServer/status/1268544252247715849).
Recovery is possible, as expert users can load in their own firmware, or refuse to upgrade their firmware (and forego potentially valuable security updates) in the first place.

{% include hw/python.md %}

{% include hw/u2f.md %}
You can read more about this on [Trezor's Website](https://blog.trezor.io/secure-two-factor-authentication-with-trezor-u2f-e940fd5a60af).

{% include hw/encouragement.md %}
