---
title: Setup Paper Wallet
---

## Generate Seed
In order to eliminate the risk of a compromised random number generator, **you are going to be the random number generator**!

#### Print Out Seed Words

You are going to print out all 2048 words from [the official BIP39 wordlist](https://github.com/bitcoin/bips/blob/master/bip-0039/english.txt) so you can select your seed words randomly.
Download [this nicely formatted PDF from Cold Code](/assets/guide/cold_code_bip39_wordlist.pdf) and print it out.

#### Cut Out Seed Words
Cut the paper up into 2048 evenly-sized pieces (each with 1 word on it) and put them in a hat (any container will do).

#### Have a Monkey Draw 23 Words Out of the Hat
If you don't have a monkey, you can do the job yourself.
As you pull each word out, write it down on a piece of paper.
In the end you will have 23 words that look like this (**do NOT use this seed phrase**):
```
define rifle cliff summer priority ability chimney cotton tennis crash husband try trophy ring cook portion drift stool thank ceiling notice lesson foam
```

## Calculate 24th Word and Other Seed Data using Seedpicker

**Warning: this is the highest risk step in our multisig scheme**, but you only have to do it once.
Follow the instructions closely, and consider hardening your security by using techniques described in [the advanced section](paper-advanced).

#### Seedpicker GUI
**Turn off (and unplug) your internet access before entering your seed words into your computer.**
**Do not save the result to your hard drive (write it down on paper only), and restart your computer before restoring internet access.**

<http://seedpicker.net/>

TODO: add more details

## Export Public Key Info to Computer via QR Code / Webcam
1. In the previous step, you saved your extended public key information (something like `[083AA3DB/48'/0'/0'/2']Zpub75b...bhK`) to a DVD-R or USB pen-drive.
On Specter-Desktop: Click `+ Add new device`, enter a `Name` (like `Paper Wallet`), paste in the extended public key infortation, and hit `continue`:  
![](/assets/img/setup-paper-specter-input.png){:width="800px"}  
2. Your public key is now added to Specter-Desktop:  
![](/assets/img/setup-paper-display-pubkey.png){:width="800px"}  


{% include advanced_config.md %}
