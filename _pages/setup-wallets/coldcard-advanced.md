---
title: Setup Coldcard
---

## Verify Coldcard Authenticity

The Coldcard will come in a bag with a letter or barcode under the number (e.g. `C0008091`). When you first start up the device, confirm that the device displays this number.
See what this verification looks like in [Matt Odell's Coldcard video](https://www.youtube.com/watch?v=sM2uhyROpAQt=180) (the relevant section is ~3 mins in, in case the link doesn't take you there).

## Additional Entropy on Seed Generation

#### Easy: Minimize Trust
You can add additional entropy during new wallet creation using a casino die by pressing ‘4’ as demonstrated in [Matt Odell's Coldcard video](https://www.youtube.com/watch?v=sM2uhyROpAQt=681) (at timestamp ~11:25).
You can do the full 256 bits of entropy with 99 rolls, or you can do just a few rolls and add some entropy at least to trust-minimize your seed generation.
This step is very good at protecting you from a compromised random-number generator implementation in your Coldcard, but if your Coldcard was compromised in the first place this step may not protect you.

#### Hard: Don't Trust, Verify
If you don't trust Coldcard to generate your seed at all, you can create your own seed with dice from scratch by following [the instructions on the Coldcard website](https://coldcardwallet.com/docs/verifying-dice-roll-math).
You can see a demo video [here](https://www.youtube.com/watch?v=Rc29d9m92xg).
Note that the whole benefit of this option (vs the previous one) is that you actually have to **verify** that your seed rolls are being used to create this seed, which is not trivial (see demo video [here](https://www.youtube.com/watch?v=GxdUCoELUu0)). 

## Improve Coldcard Airgap

#### Power Source
If the only available power source is a computer or a [possibly compromised charging port](https://en.wikipedia.org/wiki/Juice_jacking), using a [charge-only (no-data) USB cable](https://www.amazon.com/PortaPow-Specialised-3-3ft-20AWG-Charge/dp/B00RQ5AZ6Q) or a [USB condom](https://www.amazon.com/PortaPow-3rd-Gen-Data-Blocker/dp/B00QRRZ2QM) on a regular USB cable can help mitigate the risk of weakening the airgap.

#### SD Card Interactivity
Each time an SD card is taken from your computer to your Coldcard it can theoretically introduce malware onto the Coldcard (a failure where the malware is said to have "jumped your airgap").
Expert users can figure out how to create a multisig wallet on their Coldcard with only 1 file from their hot machine (no need to first export the public key information from the Coldcard).

## Not Perfect
No device is perfect and this one is no exception.
Read more about known issues with Coldcard [here](/known-issues/hardware/coldcard).


{% include next_steps.md next_url="coordinate-multisig" next_name="Coordinate Multisig" %}
