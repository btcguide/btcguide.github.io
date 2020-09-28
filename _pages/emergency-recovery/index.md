---
title: Emergency Recovery
---

By default, you will sign your `2-of-3` transactions on your `2` hardware wallets (Cobo Vault and Coldcard).
If either device is lost or destroyed, you should replace it with a new one and load the corresponding seed backup (from the [Setup Paper Wallet step earlier](/setup-wallets/paper)) onto the replacement device.

However, if for any reason that doesn't work (perhaps there is a bug in their software or a device is no longer available for sale), you can load that BIP39 seed onto another device.

Electrum Recovery Guide (Advanced)
It is possible to recover your 3rd key into Electrum Wallet, however this method is not intuitive. High level steps are:

1. Download and install Electrum from Electrum.org
2. Create a new wallet using the wizard, and select 2 of 3 multi signature wallet
3. Using your Specter wallet backup file, identify your `zpub`s from the JSON file
4. For the first two keys (Coldcard and Cobo), import the `zpub` master public keys into the Electrum multi signature wizard as keys in the multi signature quorum, ensuring the pathway matches the one Specter wallet used e.g. `m/48'/0'/0'/2'` - Electrum will display these as `xpub` master keys. 
5. For the seedpicker paper wallet, select private keys, and Electrum will present a box to type in your seedpicker seed. Ensure you use the drop-down menu to select that this is a BIP39 seed or otherwise Electrum will not correctly recognise and recover this seed. Notice from this point, you should now consider this private key as 'hot' assuming your Electrum machine is online. 
6. You can generate a PSBT partially signed bitcoin transaction from Specter, sign it with one of your keys (e.g. the Coldcard or Cobo), and then load that PSBT into your Electrum under the 'Tools'-'Load from file' function. If correctly imported, Electrum will then detect that this transaction has been signed by 1 of 2 required signatures, and present you the opportunity to sign it with the seedpicker paper wallet key. 
7. You can then Save this PSBT file and broadcast it from your Specter Wallet to broadcast the transaction. 

 
{% include next_steps.md %}
