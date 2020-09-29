---
title: Setup Coldcard
---

## Update Your Firmware
Follow the steps on Coldcard's website:  
[https://coldcardwallet.com/docs/upgrade](https://coldcardwallet.com/docs/upgrade).

## Setup Wallet
TODO: add instructions for generating seed, setting PIN, etc

## Export Public Key Info to Computer via MicroSD
1. Insert a microSD into Coldcard and then select: `Settings` > `Multisig Wallets` > `Export XPUB`.  
![](/assets/img/setup-coldcard-export-pubkey.jpg){:width="800px"}

2. Remove the microSD card from your Coldcard and put it in your computer's card reader.  

3. On Specter-Desktop: Click `+ Add new device` > `Choose files`:  
![](/assets/img/setup-coldcard-specter-scan.jpg){:width="800px"}  

4. Give your device a name (i.e. `Coldcard`) and hit `Continue`.  
![](/assets/img/setup-coldcard-specter-scanned.jpg){:width="800px"}

{% include next_steps.md next_url="coordinate-multisig" next_name="Coordinate Multisig" %}
