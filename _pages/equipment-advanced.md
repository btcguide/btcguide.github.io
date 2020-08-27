---
title: Equipment (Advanced)
---

## Recommended Additions

#### Extra MicroSD card
So each hardware wallet has its own dedicated MicroSD card.
This reduces the risk that malware on one hardware wallet could attempt to infect another.

#### Physical Bicoin Seed Storage
The best choice is to etch your seed words into metal.
This is far more durable than words written on paper that can be destroyed by fire or water.
Here are [reviews of several](https://blog.lopp.net/metal-bitcoin-seed-storage-stress-test-round-iii/).

A cheaper alternative that is not nearly as durable is [archival paper](https://en.wikipedia.org/wiki/Acid-free_paper#Archival_paper) with an archival ink pen.
These are both available online or at your local stationary store.
If you go this route, you'll want to place this paper into a plastic bag with a good seal (vaccuum seal is even better) so that it doesn't get destroyed in the event of water damage.

You can also use fireproof document bags for ~$10-$20 USD each.
This is a [popular brand](https://www.amazon.com/JUNDUN-Fireproof-Document-Waterproof-Resistant/dp/B07P2WB48X/) (not an endorsement, just an example).

TODO: add link to EMP bags.

However you secure these backups, you want one set of gear for each seed, or a minimum of 3 in total.

#### DVD Drive Instead of USB Drive
Using a DVD for installing Ubuntu is slightly preferred over a USB drive.
It's read-only, and has less attack surface vs the whole USB stack.
If your DVD drive is built into a laptop, then it's also nice that it doesn't require using up one of your USB ports.
You can also use this for ferrying public information (extended public keys, fingerprints, bip32 paths, etc), see [Setup Your Hardware Wallets](/setup-wallets) for more info.

#### Extra DVDs or USB Sticks for Backing Up Public Key Material
The data these protect will only affect your privacy (not security), so you can secure it in many ways (store on your hard drive, print to paper, backup to cloud, etc).
Since this is longer than a seed phrase, a digital medium (DVD or USB drive) is preferred.
If you keep 2 copies per seed (and have 3 seeds in total), then you're going to need 6 DVD-Rs (or 6 USB pen drives).

## Sourcing Hardware Wallets
To reduce the risk of tampering or counterfeits, you can buy your hardware wallets directly from the manufacturer in-person at a conference/meetup.
If buying online, purchase directly from the manufacturer and avoid resellers.

Protect your operational security by taking delivery to an alternate address instead of your home address (e.g. work address, PO box, shipping locker, etc)

## Dedicated Hardware
While hardware wallets are designed to protect you from malware-infected host computers, using a dedicated machine (not your day-to-day computer) to connect to your hardware wallets adds [defense in depth](https://en.wikipedia.org/wiki/Defense_in_depth_(computing)).
For example, if your computer is malware-infected you could be running different software then you intend which could try to trick (or in some cases even compromise) your hardware wallets.
Having a dedicated device that is designed around security, can reduce the attack surface.

It may be even safter to buy your computer and other equipment (USB sticks, DVDs, microSD cards, etc) offline at a physical store to reduce the risk of targetted tampering en-route.

## Bitcoin Core Node
For improved security, build your own bitcoin-core node from scratch!
You can read more about Bitcoin Core’s requirements [here](https://bitcoin.org/en/bitcoin-core/features/requirements).
Depending on your performance/reliability needs, you may want an SSD drive for your Bitcoin Core node.
It may also be worth it to you to have a more powerful CPU.

#### Pruning Notes
If you run a pruned full node, you can use very little disk space (currently ~5GB vs ~300GB) and massively lower your hardware requirements.
Keep in mind that there are unlikely edge cases where you may need to `-rescan` the blockchain.
This might happen during a reinstallation/recovery process, if funds are stored on the bitcoin blockchain in an address not yet added to your bitcoin core watch-only wallet.
A pruned node must be `-reindex`ed (can take many hours/days), whereas a regular (non-pruned) node can be quickly `-rescan`-ed (currently < 1 hour).
Expert-user users can [rescan from a specific block height](https://bitcoincore.org/en/doc/0.20.0/rpc/wallet/rescanblockchain/).
**Non-expert users are encouraged to avoid pruning their nodes** to avoid a bug causing potential frustration.
As this software mature, that recommendation may change.

## Simplify Receive Address Verification
Verifying receive addresses on a quorum of trusted devices [is incredibly important](/known-issues/verify-receive-address).
Unfortunately, this can be cumbersome, especially if they're in separate geographic locations.
One hack people use is to setup a clean machine that can generated addresses from extended public key information without being connected to the internet.

**Not relying fully on your trusted hardware devices introduces new risks and should only be considered by expert users.**
You can read more about this [here](verify-receive-address/advanced).

#### Option A - Eternally Quaratined Machine
This machine is setup once and never needs to be configured again, so it's strongly preferred that this machine not have internet access.
If you choose to do this, you can use the lowest performance machine that is capable of running Specter.
It's a great way to use an old Raspberry Pi for example.
*TODO: update with exact resource requirements for various methods.*

#### Optiona B - Print Out Addresses
An eternally quarantined machine is good, but requires another electronic device to be permanently configured and available to use.
Some users prefer to print out many hundred (or even thousands) of addresses at wallet creation and then use this paper to aid in verification.
If you go this route, you will need a printer and paper.
