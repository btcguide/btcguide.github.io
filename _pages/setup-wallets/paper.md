---
title: Setup Paper Wallet
---

# Expert User Caution
There is currently a step here that requires very advanced users to figure out.
This should be updated soon:  
<https://github.com/merland/seedpicker/issues/26>

**Only expert users should proceed!**

---


By using a paper wallet generated in software, we eliminate the need to buy a third hardware wallet (you may have to buy a hardware wallet if you need to use the key for emergency recovery).

**Warning: this is the highest risk step in our multisig setup**.
**Follow the instructions closely, and seriously consider hardening your security by using techniques described in [the advanced section](paper-advanced)**.


## Generate Seed
In order to eliminate the risk of a compromised random number generator, you are going to be the random number generator!

You will draw the first 23 words out of a hat to create you seed phrase.
The last word of a [BIP39](https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki) seed phrase is actually a [checksum](https://en.wikipedia.org/wiki/Checksum), meaning you need a computer to calculate it for you.
It will also calculate some extended public key information that will be used to identify payments and generate transactions for your hardware wallets to sign.

#### Print Out Seed Words

You are going to print out all 2048 words from [the official BIP39 wordlist](https://github.com/bitcoin/bips/blob/master/bip-0039/english.txt) so you can select your seed words randomly.
Download [this nicely formatted PDF from Cold Code](/assets/guide/cold_code_bip39_wordlist.pdf) and print out both pages (single-sided).
There is no private information in this PDF, having it only reveals that you're interested in bitcoin.
You don't need your own printer; you could safely ask a friend to print it out for you, print it out at work, go to a Kinko's location, etc.

#### Cut Out Seed Words
Cut the paper up into 2048 evenly-sized pieces (each with 1 word on it) and put them in a hat (any container will do).

#### Have a Monkey Draw 23 Words Out of the Hat
If you don't have a monkey, you can do it yourself.
As you pull each word out, write it down on a piece of paper.
In the end you will have 23 words that look like this (**do NOT use this seed phrase**):
```
define rifle cliff summer priority ability chimney cotton tennis crash husband try trophy ring cook portion drift stool thank ceiling notice lesson foam
```

## Calculate 24th Word and Other Seed Data using SeedPicker
You can read more about how the author recommends using SeedPicker [here](http://seedpicker.net/guide/GUIDE.html).

#### Practice First with a Dry Run
As this is just for testing, you don't have to worry about security at all!

Use the following *insecure* seed phrase (the word `zoo` repeated 23 times):
```
zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo 
```
(A proper monkey would not pull the same word out of a hat 23 times in a row!)

##### Steps
1. Vist SeedPicker: <http://seedpicker.net/calculator/last-word.html>
2. Enter the practice phrase (`zoo zoo zoo...`) and hit `Caluclate!`
3. You will see the 24th word calulation result is `buddy`:  
![](/assets/img/setup-paper-seedpicker-example-output.png){:width="600px"}  

##### Save the Output
1. Write down the whole 24 word phrase (`zoo` repeated 23 times + `buddy` as the 24th word) *offline* on paper only.
Do not save this to any computer!
2. Put the extended public key data on a DVD-R or USB drive to share with Specter-Desktop.
TODO: add more on how to do this when xfp download file is added: <https://github.com/merland/seedpicker/issues/26>


#### Do it Live

**Quit all applications, remove any removable media, and turn off your internet access before getting started.**
**Do not save the seed phrase to your hard drive (write it down on paper only), and restart your computer before restoring internet access.**
It is *highly recommended* that you wipe your hard drive before restoring internet access.

Now, repeat the steps above but with your real seed phrase (the 23 words you randomly drew out of a hat).

## Export Public Key Info to Computer via QR Code / Webcam
1. In the previous step, you saved your extended public key information (something like `[083AA3DB/48'/0'/0'/2']Zpub75b...bhK`) to a DVD-R or USB pen-drive.
On Specter-Desktop: Click `+ Add new device`, enter a `Name` (like `Paper Wallet`), paste in the extended public key infortation, and hit `continue`:  
![](/assets/img/setup-paper-specter-input.png){:width="800px"}  
2. Your public key is now added to Specter-Desktop:  
![](/assets/img/setup-paper-display-pubkey.png){:width="800px"}  



{% include next_steps.md %}
