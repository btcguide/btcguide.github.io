---
title: Verify Receive Address on Coldcard
---

## Warning
[Coldcard doesn't currently support address exploration with an airgap](https://github.com/Coldcard/firmware/pull/25).
In order to verify a receive address on a coldcard you must significantly weaken your airgap and plug the Coldcard into your laptop via USB port.

#### Mitigation A: Eternally Quarantined Coldcard Machine
You can connect your coldcard to an eternally quarantined watch-only machine that is only used to confirm address generation.

TODO: more on this.

#### Mitigation B: Eternally Quarantined Machine/File - No Coldcard
See [address verification advanced section](advanced#redundant_address_verification)
