---
title: Send Bitcoin
---

In order to send bitcoin, you will need to sign on `2-of-3` of your hardware wallets.

At this point, you should've completed all the previous sections.
Once you've [verified your receive addresses](/verify-receive-address) and [backed up your wallet](/backup-wallet), it's safe to receive bitcoin.

Now we'll go over how to spend some of them.

1. On Specter-Desktop: Your Multisig Wallet (e.g. `Redundant Multisig`) > `Send` > `New`. Fill out the transaction info and hit `Create unsigned transaction`:  
![](/assets/img/send-bitcoin-specter-create-skeleton.png){:width="85%" class="border_image"} 

1. The transaction will now exist in an unsigned state.
Click `Open` so you can sign it with your hardware wallets (Keystone (formerly Cobo Vault) and Coldcard):  
![](/assets/img/send-bitcoin-specter-unsigned-skeleton.png){:width="85%" class="border_image"}

1. Select Keystone to sign with first (order doesn't strictly matter):  
![](/assets/img/send-bitcoin-specter-open-skeleton-keystone.png){:width="85%" class="border_image"}
   
1. Sign via QR code (best airgap & UX):
![](/assets/img/send-bitcoin-specter-sign-keystone.png){:width="35%" class="border_image"}

1. On Keystone: `Menu` > `Multisig Wallet` > scanner icon (in the top right) and scan the QR code that Specter-Desktop is displaying.  
![](/assets/img/send-bitcoin-keystone-scan-icon.png){:width="35%" class="border_image"}

1. On Keystone: sign the transaction.  
![](/assets/img/send-bitcoin-keystone-scan-transaction.png){:width="35%" class="border_image"}
   
1. On Specter-Desktop: `Scan signed transaction` and hold up Keystone to your computer's QR code scanner:
![](/assets/img/send-bitcoin-specter-keystone-scan.png){:width="35%" class="border_image"}
![](/assets/img/send-bitcoin-specter-keystone-qr.png){:width="35%" class="border_image"}
   
1. Select Coldcard to sign with second (order doesn't strictly matter):  
![](/assets/img/send-bitcoin-specter-open-skeleton-coldcard.png){:width="85%" class="border_image"}

1. Select USB and pick which USB device to do the signing:  
![](/assets/img/send-bitcoin-coldcard-sign-type.png){:width="35%" class="border_image"}

1. On Coldcard: confirm transaction:  
![](/assets/img/send-bitcoin-coldcard-device-confirmation.png){:width="35%" class="border_image"}
(this warning has to do with the high transaction fee for this test transaction and is safe to ignore)

1. Broadcast the signed transaction:  
![](/assets/img/send-bitcoin-specter-broadcast.png){:width="85%" class="border_image"}



{% include next_steps.md next_url="/emergency-recovery" next_name="Emergency Recovery" %}
