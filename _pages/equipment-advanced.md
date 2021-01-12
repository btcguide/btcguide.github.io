---
title: Equipment
---

## Recommended Additions

#### Tweezers
It is very hard to remove the SD card from the Cobo Vault, and can occasionally be challenging to do so from the Coldcard.
Any cheap pair of tweezers (the kind you might use to remove a splinter) will make this easy.

#### Physical Bitcoin Seed Storage
The best choice is to etch your seed words into metal.
This is far more durable than words written on paper that can be destroyed by fire or water.
Here are [reviews of several metal seed-storage products](https://blog.lopp.net/metal-bitcoin-seed-storage-stress-test-round-iii/).

A cheaper alternative that is not nearly as durable is [archival paper](https://en.wikipedia.org/wiki/Acid-free_paper#Archival_paper) with an archival ink pen.
These are available online or at your local stationary store.
If you go this route, you'll want to place this paper into a plastic bag with a good seal (vacuum seal is even better) so that it doesn't get destroyed in the event of water damage.

You can also use fireproof document bags for ~10-20 USD each.
This is a [popular brand](https://www.amazon.com/JUNDUN-Fireproof-Document-Waterproof-Resistant/dp/B07P2WB48X/) (not an endorsement, just an example).

However you secure these backups, you want one set of gear for each seed, or a minimum of 3 in total.

#### Hardware wallet storage bags
Electromagnetic pulse (EMP) bags, also known as a Faraday cage or bag, should be used to store your hardware wallets.
EMP bags may protect your hardware wallets from damage by electromagnetic radiation such as cellular, GPS, Bluetooth, WiFi, RFID, NFC radio waves, etc. which may damage your devices.

A more extreme, but unlikely, attack vector that an EMP bag may protect you from is an EMP.
EMPs are strong waves of electromagnetic energy that can damage electronic devices like hardware wallets.
EMPs are usually associated with nuclear weapons or solar weather events like a coronal mass ejection, but minor EMPs can also occur from lightning strikes or even power-line surges.

Various Faraday cage / EMP bag products exist on the market but a cheap and effective option is to vacuum seal your hardware wallets in Mylar which can be found cheaply on [Amazon](https://www.amazon.com/).
[Silent Pocket](https://silent-pocket.com/) is one of many companies that offer a range of Faraday cage products (not an endorsement, just an example).

#### DVD Drive Instead of USB Drive
Using a DVD for installing Ubuntu is slightly preferred over a USB drive.
It's read-only, and has less attack surface vs the whole USB stack.
If your DVD drive is built into a laptop, then it's also nice that it doesn't require using up one of your USB ports.
You can also use this for ferrying public information (extended public keys, fingerprints, bip32 paths, etc.) between computers, see [Setup Your Hardware Wallets](/setup-wallets) for more info.

#### Extra DVDs or USB Sticks for Backing Up Public Key Material
The data these protect will only affect your privacy (not security), so you can secure it in many ways (store on your hard drive, print to paper, backup to cloud, etc.).
Since this is longer than a seed phrase, a digital medium (DVD or USB drive) is strongly preferred.
If you keep 2 copies per seed (and have 3 seeds in total), then you're going to need 6 DVD-Rs (or 6 USB drives).
Read more about backing up your public keys [here](/backup-wallet/public-keys).

## Sourcing Hardware Wallets
To reduce the risk of tampering or counterfeits, you can buy your hardware wallets directly from the manufacturer in-person at a conference/meetup.
If buying online, purchase directly from the manufacturer and avoid resellers.

Protect your operational security by taking delivery to an alternate address instead of your home address (e.g. company address, PO box, shipping locker, etc.)

## Dedicated Hardware
Hardware wallets are designed to protect you from malware-infected computers, but malware on your computer could still try to trick (or even compromise) your hardware wallets.
Using a dedicated computer (not your day-to-day computer), can reduce the attack surface.

It may be even safer to buy your computer and other equipment (USB drives, DVDs, microSD cards, etc.) offline at a physical store to reduce the risk of targeted tampering en-route.

Advanced users can get by on **very** cheap computers (like a Raspberry Pi), but since we're using Ubuntu we need to meet their (still lightweight) minimum requirements.

## Bitcoin Core Node
For improved security, build your own bitcoin-core node from scratch!
You can read more about Bitcoin Core's requirements [here](https://bitcoin.org/en/bitcoin-core/features/requirements).
Some node operators take pride in getting by on extremely minimal hardware, others use an SSD drive and/or a more powerful CPU for extra performance.

Specter-Desktop can connect to a node anywhere, so your Bitcoin Core node does *not* need to be on the same computer.
Some people with laptops like to run Specter-Desktop on that as their primary device and connect to a Bitcoin Core Node that they control.

A node hosted on a machine you physically control (in a [colo](https://en.wikipedia.org/wiki/Colocation_centre) or more realistically your home/office) is better than one in a cloud provider.
If your cloud provider is malicious (or government-compelled) and clever they could:

* Snoop on your bitcoin addresses and see your transaction history.
* Try to trick you with information about a (fake) received payment.

The author of this guide is proud to have written [a privacy-preserving defense against this using merkle proofs](https://github.com/cryptoadvance/specter-desktop/pull/334) (currently only for advanced users).

#### Pruning Bitcoin Core
If you run a pruned full node, you can use very little disk space (currently ~5GB vs ~300GB) and massively lower your hardware requirements.
However, for now pruning your node is only recommended for expert users.

##### Rescan
There are uncommon situations where you may need to `-rescan` the blockchain.
This might happen during a reinstallation/recovery process, if funds are stored on the bitcoin blockchain in an address not yet added to your Bitcoin Core watch-only wallet.
A pruned node must be `-reindex`ed (can take many hours/days), whereas a regular (non-pruned) node can be quickly `-rescan`-ed (currently < 1 hour).
Expert-user users can [rescan from a specific block height](https://bitcoincore.org/en/doc/0.20.0/rpc/wallet/rescanblockchain/).

##### Merkle Proofs
Pruned nodes [currently do not support merkle proofs](https://github.com/cryptoadvance/specter-desktop/pull/334#issuecomment-685981023).
This may be fine for locally hosted nodes, but is inherently risky for cloud-hosted nodes.


## Simplify Receive-Address Verification
Verifying receive addresses on a quorum of trusted devices [is incredibly important](/known-issues/verify-receive-address).
Unfortunately, this can be cumbersome, especially if they're in separate geographic locations.
One hack people use is to setup a clean machine that can generate addresses from extended public key information without being connected to the internet.

**Not relying fully on your trusted hardware devices introduces new risks and should only be considered by expert users.**
You can read more about this [here](verify-receive-address/advanced).

#### Option A - Eternally Quarantined Machine
This machine is setup once and never needs to be configured/updated again, so it is strongly recommended to have no internet access.
If you choose to do this, you can use a very low-end machine.
It's a great way to use a Raspberry Pi for example.

*TODO: update with exact resource requirements for various methods.*

#### Option B - Print Out Addresses
An eternally quarantined machine is good, but requires another electronic device to be permanently configured and available to use.
Some users prefer to print out many hundred (or even thousands) of receive addresses at wallet creation and then use this physical paper to aid in verification.
If you go this route, you will need a printer and paper.


{% include next_steps.md next_url="/setup-computer" next_name="Configure Your Computer" %}
