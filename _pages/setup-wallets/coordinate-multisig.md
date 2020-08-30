---
title: Coordinate Multisig
---

Now that we have all your public key information in Specter-Desktop, we need to create your `2-of-3` multisig wallet.
We tell Specter-Desktop and each hardware wallet that these are your 3 public keys and that any 2 of them is sufficient to sign a transaction.
This is a one-time setup that you'll never need to repeat.

## Setup Specter Desktop

1. On Specter Desktop, select `+ Add new wallet` > `Multisignature wallet` 
![](/assets/img/coordinate-multisig-specter-desktop-add-wallet.png){:width="800px"}

2. Give a name to your wallet (i.e. `Redundant Multisig`), choose `Segwit` (default), `2-of-3` (dfeault) and select your 3 cosigners: `Cobo`, `Coldcard` and `Paper Wallet`  
![](/assets/img/coordinate-multisig-specter-desktop-quorum.png){:width="800px"}

3. Select your public keys. If you've followed the default steps, you'll just select all 3 of them.  
![](/assets/img/coordinate-multisig-specter-desktop-keys.png){:width="800px"}

4. See your first bitcoin address!:   
![](/assets/img/verify-address-specter-desktop.png){:width="800px"}  
(we'll learn how to trustlessly verify addresses in the [Verify Receive Address section](/verify-receive-address/))

## Setup Cobo Vault
1. On Specter Desktop, select your wallet (`Redundant Multisig`) > `Settings` > `Show Cobo QR Code`:  
![](/assets/img/coordinate-multisig-specter-desktop-export-cobo.png){:width="800px"}  
Which will generate a popup like this:  
![](/assets/img/coordinate-multisig-specter-desktop-export-cobo-qr.png){:width="400px"}

2. Scan the QR code on your Cobo Vault:  
![](/assets/img/coordinate-multisig-specter-desktop-import-cobo-qr.png){:width="800px"}

3. View wallet information and confirm:    
![](/assets/img/coordinate-multisig-specter-desktop-cobo-imported.jpeg){:width="400px"}
![](/assets/img/coordinate-multisig-view-policy-onsetup-cobo.jpeg){:width="400px"}

## Setup Coldcard
1. On Specter Desktop, select your wallet (`Redundant Multisig`) > `Settings` > `Download Coldcard File`:  
![](/assets/img/coordinate-multisig-specter-desktop-export-coldcard.png){:width="800px"}

2. Save this file to your microSD card and put the microSD card in your Coldcard.  

3. On your Coldcard, enter: `Settings` > `Multisig Wallets` > `Import from SD`  
![](/assets/img/coordinate-multisig-coldcard-create-airgapped.png){:width="800px"}  
(select the file and press √)

{% include advanced_config.md %}
