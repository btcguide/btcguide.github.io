---
title: Setup Coldcard
---

We recommend powering your Coldcard using a portable battery pack (best) or a wall outlet, instead of a computer, because we want to maintain as much of an "airgap" as possible.

Communication between your computer and Coldcard should only happen by manually transferring data over a microSD card.

## Update Your Firmware
Follow the steps on Coldcard's website:
<https://coldcardwallet.com/docs/upgrade>

## Setup Wallet
Follow the steps on Coldcard's website:
<https://coldcardwallet.com/docs/quick>

[TODO]: add more instructions for generating seed, setting PIN, etc

## Export Public Key Info to Computer via MicroSD
1. Insert a microSD into Coldcard and then select: `Settings` > `Multisig Wallets` > `Export XPUB`.
![](/assets/img/setup-coldcard-export-pubkey.jpg){:width="70%" class="border_image"}

1. Remove the microSD card from your Coldcard and put it in your computer's card reader.

1. On Specter-Desktop: Click `+ Add new device` > `Choose files` and select the exported file from the SD card:
![](/assets/img/setup-coldcard-specter-scan.jpg){:width="70%" class="border_image"}

1. Give your device a name (e.g. `Coldcard`) and click `Continue`.
![](/assets/img/setup-coldcard-specter-scanned.jpg){:width="70%" class="border_image"}


{% include next_steps.md next_url="coordinate-multisig" next_name="Coordinate Multisig" %}
