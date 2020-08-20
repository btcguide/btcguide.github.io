---
title: Setup Coldcard
---

#### Verify Number on Bag

The Coldcard will come in a bag with a letter or barcode under the number (e.g. C0008091) - when you first start up the device, confirm that it displays this number.
See Matt Odell’s Coldcard video from approx 3 mins in [here](https://www.youtube.com/watch?v=sM2uhyROpAQ&feature=youtu.be&t=180).


#### Update Your Firmware
Updating firmware is a step where things could go wrong, so we want to do this **before** putting any funds on the hardware wallet.
Follow [the steps on Coldcard's website](https://coldcardwallet.com/docs/upgrade).

There are a lot of incentives for a hacker to try and override the behavior of your hardware wallet.
The good news is that you’re using at least two signatures (from two different hardware wallet manufacturers), so an attacker would need to trick you into installing the wrong firmware on multiple devices.
Hardware wallets by default refuse to update their own firmware unless the manufacturer has cryptographically signed the update, meaning it should be impossible for a third party to trick you into installing their “update” instead.
Still, it’s a good idea to exercise common sense and be a little paranoid here.

{% include advanced_config.md %}
