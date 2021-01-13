---
title: Setup Coldcard
---

## Verify Coldcard Authenticity

The Coldcard will come in a bag with a letter or barcode under the number (e.g. `C0008091`) - when you first start up the device, confirm that it displays this number.
See Matt Odell's Coldcard video from approx 3 mins in [here](https://www.youtube.com/watch?v=sM2uhyROpAQt=180).

## Additional Entropy on Seed Generation

#### Easy: Minimize Trust
You can add additional entropy during new wallet creation using a casino die by pressing ‘4’ as demonstrated [here](https://www.youtube.com/watch?v=sM2uhyROpAQt=681) by Matt Odell.
You can do the full 256 bits of entropy with 99 rolls, or you can do just a few rolls and add some entropy at least to trust-minimize your seed generation.
This step is very good at protecting you from a compromised random number generator implementation in your Coldcard, but if your Coldcard was compromised in the first place this step may not protect you.

#### Hard: Don't Trust, Verify
If you don't trust Coldcard to generate your seed at all, you can create your own seed with dice from scratch by following [the instructions on the Coldcard website](https://coldcardwallet.com/docs/verifying-dice-roll-math).
You can see a demo video [here](https://www.youtube.com/watch?v=Rc29d9m92xg).
Note that the whole benefit of this option (vs the previous one) is that you actually have to **verify** that your seed rolls are being used to create this seed, which is not trivial (see demo video [here](https://www.youtube.com/watch?v=GxdUCoELUu0)). 

## Improve Coldcard Airgap

#### Power Source
Instead of connecting the Coldcard to your laptop for power:

* Use a portable battery pack (best)
* Use a wall outlet
* Use a [charge-only (no-data) USB cable](https://www.amazon.com/PortaPow-Specialised-3-3ft-20AWG-Charge/dp/B00RQ5AZ6Q) or a  [USB condom](https://www.amazon.com/PortaPow-3rd-Gen-Data-Blocker/dp/B00QRRZ2QM) on an existing cable on a regular micro-USB cable.

#### Use A Dedicated Device for Address Exploration
[Coldcard doesn't currently support address exploration with an airgap](https://github.com/Coldcard/firmware/pull/25).
In order to verify a receive address on a coldcard you must significantly weaken your airgap and plug the Coldcard into your laptop via USB port.

For more mitigations see [Coldcard Advanced Address Verification](/verify-receive-address/coldcard-advanced).

#### SD Card Interactivity
Each time your SD card travels back and forth between your computer and coldcard introduces the possibility of malware jumping your "airgap."
Expert users can figure out how to create a multisig wallet on their coldcard with only 1 file from their hot machine (no need to first export the public key information from the coldcard).

## Not Perfect
No device is perfect and this one is no exception.
Read more about known issues with Coldcard [here](/known-issues/hardware/coldcard).
