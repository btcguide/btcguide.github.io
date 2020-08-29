---
title: Setup Coldcard
---

## Prepare Device

#### Verify Number on Bag

The Coldcard will come in a bag with a letter or barcode under the number (e.g. C0008091) - when you first start up the device, confirm that it displays this number.
See Matt Odell’s Coldcard video from approx 3 mins in [here](https://www.youtube.com/watch?v=sM2uhyROpAQ&feature=youtu.be&t=180).

#### Update Your Firmware
Follow the steps on Coldcard's website:
[https://coldcardwallet.com/docs/upgrade](https://coldcardwallet.com/docs/upgrade).

## Setup Wallet
TODO: add instructions for generating seed, setting PIN, etc

## Export Public Key Info to Computer via MicroSD
1. Insert a microSD into Coldcard and then select: `Settings` > `Multisig Wallets` > `Export XPUB`.  
![](/assets/img/setup-cooldcard-export-pubkey.jpg){:width="800px"}

2. Remove the microSD card from your Coldcard and put it in your computer's card reader.  

3. On Specter-Desktop: Click `+ Add new device` > `Choose files`:  
![](/assets/img/setup-coldcard-specter-scan.jpg){:width="800px"}  

4. Give your device a name (i.e. `Coldcard`) and hit `Continue`.  
![](/assets/img/setup-coldcard-specter-scanned.jpg){:width="800px"}


{% include advanced_config.md %}
