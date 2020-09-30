---
title: Backup Public Keys
---


#### Protect Your Public Keys
Put your public key data (DVD or USB pendrive) in a plastic Ziploc-style bag to protect it from water damage.
A vacuum-sealed bag is even better.
For fire protection, place that inside a fireproof document bag.

#### Secure Your Public Keys
Anyone who gets access to public key information can see which bitcoin addresses belong to you but cannot spend from them.
While cloud backups may be good from an availability perspective, it also means that a third party could potentially see your bitcoin addresses and transaction history.
To protect against this, encrypt the data with a **strong** passphrase before sending it to the cloud.
The problem of course is that you need a system in place to protect you if you lose that passphrase (or get hit by a bus).
This is one reason why keeping an unencrypted copy of all public keys with each of your bitcoin seeds (that should already be stored in secure locations) is often an ideal tradeoff.

#### Extended Public Key Info
The info needed to backup your extended public keys also includes related configuration settings/metadata:
* **The Extended Public Key**: this will either start with `Zpub` for mainnet / `Vpub` for testnet if using [SLIP132 encoding](https://github.com/satoshilabs/slips/blob/master/slip-0132.md) or `xpub` for mainnet / `tpub` for testnet.
* **BIP32 Paths**: Instructions for your hardware wallet to derive the specific key used for signing from the seed. 
This can be represented in many ways but might look like `m/48'/0'/0'/2'`.
* **Quorum Information**: Your `m` and `n` in `m-of-n`.
* **Root Fingerprint**: An ID for your master public key. This is 4 bytes of data, stored in hexadecimal format (i.e. `5e66c49b`)

You don't need to know what these are, your software will handle it automatically.
The main thing is that you have to keep a copy of all this public key info for all of your seeds, and unlike your 24 word seed phrase it's too long/unwieldy to write down by hand.

This is why we use USB pen-drives, DVD drives, store it on our computer, in the cloud, etc.


{% include next_steps.md next_url="/send-bitcoin" next_name="Send Bitcoin" %}
