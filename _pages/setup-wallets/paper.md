---
title: Setup Paper Wallet
---

For a video demo, check out [this example on Bitcoin Magazine](https://www.pscp.tv/BitcoinMagazine/1lDxLygXdvmKm?t=24m05s).

By using a paper wallet generated in software, we eliminate the need to buy a third hardware wallet (you may later have to buy a hardware wallet if you need to use this key for emergency recovery).

**Warning: this is the highest risk step in our multisig setup**.
**Follow the instructions closely, and seriously consider hardening your security** by using techniques described in [the advanced section](paper-advanced).

## Generate Seed
In order to eliminate the risk of a compromised random-number generator, _you_ will be the random-number generator!

You will draw the first 23 words out of a "hat" to create your seed phrase ("hat", or any other container, like a ziploc bag, which is a good choice because it enables you to shake/shuffle the words easily without playing "2048-Card Pickup"!).
The last word of a [BIP39](https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki) seed phrase is actually a [checksum](https://en.wikipedia.org/wiki/Checksum), meaning you need a computer to calculate it for you.
It will also calculate some extended public key information that will be used to identify payments and generate transactions for your hardware wallets to sign.

#### Print Out Seed Words

You are going to print out all 2048 words from [the official BIP39 wordlist](https://github.com/bitcoin/bips/blob/master/bip-0039/english.txt) so you can select your seed words randomly.
Download [this nicely formatted PDF](/assets/guide/bip39_wordlist.pdf) and print out both pages (single-sided).
There is no private information in this PDF, having it only reveals that you're interested in bitcoin.
You don't need your own printer; you could safely ask a friend to print it out for you, print it out at work, go to a Kinko's location, etc.

#### Cut Out Seed Words
Cut the paper up into 2048 evenly-sized pieces (each with 1 word on it) and put them in a "hat".

This step will likely take a few hours with scissors (a good paper cutter may reduce the time), so it might be a good opportunity to catch up on the [Stephan Livera Podcast](https://stephanlivera.com/) while you cut.

#### Have a Monkey Draw 23 Words Out of the Hat
If you don't have a monkey, you can do it yourself.
As you pull each word out, write it down on a piece of paper.
In the end you will have 23 words that look like this (**do NOT use this seed phrase**):
```
define rifle cliff summer priority ability chimney cotton tennis crash husband try trophy ring cook portion drift stool thank ceiling notice lesson foam
```

## Calculate the 24th Word and Other Seed Data using SeedPicker
The 24th word cannot be calculated on paper or in your head, so you will need a secure computer
for this step. This guide recommends the open source tool `SeedPicker`, which was designed for this purpose.    

#### Practice First with a Dry Run
Let's start with a dry run. As this is just for testing, you don't have to worry about security at all.
Use the following *insecure* seed phrase (the word `zoo` repeated 23 times):
```
zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo 
```
(an unbiased monkey would not pull the same word out of a hat 23 times in a row)

#### Calculate the 24th Word
1. Visit [seedpicker.net](https://seedpicker.net)
1. Enter the practice phrase (`zoo zoo zoo...`) and hit `Calculate!`
1. You will see that the 24th word calculation result is `buddy`:  
![](/assets/img/setup-paper-seedpicker-example-output.png){:class="border_image"}  

#### Save the Output
1. Write down the whole 24 word phrase (`zoo` repeated 23 times + `buddy` as the 24th word) *offline* on paper only.
**Do not save this to any computer.**
1. Scroll down to `Export Public Key Info To Specter Desktop` and click on the `Download` button. 
This will download a `json` file to your computer, containing the extended public key info.
Save the file to a DVD-R or USB drive to later share with Specter-Desktop.  
![](/assets/img/setup-paper-seedpicker-save-json.png){:class="border_image"}  


#### Do it Live
**Quit all applications, remove any removable media, and turn off your internet access before continuing.**
**Do not save the seed phrase to your hard drive (write it down on paper only), and restart your computer before restoring internet access.**

It is *highly recommended* that you wipe your hard drive before restoring internet access.
See [advanced section](paper-advanced) for more info.


## Export Public Key Info to Specter-Desktop
In the previous step, you saved your extended public key information (`seedpickerxp-foo.json`) to a DVD-R or USB drive.

1. On Specter-Desktop: Click `+ Add new device`, enter a `Name` (like `Paper Wallet`), click `Choose files` and select your file (`seedpickerxp-foo.json`), and hit `continue`.
Your file will be automatically parsed into something like this:  
![](/assets/img/setup-paper-specter-input.png){:class="border_image"}  
1. Your public key is now added to Specter-Desktop:  
![](/assets/img/setup-paper-display-pubkey.png){:class="border_image"}  

{% include next_steps.md next_url="cobo" next_name="Setup Cobo Vault" %}
