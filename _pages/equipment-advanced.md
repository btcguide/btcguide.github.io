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
For example, if your computer is malware-infected you could be running differen software then you intend which could try to trick (or in some cases even compromise) your hardware wallets.
Having a dedicated device that is designed around security, can reduce the attack surface.

It may be even safter to buy your computer and other equipment (USB sticks, DVDs, microSD cards, etc) offline at a physical store to reduce the risk of targetted tampering en-route.

## Bitcoin Core Node
For improved security, build your own bitcoin-core node from scratch!
You can read more about Bitcoin Core’s requirements [here](https://bitcoin.org/en/bitcoin-core/features/requirements).
You can run a pruned full node on as little hardware as a Raspberry Pi, but keep in mind that you must (re)scan the whole blockchain **after** you setup your hardware wallets.
Depending on your performance/reliability needs, you may want an SSD drive for your Bitcoin Core node.
It may also be worth it to you to have a more powerful CPU.

## Receive Address Verification Hardware
Verifying receive addresses on a quorum of trusted devices can be cumbersome, especially if they're in separate physical locations.
One hack people use is to setup a dedicated machine that is eternally quarantined (never connected to the internet) to assist in this process.
This machine is setup once and never needs to be configured again, it's preferred that this machine not have internet access.
If you choose to do this, you can use the lowest performance machine that is capable of running Specter.
It's a great way to use an old Raspberry Pi for example.
TODO: update with exact resource requirements for various methods.

See [here](/verify-receive-advaned) for more.
