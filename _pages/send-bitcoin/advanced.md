---
title: Send Bitcoin
---

#### Complexity of Multisig Here
Besides needing multiple signatures, multisig also involves complexity in that your change addresses are `m-of-n` as well.

Fortunately, your wallet software will abstract this away for you.

[TODO]: add link with more details explaining this.

#### Sign on Coldcard via SD Card
SD Card is a better airgap, and preferable over signing through USB.

1. On the previous page, at Step 9, choose "Sign with SD Card file" instead of choosing "Sign with USB"
1. Click Save transaction, and save to your SD card
1. Eject the SD card from computer, and load into Coldcard
1. Click "Ready to sign" on Coldcard and confirm transaction details
1. Coldcard will save the signed transaction back to the SD card, but with the `-part` suffix at the end of the filename
1. Back in Specter, click "Load transaction from file", and choose the file on the SD card with the `part` suffix
1. Broadcast 


#### Inspect Signed Transactions Before Broadcasting
TODO: add instructions

{% include next_steps.md next_url="/emergency-recovery" next_name="Emergency Recovery" %}
