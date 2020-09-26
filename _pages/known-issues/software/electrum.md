---
title: Electrum
---

In theory, it would be possible to do everything described in this guide using [Electrum](https://electrum.org/) instead of [Specter Desktop](https://github.com/cryptoadvance/specter-desktop).
However, there are a number of reasons we're using [Specter Desktop](https://github.com/cryptoadvance/specter-desktop) instead.

#### Electrum Has a Very Slow Release Schedule
This may be due to the fact that it's a large project used for many different things (lightning, coin selection, hardware wallet integration, multisig, etc), or its nonstandard use of git (it operates with a "dirty" master branch).
For example, [a new release from version 3.3.8 to 4.0.0b0 took nearly a year to release](https://download.electrum.org/)!
For mission-critical security software, we require a much more rapid release schedule.

#### Limited BIP39 Support
Electrum has limited support for BIP39 and is openly considering dropping it altogether.
Users cannot create BIP39 seeds, and importing them is difficult (requires knowing to toggle hidden checkboxes and prompts users with scary security warnings).
This is confusing behavior for hardware wallet users (almost all of whom use BIP39).

#### Default Government Spying
Using Electrum in the standard way is convenient, but risks revealing which addresses are yours to anonymous/volunteer SPV servers on the internet.
These volunteer servers are likely to be run by blockchain surveillance companies like [Chainalysis](https://www.chainalysis.com/).
Dishonest SPV servers can also attempt to trick SPV clients into following a version of the blockchain that is invalid if it has more Proof of Work.
While it is possible to run your own Electrum Server (on top of your own Bitcoin Core node), it is easier to just run your own Bitcoin Node only.

#### Confusing UX
Electrum's UX his full of pitfalls that will technically not cause loss of funds but can easily confuse non-expert users who may then make mistakes leading to loss of funds.
Specter's UX is better than Electrum and it is improving rapidly.


TODO: add more links

