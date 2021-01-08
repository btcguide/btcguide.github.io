---
title: Verify Receive Address on Coldcard 
---

## Warning
[Coldcard doesn't currently support address exploration with an airgap](https://github.com/Coldcard/firmware/pull/25).
In order to verify a receive address on a coldcard you must significantly weaken your airgap and plug the Coldcard into your laptop via USB port.
We hope that Coldcard will add functionality similar to Cobo vault soon.
See [advanced section](coldcard-advanced) for mitigations.

## Verify via USB
1. On Specter-Desktop: `Your Wallet` > `Receive` > `Display address on device`:  
![](/assets/img/verify-receive-address-specter-desktop-coldcard.png){:width="70%" class="border_image"} 

1. Verify address on your Coldcard:  
![](/assets/img/verify-receive-address-coldcard.jpeg){:width="35%" class="border_image"} 

{% include next_steps.md next_url="/backup-wallet" next_name="Backup Wallet" %}
