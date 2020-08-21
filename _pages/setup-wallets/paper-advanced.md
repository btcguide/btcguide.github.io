---
title: Setup Paper Wallet - Advanced Instructions
---

## Use a Clean Machine
If there were malware on your machine and this seed escaped, it would **signficantly** degrade the security of your multisig scheme.
Assuming your attacker has 1 of your 2-of-3 needed keys, then you effectively now have a 1-of-2 scheme.

#### Option A (Preferred): Tails Operating System
For our one-time offline key generation, it is preferable to use a live operating system that doesn't store data on the filesystem.
[Tails](https://tails.boum.org/) is a live OS that is designed to wipe itself completely on shutdown.

Follow [these installation instructions](https://tails.boum.org/install/index.en.html) to install Tails for offline use.
Then perform the regular steps using that machine.
Expert users will remove the hard drive from the machine and then destroy it when complete.

## Improve Seed Generation

#### Put Each Word Back in the Hat Between Draws
BIP39 allows for a word to be repeated in your seed phrase (if it should happen to be randomly drawn multiple times).
23 words when performed correctly has 253 bits of entropy.
THis is so massive that a slight reduction in the keyspace is immaterial, but it is the best practice.
TODO: add accurate calcuation of entropy without potential to repeat words.

#### Add a Strong Passphrase to Your Seed
Caution: you now have to come up with a way to protect this passphrase, and if you lose it your seed is worthless.
Because this step is for **very** advanced users, we're going to ignore it for now.


## Verify Seed Generation

#### Confirm Seed Matches Zpub/Root Fingerprint on Another Machine
This is important, in case the software you used was actually malware.

TODO: add instructions

## Use DVD-R Instead of USB Drives
DVDs are less able to execute malware on your computer.
