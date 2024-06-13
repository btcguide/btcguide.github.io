---
title: How it Works
no_advanced_link: true
---

This guide walks you through the creation of a multisig "wallet" with a recommended 2-of-3 quorum. The below outline pertains to this recommended 2-of-3 setup. One of the wallets is a "paper wallet," and only used as a "watch only" wallet and for emergency backup.

Functionally, once your multisig is set up, you will need access to 2 of the 3 wallets (the two hardware wallets) in order to spend funds through the coordination software (here we recommend Specter Desktop) that orchestrates the multisig setup. You will not need any of the hardware wallets to _receive_ funds, as Specter keeps the extended public keys (xpubs) associated with each wallet, allowing it to generate unique receive addresses without the ability to send funds unilaterally.

The receive flow does not require the presence of any hardware device apart from the computer running Specter Desktop, and because the _private keys_ are only on the hardware device, loss or theft of the computer would only compromise the privacy of your receive addresses -- not give the ability to send your coins.

Sending coins, instead, requires signing by 2 of the 3 devices in the quorum -- the two "hardware" wallets, at least so long as the paper wallet remains on paper.

The spending flow works as follows. You will:

1. Use Specter to generate an unsigned send transaction (including amount, fees, and potential change address).
1. Partially sign the transaction with one of your hardware devices, exporting the partially-signed transaction using a QR code or microSD card.
1. Finish signing with the other hardware wallet.
1. Broadcast ("send") the now fully signed transaction using Specter Desktop.

Once you have generated your three "devices" (including the paper wallet), be sure to store them in separate secure locations. Because one device/seed phrase is insufficient to spend the funds, you might give a copy of the backup keys (for example, the "paper wallet") to a friend or family member for safekeeping. If you don't intend to spend money from your cold storage regularly, you could also store one of the hardware devices in a safe deposit box at a local financial institution.

{% include next_steps.md next_url="/quorum" next_name="Pick Quorum" %}
