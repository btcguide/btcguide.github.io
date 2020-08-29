---
title: Coordinate Multisig
---

Now that we have all your public key information in Specter-Desktop, we need to create your `2-of-3` multisig wallet.
We tell Specter-Desktop and each hardware wallet that these are your 3 public keys and that any 2 of them is sufficient to sign a transaction.

#### Setup Specter Desktop

**FIXME: add images**


1. On Specter Desktop, select `+ Add new wallet` > `Multisignature wallet` 
![](/assets/img/coordinate-multisig-specter-desktop-add-wallet.png){:width="800px"}

2. Give a name to your wallet (i.e. `Redundant Multisig`), choose `Segwit`, `2-of-3` and select your `Cobo`, `Coldcard` and `Paper Wallet` as your 3 cosigners.  
![](/assets/img/coordinate-multisig-specter-desktop-quorum.png){:width="800px"}

3. Select your keys. If you've followed the default steps, you'll just select all 3 of them.  
![](/assets/img/coordinate-multisig-specter-desktop-quorum.png){:width="800px"}

4. See your first bitcoin address! We'll learn how to trustlessly verify these in the [Verify Receive Address section](/verify-receive-address/).  
![](/assets/img/verify-address-specter-desktop.png){:width="800px"}

#### Setup Cobo Vault
1. On Specter Desktop, select your wallet name `Redundant Multisig` > `Settings` > `Show Cobo QR Code`:  
![](/assets/img/coordinate-multisig-specter-desktop-export-cobo.png){:width="800px"}

2. On your Cobo Vault...

**FIXME: continue from here**


#### Setup Coldcard
1. On Specter Desktop, select your wallet name `Redundant Multisig` > `Settings` > `Download Coldcard File`:  
![](/assets/img/coordinate-multisig-specter-desktop-export-coldcard.png){:width="800px"}

2. Save this file and put in on your micro SD card.  

3. On your Coldcard, enter: `Settings` > `Multisig Wallets` > `Create Airgapped`  
![](/assets/img/coordinate-multisig-coldcard-create-airgapped.png){:width="800px"}

**FIXME: continue from here**

{% include advanced_config.md %}
