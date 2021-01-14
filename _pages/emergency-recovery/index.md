---
title: Emergency Recovery
---

By default, you sign your `2-of-3` transactions on your `2` hardware wallets (Cobo Vault and Coldcard) that [you previously configured](/setup-wallets/).
If either device is damaged/destroyed, you should replace it with a new one and load the replacement device with the same seed phrase that [you previously backed up](/backup-wallet/seeds).
This means that if seed phrase A was on your Cobo Vault and your Cobo Vault was destroyed in a fire, you would do the following:

1. Buy a new Cobo Vault.
1. Find the backup of seed phrase A that [you previously made](/backup-wallet/seeds).
1. Load seed phrase A onto your new (replacement) Cobo Vault.
1. Follow [the previous hardware wallet setup steps](/setup-wallets/) to add the new device into your multisig.

---

However, if for any reason that doesn't work (perhaps devices are sold out or the company has gone out of business), you can load that BIP39 seed onto another device.

For this, we have two recommendations: Trezor (hardware wallet) and Electrum (software wallet).
Both have tradeoffs, and we hope that there will be better options in the future.
BIP39 is the gold standard supported by all major hardware wallets, so we expect it will continue to be compatible with new hardware wallets as they are developed in the future.

As there are "gotchas" in both of the below setups, we recommend you read [the advanced section](advanced) for tips to improve your setup.

#### Option A - Trezor
You should be aware that this is a little more complicated than hardware wallets you setup previously, and there are some pitfalls to avoid (see [known issues](/known-issues/hardware/trezor)).

TODO: add explanation/screenshots.

#### Option B - Electrum
Electrum is an open-source software wallet that is free and readily available, but difficult to use with multisig.
**As it will be touching private key material, we strongly recommend you run this on an airgapped machine** (see [advanced section](advanced)).

TODO: add screenshots.

1. Download and install Electrum from [electrum.org](https://electrum.org/).
1. Create a new multisignature wallet using the wizard, and select "2 of 3" as your quorum.
1. Using your Specter-Desktop wallet backup file, identify your `zpub`s from the JSON file.
1. For the first two keys (Coldcard and Cobo), import the `zpub` master public keys into the Electrum multisignature wizard as keys in the multisignature quorum, ensuring the pathway matches the one Specter-Desktop wallet used e.g. `m/48'/0'/0'/2'`.
Electrum will display these as `xpub` master keys.
1. For the seedpicker paper wallet, select private keys, and Electrum will present a box to type in your seedpicker seed.
Ensure you use the drop-down menu to select that this is a BIP39 seed or otherwise Electrum will not correctly recognise and recover this seed.
Notice from this point, you should now consider this private key as 'hot' assuming your Electrum machine is online.
1. You can generate a PSBT (Partially Signed Bitcoin Transaction) from Specter-Desktop, sign it with one of your keys (e.g. the Coldcard or Cobo), and then load that PSBT into Electrum via `Tools` > `Load from file`.
If correctly imported, Electrum will then detect that this transaction has been signed by 1 of 2 required signatures, and present you the opportunity to sign it with the seedpicker paper wallet key. 
1. You can then save this PSBT file and broadcast it via Specter-Desktop. 

{% include next_steps.md %}
