---
title: Setup Coldcard
---

## Verify Coldcard Authenticity

The Coldcard will come in a bag with a letter or barcode under the number (e.g. `C0008091`) - when you first start up the device, confirm that it displays this number.
See Matt Odell’s Coldcard video from approx 3 mins in [here](https://www.youtube.com/watch?v=sM2uhyROpAQt=180).

## Improve Coldcard Airgap

#### Power Source
Instead of connecting the Coldcard to your laptop for power:
* Use a portable battery pack (best)
* Use a wall outlet
* Use a [charge-only (no-data) USB cable](https://www.amazon.com/PortaPow-Specialised-3-3ft-20AWG-Charge/dp/B00RQ5AZ6Q)
or a
[USB condom](https://www.amazon.com/PortaPow-3rd-Gen-Data-Blocker/dp/B00QRRZ2QM) on an existing cable
on a regular micro-USB cable.

#### Use A Dedicated Device for Address Exploration
[Coldcard doesn't currently support address exploration with an airgap](https://github.com/Coldcard/firmware/pull/25).
In order to verify a receive address on a coldcard you must significantly weaken your airgap and plug the Coldcard into your laptop via USB port.

For more mitigations see [Coldcard Advanced Address Verification](/verify-receive-address/coldcard-advanced).

#### SD Card Interactivity
Each time your SD card travels back and forth between your computer and coldcard introduces the possibility of malware jumping your "airgap."
Expert users can figure out how to create a multisig wallet on their coldcard with only 1 file from their hot machine (no need to first export the public key information from the coldcard).
TODO: file github issue on Specter-Desktop to build this into the UI and link to it here.

## Additional Entropy
Add additional entropy during new wallet creation using a casino die by pressing ‘4’ as demonstrated [here](https://www.youtube.com/watch?v=sM2uhyROpAQt=681) by Matt Odell. 

## Not Perfect
No device is perfect and this one is no exception.
Read more about known issues with Coldcard [here](/known-issues/hardware/coldcard).
