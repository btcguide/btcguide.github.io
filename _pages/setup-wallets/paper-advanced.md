---
title: Setup Paper Wallet
---

## Use a Clean Machine
If there were malware on your machine and this seed escaped, it would **significantly** degrade the security of your multisig scheme.
Assuming your attacker has 1 of your `2-of-3` needed keys, then you effectively now have a `1-of-2` scheme.
Introducing the possibility of a single point of failure would mean we're now suffering [the negatives of multisig](/known-issues/multisig), without getting (most of) the benefits.

That is why it is essential that you
**turn off (and unplug) your internet access before performing these steps.**

#### Option A (preferred): Tails Operating System
For our one-time offline key generation, it is preferable to use a live operating system that cannot store information on the file system.
[Tails](https://tails.boum.org/) is a live OS that is designed to wipe itself completely on shutdown.
Conveniently, Electrum also comes pre-installed with Tails.

Follow [the official Tails installation instructions](https://tails.boum.org/install/index.en.html) to install Tails.
Then perform [the regular steps in the Setup Paper Wallet section](./paper) using that machine.
Your computer will automatically wipe itself completely (including RAM) on shutdown.

If you are truly paranoid, remove the hard drive from the machine (before booting up Tails) so there is no possibility that any private key material can be written to disk.

#### Option B (less secure): Wipe Your Machine
While [Tails](https://tails.boum.org/) is preferred for self-destruction, you can get a similar effect by wiping the hard drive after generating your seed.
If you have an Ubuntu installer DVD or pen drive (see [Computer Configuration section](../setup-computer/computer)), you can use that to perform the following steps:
1. Disconnect your computer from the internet.
1. Perform [the regular steps in the Setup Paper Wallet section](./paper).
1. Wipe your hard drive and re-install the operating system.
1. Reconnect the computer to the internet.

You can further enhance this with two (optional) steps:
* Before getting started, setup full disk encryption (see [Advanced Computer Configuration section](../setup-computer/computer-advanced)) with a **very** long passphrase so that any data that may have persisted on your hard drive after step 3 (above) can never be recovered.
* When wiping your hard drive, use [a secure erase program](https://askubuntu.com/questions/17640/how-can-i-securely-erase-a-hard-drive) to make sure that nothing survives.
Note that these do not work perfectly on Flash memory (SSD drives), so the previous technique is preferred.
You can read more about this [here](https://wiki.archlinux.org/index.php/Securely_wipe_disk) and [here](https://www.howtogeek.com/234683/why-you-cant-securely-delete-a-file-and-what-to-do-instead/).

## Verify Seed Generation

#### Confirm Seed Matches Zpub
This is important in case SeedPicker was actually replaced by malware trying to steal your bitcoin!
We will confirm that the seed is valid, matches the expected `root fingerprint` and `Zpub` (for that `path`).

This step is unfortunately complicated, as SeedPicker (see [basic section](./paper)) is the only GUI software that currently exists to make it easier.
**Only advanced users who are comfortable with the command line should continue.**

##### Use HumanRNG Electrum Script
<https://github.com/mflaxman/human-rng-electrum>

TODO: add instructions.

![](/assets/img/setup-paper-calculate-seed.png){:width="70%" class="border_image"}

##### Use a Pure Command Line Interface (CLI) Script
Expert users only: <https://github.com/mflaxman/human-rng-golang>

#### Improve Airgap

##### Option A: Write Data to CD/DVD instead of USB Drive
DVDs are less able to execute malware on your computer.

##### Option B: Use a QR-Code Airgap
This is not currently documented.
Pull requests with clarification are welcome.
Specter-Desktop can receive this info via QR-code airgap.

## Improve Seed Generation

#### Put Each Word Back in the Hat Between Draws
BIP39 allows for a word to be repeated in your seed phrase should it happen to be randomly drawn multiple times (very unlikely).

Randomly drawing 23 words *with* replacement, when performed correctly, has 253 bits of entropy.

    >>> from math import log2
    >>> log2(2048**23)
    253.0

Randomly drawing 23 words *without* replacement, when performed correctly, has "only" 252.82 bits of entropy.

    >>> from math import factorial
    >>> def perm(n, k):
    ...     return factorial(n) / factorial(n - k)
    ...
    >>> log2(perm(2048, 23))
    252.8211201612868

With so many words to choose from (2048), the vast majority (over 88%) of possible seed phrases do not contain repeated words.

    >>> perm(2048, 23) / 2048**23
    0.8833886253765292

The slight reduction to such a massive keyspace is insignificant. Nonetheless, we prefer to follow standards / best practices when possible.

#### Use SeedPicker Cutouts
Instead of having to cut out 2,048 words, you can get the same security by cutting out only 342 raffle tickets and using a 6-sided die instead.
See [the SeedPicker guide for creating your own seed phrase](https://github.com/merland/seedpicker/blob/master/guide/GUIDE.md) for more info.
This will require 3 pages to be printed out, and it's easier if you print out another 5 (can just reference them online if you prefer).
You'll also need a fair 6-sided die.

#### Use Dice
You can avoid all the paper cutting by [using dice and a lookup table instead](https://en.bitcoin.se/articles/create-your-own-wallet-seed-using-regular-dice).

#### Add a Strong Passphrase to Your Seed
Caution: you now have to come up with a way to backup/protect this passphrase, and if you lose it your seed is worthless.
Because this step is only for **expert** users, we're going to ignore it for now.
Be sure to use a hardware wallet where you can enter the passphrase directly on the device to avoid [potential issues](https://benma.github.io/2020/09/02/trezor-keepkey-passphrase.html).

## Not Perfect
No setup is perfect and this one is no exception.
Read more about known issues with SeedPicker [here](/known-issues/software/seedpicker).
