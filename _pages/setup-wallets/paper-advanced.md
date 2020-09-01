---
title: Setup Paper Wallet
---

## Verify Seed Generation

#### Confirm Seed Matches Zpub
This is important in case the software you used was actually malware.
We will confirm that the seed is valid, matches the expected `Zpub`, path and root fingerprint.

TODO: explain these tools:
* HumanRNG CLI Golang Script (WIP [blocked by this PR](https://github.com/btcsuite/btcutil/issues/179)): <https://github.com/mflaxman/human-rng-golang>
* HumanRNG CLI Python Script: TODO: add link

#### Write Data to CD-Rs/DVD-Rs instead of USB Drives
DVDs are less able to execute malware on your computer.
They also help keep a permanent record for debugging, as they cannot be edited during/after setup.

## Use a Clean Machine
If there were malware on your machine and this seed escaped, it would **signficantly** degrade the security of your multisig scheme.
Assuming your attacker has 1 of your `2-of-3` needed keys, then you effectively now have a `1-of-2` scheme.
Introducing the possibliity of a single point of failure would mean we're now suffering the negatives of multisig, without getting (most of) the benefits.

That is why it is essential that you
**turn off (and unplug) your internet access before performing these steps.**

#### Option A (preferred): Tails Operating System
For our one-time offline key generation, it is preferable to use a live operating system that cannot store information on the filesystem.
[Tails](https://tails.boum.org/) is a live OS that is designed to wipe itself completely on shutdown.
Conveniently, Electrum also comes pre-installed with Tails.

Follow [the official Tails installation instructions](https://tails.boum.org/install/index.en.html) to install Tails.
Then perform [the regular steps in the Setup Paper Wallet section](paper) using that machine.
Your computer will automatically wipe itself completely (including RAM) on shutdown.

If you are truly paranoid, remove the hard drive from the machine (before booting up Tails) so there is no possibility that any private key material can be written to disk.

#### Option B (less secure): Wipe Your Machine
While [Tails](https://tails.boum.org/) is preferred for self-destruction, you can get a similar effect by wiping the hard drive after generating your seed.
If you have an Ubuntu installer DVD or pen drive (see [Computer Configuration section](../computer-config)), you can use that to perform the following steps:
1. Disconnect your computer from the internet.
2. Perform [the regular steps in the Setup Paper Wallet section](paper).
3. Wipe your hard drive and re-install the operating system.
4. Reconnect the computer to the internet.

You can further enhance this with two (optional) steps:
* Before getting started, setup full disk encryption (see [Advanced Computer Configuration section](../computer-config-advanced)) with a **very** long passphrase so that any data that may have persisted on your hard drive after step 3 (above) can never be recovered.
* When wiping your hard drive, use [a secure erase program](https://askubuntu.com/questions/17640/how-can-i-securely-erase-a-hard-drive) to make sure that nothing survives.
Note that these do not work perfectly on Flash memory (SSD drives), so the previous technique is preferred.
You can read more about this [here](https://wiki.archlinux.org/index.php/Securely_wipe_disk) and [here](https://www.howtogeek.com/234683/why-you-cant-securely-delete-a-file-and-what-to-do-instead/).

## Improve Seed Generation

#### Put Each Word Back in the Hat Between Draws
BIP39 allows for a word to be repeated in your seed phrase should it happen to be randomly drawn multiple times (very unlikely).
23 words when performed correctly has 253 bits of entropy.
This is so massive that a slight reduction in the keyspace is insignificant, but we prefer to follow standards / best practices when possible.
[TODO]: add accurate calculation of entropy without potential to repeat words.

#### Add a Strong Passphrase to Your Seed
Caution: you now have to come up with a way to backup/protect this passphrase, and if you lose it your seed is worthless.
Because this step is only for **expert** users, we're going to ignore it for now.
