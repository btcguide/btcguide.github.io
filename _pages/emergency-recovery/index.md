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

TODO: add screenshots.

How to Recover Your Paper Wallet Using a Trezor One
In this example, you will use a Trezor One.  If it is brand new, will load your wallet seed into the wallet. If it is already been used, you will need to wipe the device. You will also need a microUSB cable.  This is not air-gapped, but recall that this is meant to be used in an emergency. Trezor also describes the  recovery process https://wiki.trezor.io/User_manual:Advanced_recovery.  
Step 1) Download and install Trezor Bridge. https://wiki.trezor.io/Trezor_Bridge  This has privacy concerns, see known issues. Alternatively, you can use this method.



Step 2)
Navigate to https://trezor.io/start/





In this example you will select the trezor ONE.  You will restore the following seed you generated here.
zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo buddy

You previously entered this wallet into our Specter Desktop using a USB or DVD:

{
    "xfp": "669dce62",
    "p2wsh": "Zpub74sb5KB3Ak1RwabGr8SHQnMTkd2mC3boVDgPf1jBFNxcXh7Nx4KV3XakPDtWLN5RpszdM7qcBN4wm7xreh8Ys2xYUBqQ9GtkTN8h5kRVecc",
    "p2wsh_deriv": "m/48'/0'/0'/2'"
}

If you recall, you entered this wallet as “other”. To use the Trezor, you will change it to Trezor. You may also need to restart Specter Desktop to get this to work.  This way you can use the Trezor device to sign our transaction.




Note: When you recover the wallet on the Trezor website, you will see the BIP 49 derivation path, but don’t worry, Specter Desktop will add the correct derivation.

Step 3) Plug your Trezor into your computer.

4. Click your device. It will tell you to inspect the package for tampering. Do all of that and click “continue to wallet.” If you are using a new device, skip to step 5. If you have used this wallet before, it will tell you to enter your pin. If it does, close that window because you are going to recover your seedpicker.net seed. You also want to make sure you send any funds you control with this wallet to another address before proceeding.

Click wipe device
Confirm you want to wipe your device. I am assuming there are no funds on this wallet.
Confirm the wipe on your device.
Wipe is completed, disconnect your device.
Plug it back in:

5. Click “Recover an existing wallet”. You are recovering 24 words, and you want to used advanced recovery because you NEVER TYPE OUR SEED WORDS INTO YOUB BROWSERS. You also did not use a passphrase with our seed picker wallet, so you will leave that unchecked. Click Continue. Agree to the terms of service in your device.

7. To enter our seed into the device, you will navigate the scrambled BIP39 wordlist on our Trezor.  In this example I will enter “zoo” 23 times and “buddy” one time. The screen says, “Select letters for the 1st word” with 9 squares with dots bellow it. Each square with a dot in the middle represents one of the 9 digits on your keypad.  The top row represents 7, 8, and 9.  The middle row represents 4,5, and 6.  The bottom row represents 1, 2, and 3 on your keypad.

Our device also says, “Please enter the 1st word of you mnemonic” and it gives us groups of scrambled letters.  These letters correspond with the 9 keys on our number pad.  In this example:
A-B = 7
S = 8
D-E =9
P-R = 4
C = 5
H-L = 6
T-Z = 1
M-O = 2
F-G = 3

Since our first word is “zoo” we will press the 1 key. You can also use the mouse to click button on the lower left-hand corner of the screen.

Now you have the following options
V = 7
WR-WH = 8
TH-TI = 9
TO = 4
TA-TE = 5
WI – Z = 6
TU-TY = 1
TR = 2
U = 3
We will press six, since “zoo is in the WI -Z category.

WR = 7
WIN-T = 8
WOL-O = 9
Z =4
WOR  = 5
WIR-T= 6
WIN-K = 1
WID-L = 2
Y = 3

We will choose 4
You only have six options left

7 = zone
8 = zero
4 = -
5 = zebra
1 =  zoo
2 = -

We choose 1 for “zoo”
Or first word was entered.

All 24 words are entered this way. With each new word, the there is a different scramble. If you tried to do this at home, you would need to press different numbers to get the same word.  Once you enter all 24 words. You paper Emergency backup wallet is now imported into the Trezor and ready to sign transactions.  After you type the 24th word, you restore your wallet. You can set a PIN, and use the device to sign the transaction over USB.

You have now entered your seedpicker wallet seed into the Trezor One.

7. You don’t need to do anything else with the Trezor in order to sign your transaction, but you might want to create a PIN in anyway.

The PIN is also scrambled. By now, you should be familiar with this process: In this example, if you want our PIN to be 1234, you will actually type something like 7845 on the keypad.

To re-enter it you will type 4237, but you will probably want something a little more random then this PIN.

You can name your device if you want to, but you are going to skip this step.  You are ready to sign a transaction with our device.


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

#### Option C BlueWallet
1. TODO Add screen shots and a video
2.
3. Blue Wallet is an open-source wallet available on the App Store, Google Play, APK and Desktop for macOS. It is free, readily available and easy to use. **As it will be touching private key material, we strongly recommend you run this on an airgapped machine. An old phone on Airplane Mode oworks well for this**
4.
5. 1. Download Blue Wallet from the Appstore, Google Play or the [bluewallet.io](https://bluewallet.io/).
6. 2. Create a new Vault using the add a wallet button. Press Add Wallet.
7. 3. Select Vault Best Security for large amounts
8. 4. press Import wallet below the Create button
9. 5. Press Scan or import a file
10. 6. On Specter Desktop wallets navigate to your multi-signature wallet.
11. 7. Navigate to Settings > Export Wallet > Under Export To Device press the Show code QR Code.
12. 8. Scan this QR Code with the Blue Wallet app on your cellphone.
13. 9. Press the Manage Keys button
14. 10. Find the Vault Key number you are importing by comparing the xpubs to your devices. The easiest way to do this is cross check the last 5 characters of the vault key on the app and the Specter Backup PDF
15. 11. Press I have a seed for this keys.
16. 12. To keep the air-gap of your emergency recovery wallet, put this phone on airplane mode. Enter your 24 seed words
17. 13. You can now use this device as a hardware wallet with your Paper Emergency Wallet Key.
