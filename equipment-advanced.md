---
title: Equipment (Advanced)
---


## Dedicated Hardware
While hardware wallets are designed to protect you from malware-infected host computers, using a dedicated machine (not your day-to-day computer) to connect to your hardware wallets adds [defense in depth](https://en.wikipedia.org/wiki/Defense_in_depth_(computing)).
For example, if your computer is malware-infected you could be running differen software then you intend which could try to trick (or in some cases even compromise) your hardware wallets.
Having a dedicated device that is designed around security, can reduce the attack surface.

## Electrum Server
If you decide to run your own Bitcoin Core full node and Electrum server, you’ll want an SSD hard drive, and it may be worth it to you to have a more powerful CPU.
You can read more about Bitcoin Core’s requirements [here](https://bitcoin.org/en/bitcoin-core/features/requirements).

TODO: add link to regularly updated source on hardware needed for Electrum Server.


## Receive Address Verification Hardware
Verifying recieve addresses on a quorum of trusted devices can be cumbersome, especially if they're in separate physical locations.
One hack people use is to setup a dedicated machine that is eternally quarantined (never connected to the internet) to assist in this process.
If you choose to do this, you can use the lowest performance machine that is capable of running Electrum (or even a script that has lower resource requirements).
It's a great use for an old Raspberry Pi for example.
TODO: update with exact resource requirements for various methods.

See [here](/verify-receive-advaned) for more.
