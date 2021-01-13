---
title: Casa
---

{% include hosted/limited_hw.md %}
Casa has complex instructions [here](https://blog.keys.casa/watch-only-wallet-guide/) and [here](https://support.keys.casa/hc/en-us/articles/360045032452-Creating-Watch-Only-Wallets) on how to validate a receive address.

#### Coldcard Implementation Doesn't Verify Cosigner Wallets
[Casa recommends you trust PSBTs of your cosigner wallets](https://support.keys.casa/hc/en-us/articles/360044798911-Coldcard-Setup) (meaning don't verify them).
In the event Casa were compromised, this leaves you at risk of loss when transacting.

#### 1 Key Kept on Phone Hot Wallet
Software hot wallets are inherently less secure but they have a better UX and offer one less device to buy/configure/update.
You can export your mobile key from the app for sovereign recovery purposes (instructions [here](https://walletsrecovery.org/recovery-docs/casa-recovery)).

#### Outdated Firmware
Casa [recommends users don't update their firmware](https://support.keys.casa/hc/en-us/articles/360045411571-Hardware-Wallet-Firmware-Upgrades).
This is likely to prevent hardware wallet vendors from being able to make breaking changes like [this one](https://github.com/trezor/trezor-firmware/issues/1044).
This will hopefully be resolved naturally in the future as hardware wallet vendors have strong incentives not to jeopardize access to user funds.

#### Sovereign Recovery Is Very Hard
While you can leave their service (or recover your coins if they go out of business), [the process](https://walletsrecovery.org/recovery-docs/casa-recovery) is likely only possible for advanced users.

{% include hosted/spof.md %}

{% include hosted/utxo_privacy.md %}
Casa is unique in that they do not perform traditional KYC, and it is even possible to signup without sharing your name.
Customers can pay anonymous with bitcoin or prepaid cards.
[Their privacy policy](https://blog.keys.casa/casa-privacy-and-data-protection-policy/) is intentionally very customer-friendly.

#### Seedless
Casa is [Seedless](https://blog.keys.casa/casa-seedless-security-model/), meaning that by default there are no seed backups from your hardware wallets (the mobile and Casa keys are backed up automatically).
This has some UX benefits that may improve security, but can also increases the risk of loss.

{% include hosted/benefits.md %}
Some noteworthy benefits of using Casa:

* Casa offers [Casa Covenant](https://keys.casa/bitcoin-inheritance-plan) for inheritance, though the public details are sparse. Opting into this would likely be incompatible with using their service anonymously.
* Their [health check](https://support.keys.casa/hc/en-us/articles/360045442511-Health-Checks) feature is useful for promoting best practices.
* They support `3-of-5` which [is an excellent setup](/quorum-advanced), and make it easy by providing `2` of the keys.

This is an especially good fit when using a hosted service that abstracts away a lot of multisig's complexity.
Casa users should *strongly* consider this option as Casa is seedless and uses 1 software wallet (see above).
