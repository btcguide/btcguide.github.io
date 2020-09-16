---
title: Verify Receive Address on Coldcard
---

## Warning
[Coldcard doesn't currently support address exploration with an airgap](https://github.com/Coldcard/firmware/pull/25).
In order to verify a receive address on a coldcard you must significantly weaken your airgap and plug the Coldcard into your laptop via USB port.

#### Option A: Offline Address Verification
See [receive address verification advanced section](advanced#redundant_address_verification).
This step doesn't actually use your coldcard to derive the address, it just uses the extended public key information from your coldcard.


#### Option B: Eternally Quarantine A Dedicated Computer
Similar to the previous step, you can setup an eternally-quarantined watch-only machine, but use it to connect to your coldcard to verify the receive addresses on your coldcard's display.
Eternally quarantining the machine reduces the risk that it becomes malware infected, to reduce the risk of plugging it into your coldcard.
