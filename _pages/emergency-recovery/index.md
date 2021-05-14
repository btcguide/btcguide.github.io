---
title: Emergency Recovery
---

By default, you sign your `2-of-3` transactions on your `2` hardware wallets (Cobo Vault and Coldcard) that [you previously configured](/setup-wallets/).
If one device is damaged/destroyed/lost, that means that you still have the other 1 good hardware wallet to sign with, and you still have 2 other seeds backed up (1. the destroyed wallet's [backup seed](/backup-wallet/seeds), and 2. your 3rd seed which is on the [paper wallet](/setup-wallets/paper)) to choose from to spend your coins.

In addition, this page might be useful if you want to test that you are able to successfully sign a transaction with your 3rd seed from the paper wallet, before you deposit any significant funds into the multisig wallet. That way you can be sure that all 3 seeds do in fact work. Its always a good idea to test your backups.

You have multiple options here. 

#### Option A - Replace the damaged/destroyed/lost hardware wallet
You should replace it with a new one and load the replacement device with the same seed phrase that [you previously backed up](/backup-wallet/seeds).
This means that if seed phrase A was on your Cobo Vault and your Cobo Vault was destroyed in a fire, you would do the following:

1. Buy a new Cobo Vault.
1. Find the backup of seed phrase A that [you previously made](/backup-wallet/seeds).
1. Load seed phrase A onto your new (replacement) Cobo Vault.
1. Follow [the previous hardware wallet setup steps](/setup-wallets/) to add the new device into your multisig.

However, if for any reason that doesn't work (perhaps devices are sold out or the company has gone out of business), you can load that BIP39 seed onto another device...

#### Option B - Trezor
You should be aware that this is a little more complicated than hardware wallets you setup previously, and there are some pitfalls to avoid (see [known issues](/known-issues/hardware/trezor)).

On the Trezor, you can load either the lost hardware wallet's backup seed, OR you can load the 3rd seed from your paper wallet. (You could obviously also use the 3rd paper wallet seed into the replacement device in Option A, but its not recommended, so that you can keep the consistency between the device and its original seed. That way you don't confuse yourself when interacting with Specter.)

TODO: add explanation/screenshots.

#### Option C - Electrum
Electrum is an open-source software wallet that is free and readily available, but difficult to use with multisig.
**As it will be touching private key material, we strongly recommend you run this on an airgapped machine** (see [advanced section](advanced)).

TODO: add screenshots.

1. Download and install Electrum from [electrum.org](https://electrum.org/).
1. Create a new multisignature wallet using the wizard, and select "2 of 3" as your quorum.
1. Using your Specter-Desktop wallet backup file, identify your `zpub`s from the JSON/PDF file.
1. For the first two keys (Coldcard and Cobo), import the `zpub` master public keys into the Electrum multisignature wizard as keys in the multisignature quorum, ensuring the pathway matches the one Specter-Desktop wallet used e.g. `m/48'/0'/0'/2'`.
Electrum will display these as `xpub` master keys.
1. For the seedpicker paper wallet, select private keys, and Electrum will present a box to type in your seedpicker seed.
Ensure you use the drop-down menu to select that this is a BIP39 seed or otherwise Electrum will not correctly recognise and recover this seed.
Notice from this point, you should now consider this private key as 'hot' assuming your Electrum machine is online.
1. You can generate a PSBT (Partially Signed Bitcoin Transaction) from Specter-Desktop, sign it with one of your keys from the remaining good hardware wallet (e.g. the Coldcard or Cobo), and then load that PSBT into Electrum via `Tools` > `Load from file`.
If correctly imported, Electrum will then detect that this transaction has been signed by 1 of 2 required signatures, and present you the opportunity to sign it with the seedpicker paper wallet key. 
1. You can then save this PSBT file and broadcast it via Specter-Desktop. 

The instructions above show how to load the 3rd seed from the paper wallet into Electrum so that you can sign with the 3rd key. But similar to the other options, you could alternatively load the good hardware wallet's `zpub` and the *paper wallet's* `zpub` in Step 4 above, and the backup *hardware wallet's* seed in Step 5 above.

{% include next_steps.md %}
