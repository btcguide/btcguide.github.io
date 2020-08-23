---
title: Setup Your Hardware Wallets - Advanced
---

#### Update Your Firmware
Updating firmware is a step where things could go wrong, so we want to do this **before** putting any funds on the hardware wallet.


Hardware wallets by default refuse to update their own firmware unless the manufacturer has cryptographically signed the update, meaning it should be impossible for a third party to trick you into installing their “update” instead.
Still, it’s a good idea to exercise common sense and be a little paranoid here.

There are a lot of incentives for a hacker to try and override the behavior of your hardware wallet.
The good news is that by using multiple signatures (from multiple different hardware wallet manufacturers) an attacker would need to trick you into installing the wrong firmware capable of exploiting a vulnerable simultaneously on multiple devices.

For extra security when updating firmware via SD Card, use a unique SD card for each hardware wallet.
In the unlikely even that one of your hardware wallets is compromised and is attempting to push malware on another, this will make it harder for that attack to succeed.
