---
title: Setup Paper Wallet
---

**Warning: this is the highest risk step in our multisig scheme**, but you only have to do it once.
Follow the instructions closely, and consider hardening your security by using techniques described in [the advanced section](paper-advanced).

## Generate Seed
In order to eliminate the risk of a compromised random number generator, **you are going to be the random number generator**!

#### Print Out Seed Words

You are going to print out all 2048 words from [the official BIP39 wordlist](https://github.com/bitcoin/bips/blob/master/bip-0039/english.txt) so you can select your seed words randomly.
Download [this nicely formatted PDF from Cold Code](/assets/guide/cold_code_bip39_wordlist.pdf) and print it out.

[TODO]: find/publish PDF list with no index info (cleaner)

#### Cut Out Seed Words
Cut the paper up into 2048 evenly-sized pieces (each with 1 word on it) and put them in a hat (any container will do).

#### Have a Monkey Draw 23 Words Out of the Hat
If you don't have a monkey, you can do the job yourself.
As you pull each word out, write it down on a piece of paper.
In the end you will have 23 words that look like this (**do NOT use these words**):

`define rifle cliff summer priority ability chimney cotton tennis crash husband try trophy ring cook portion drift stool thank ceiling notice lesson foam`

## Calculate 24th Word and Other Seed Data

**Turn off (and unplug) your internet access before performing these steps.**
**Do not save the result to your hard drive (write it down on paper only), and restart your computer before restoring internet access.**

Options A and B are currently the best choices (though far from ideal).
Advanced users will find more CLI options in [the advanced section](paper-advanced).

#### Option A - Seedpicker GUI
[Seedpicker currently requires a CLI script to supplement it](https://github.com/merland/seedpicker/issues/23), so we're using option B exclusively (an electrum script that does everything in one step).

#### Option B - HumanRNG Electrum Console Script
This step is unfortunately complicated, as no GUI software yet exists to make it easier.
**Only advanced users who are comfortable with the command line should consider continuing.**

To prevent users unfamiliar with the command line from making mistakes, it is not well documented beyond linking to this GitHub repo:  
<https://github.com/mflaxman/human-rng-electrum>

![](/assets/img/setup-paper-calculate-seed.png){:width="800px"}

## Export Public Key Info to Computer via QR Code / Webcam
1. In the previous step, you saved your extended public key information (`Zpub`, path, and root fingerprint) to a DVD-R or USB pen-drive.
On Specter-Desktop: Click `+ Add new device` > `Scan`  :  
![](/assets/img/setup-paper-specter-input.png){:width="800px"}  
2. Key is added:  
![](/assets/img/setup-paper-display-pubkey.png){:width="800px"}  






{% include advanced_config.md %}
