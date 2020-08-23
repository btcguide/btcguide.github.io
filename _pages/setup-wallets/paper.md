---
title: Setup Paper Wallet
---

**Warning: this is the highest risk step in our multisig scheme**, but you only have to do it once.
Follow the instructions closely, and consider hardening your security by using techniques described in [the advanced section](/setup-wallets/paper-advanced).

## Generate Seed
In order to eliminate the risk of a compromised random number generator, **you are going to be the random number generator**!

#### Print Out Seed Words

You are going to print out all 2048 words from [the official BIP39 wordlist](https://github.com/bitcoin/bips/blob/master/bip-0039/english.txt). Here are two nicely formatted PDFs, pick whichever one you like (or make your own):
* [KrytoDots](../assets/guide/kryptodots_bip39_wordlist.pdf)
* [Cold Code](../assets/guide/cold_code_bip39_wordlist.pdf)

TODO: find/publish PDF list with no index info (cleaner).

#### Cut Out Seed Words
Cut the paper up into 2048 evenly-sized pieces (each with 1 word on it) and put them in a hat (any container will do).

#### Have a Monkey Draw 23 Words Out of the Hat
If you don't have a monkey, you can do the job yourself.

As you pull each word out, write it down on a piece of paper.

In the end you will have 23 words that look like this (**do NOT use these words**):

`define rifle cliff summer priority ability chimney cotton tennis crash husband try trophy ring cook portion drift stool thank ceiling notice lesson foam`

## Calculate 24th Word and Other Seed Data

**Turn off your internet access before performing this operation.**
**Do not save the result to your hard drive (write it down on paper only), and restart your computer before restoring internet access.**

#### Option A - Seedpicker GUI
[http://seedpicker.net/](http://seedpicker.net/)

Since [seedpicker currently requires a CLI script to supplement it](https://github.com/merland/seedpicker/issues/23), so we're using option B exclusively (a CLI script that does everything in one step).

#### Option B - HumanRNG CLI Script
WIP: [https://github.com/mflaxman/human-rng-golang](https://github.com/mflaxman/human-rng-golang)

TODO: add script instructions

#### Save Extended Public Keys, Path, and Root Fingerprint to USB Drive
TODO: explain this step

{% include advanced_config.md %}
