---
title: Setup Cobo Vault
---

## Upgrade Firmware
Follow the instructions [here](https://support.cobo.com/hc/en-us/articles/360046064053-Upgrading-Firmware) to update your firmware:

1. Download the latest BTC-Only firmware from Cobo:  
[https://cobo.com/hardware-wallet/downloads](https://cobo.com/hardware-wallet/downloads?toBtc=true)  
![](/assets/img/setup-cobo-download-firmware.png){:width="70%" class="border_image"}

1. Copy the downloaded `.zip` file to your microSD card and insert it into your Cobo Vault.  
![](/assets/img/setup-cobo-insert-sd.png){:width="20%" class="border_image"}

1. Turn on your Cobo Vault.
You will be prompted to update the firmware, click the button to accept the upgrade.
If not, you can click on `Menu` > `Settings` > `Version`> `Update Now`.

1. Enter your password when prompted. The update may take several minutes to complete.

[TODO]: add screenshot (one on Cobo site is from v1.2.0 which is multicoin/confusing)

## Setup Wallet
Follow [the instructions on Cobo's website](https://support.cobo.com/hc/en-us/articles/360045490014-Getting-started-in-5-steps) to verify your device, setup a PIN, and generate your seed.

[TODO]: copy over to this guide?

## Export Public Key Info to Computer via QR Code / Webcam
1. On Cobo: `Menu` > `Multisig Wallet` > `•••` button in the top right > `Show/Export XPUB`.  
![](/assets/img/setup-cobo-export-pubkey.jpg){:width="70%" class="border_image"}

1. On Specter-Desktop: Click `+ Add new device` > `Scan`  
![](/assets/img/setup-cobo-specter-scan.jpg){:width="70%" class="border_image"}

1. Hold the QR code on your Cobo vault up to your webcam so your computer can scan it.

1. Give your device a name (i.e. `Cobo`) and hit `Continue`.  
![](/assets/img/setup-cobo-specter-scanned.jpg){:width="70%" class="border_image"}

_You can perform these steps via SD card, but since it is harder to do and less secure you really shouldn't!_


{% include next_steps.md next_url="coldcard" next_name="Setup Coldcard" %}
