---
title: Backup Public Keys - Advanced
---

#### Protect Your Seeds
Place each copy of your public key data (DVDs or USB pendrives) in a fireproof document bag.
Place each copy of your public key data (DVDs or USB pendrives) in a plastic bag with a good seal (vaccuum sealed even better) so that it doesn't get destroyed in the event of water damage.

#### Extended Public Key Info
The info needed to backup your extended public keys also includes related configuration settings/metadata:
* **BIP32 Paths**: Instructinons for your hardware wallet to derive the specific key used for signing from the seed. 
* **Quorum Unformation**: Your `m` and `n`
* **Root Fingerprint**: An ID for your master public key (this is 4 bytes of data, stored in hexadecimal format). This can be represented in many ways but might look like `m/48'/0'/0'/2'`.

You don't need to know what these are, your software will handle it automatically.
The main thing is that you know you have to keep a copy of all this data -- not just your extended public keys (aka `xpub`s, `Ypub`s or `Zpub`s) -- and unlike your 24 word seed phrase it's too large to write down by hand.
You have to do this for *all* your seeds.

This is why we use USB pen-drives, DVD drives, storing it online in the cloud, etc.
