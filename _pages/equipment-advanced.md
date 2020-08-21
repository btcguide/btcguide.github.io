---
title: Equipment (Advanced)
---

#### Recommended Additions
* 1 extra MicroSD card - so each hardware wallet has its own dedicated MicroSD card.
* 3 x physical metal bitcoin seed storage devices (review of several [https://blog.lopp.net/metal-bitcoin-seed-storage-stress-test-round-iii/](here)) - more durable than pen and paper

## Buying Hardware Wallets
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
Verifying recieve addresses on a quorum of trusted devices can be cumbersome, especially if they're in separate physical locations.
One hack people use is to setup a dedicated machine that is eternally quarantined (never connected to the internet) to assist in this process.
This machine is setup once and never needs to be configured again, it's preferred that this machine not have internet access.
If you choose to do this, you can use the lowest performance machine that is capable of running Specter.
It's a great way to use an old Raspberry Pi for example.
TODO: update with exact resource requirements for various methods.

See [here](/verify-receive-advaned) for more.
