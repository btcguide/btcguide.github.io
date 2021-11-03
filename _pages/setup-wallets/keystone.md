---
title: Setup Keystone (Formerly Cobo Vault)
---

## Upgrade Firmware
Follow the instructions [here](https://support.keyst.one/getting-started/firmware-upgrading) to update your firmware:

1. Download the latest BTC-Only firmware from Keystone:  
[https://keyst.one/firmware](https://keyst.one/firmware)  
![](/assets/img/setup-keystone-download-firmware.png){:width="70%" class="border_image"}

1. Copy the downloaded `.zip` file to your microSD card and insert it into your Keystone.  
![](/assets/img/setup-keystone-insert-sd.png){:width="20%" class="border_image"}

1. Turn on your Keystone.
You will be prompted to update the firmware, click the button to accept the upgrade.
If you are not prompted to update the firmware, you can click on `Menu` > `Settings` > `Version` > `Update Now`.

1. Enter your password when prompted. The update may take several minutes to complete.

[TODO]: add screenshot (one on Cobo site is from v1.2.0 which is multicoin/confusing)

## Setup Wallet
Follow [the instructions on Keystone's website](https://support.keyst.one/getting-started/setting-up-keystone-in-5-steps) to verify your device, setup a PIN, and generate your seed.

[TODO]: copy over to this guide?

## Export Public Key Info to Computer via QR Code / Webcam
1. On Keystone: `Menu` > `Multisig Wallet` > `•••` button in the top right > `Show/Export XPUB`.  
![](/assets/img/setup-keystone-export-pubkey.jpeg){:width="85%" class="border_image"}

1. On Specter-Desktop: Click `+ Add new device` > `Scan`  
![](/assets/img/setup-keystone-specter-scan-1.jpg){:width="85%" class="border_image"}
![](/assets/img/setup-keystone-specter-scan-2.png){:width="85%" class="border_image"}

1. Hold the QR code on your Keystone up to your webcam so your computer can scan it.

1. Give your device a name (i.e. `Keystone`) and hit `Continue`.
![](/assets/img/setup-keystone-specter-scanned-1.png){:width="85%" class="border_image"}
![](/assets/img/setup-keystone-specter-scanned-2.png){:width="85%" class="border_image"}

_You can perform these steps via SD card, but since it is harder to do and less secure you really shouldn't!_


{% include next_steps.md next_url="coldcard" next_name="Setup Coldcard" %}
