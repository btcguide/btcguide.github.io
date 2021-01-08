---
title: Setup Hardware Wallet Overview
---

#### Update Your Firmware
Updating firmware is a step where things could go wrong, so we want to do this **before** putting any funds on the hardware wallet.

Hardware wallets by default refuse to update their own firmware unless the manufacturer has cryptographically signed the update, meaning it should be impossible for a third party to trick you into installing their “update” instead.
Still, it’s a good idea to exercise common sense and be a little paranoid here.

There are a lot of incentives for a hacker to try and override the behavior of your hardware wallet.
The good news is that by using multiple signatures (from multiple different hardware wallet manufacturers) an attacker would need to trick you into installing the wrong firmware capable of exploiting a vulnerable simultaneously on multiple devices.

For extra security when updating firmware via SD Card, use a unique SD card for each hardware wallet.
In the unlikely even that one of your hardware wallets is compromised and is attempting to push malware on another, this will make it harder for that attack to succeed.

#### Use a Passphrase for Each Wallet
While this is a way to harden your security, in practice it is quite complex as users are terrible about:

* Generating strong random passwords, which by definition must be long (high entropy)
* Remembering strong passwords, especially when they're long (and sometimes not used for many months/years).
* Implementing a secure backup/recovery system (like [Shamir's Secret Sharing Scheme](/why-multisig-advanced#shamirs-secret-sharing-scheme)).

We prefer instead to rely on the added security that multisig already provides.

For now, **this step should only be considered for expert users**, and only after [increasing your quorum](/quorum-advanced#3-of-5-is-excellent) (from `2-of-3` to `3-of-5`).


{% include next_steps.md next_url="/verify-receive-address" next_name="Verify Receive Address" %}
