---
title: Complexity
---


## Complexity is the Enemy of Security
This is a common adage when it comes to information security, and multisig is no exception.
There are two *very* important mitigating factors.

#### Multisig is Not that Complex
[TODO]: Insert quote from Brian Bishop here.

It may seem that multisig is quite complex, but much of the complexity is just forcing the important security steps to be done upfront before funds are deposited, which is a *much* more secure than doing it after funds are at risk.
In single-key setups, the typical workflow is for a user to setup an insecure wallet (with several single-points-of failure) and then later attempt to secure it (perhaps as the value of the funds grow).
Some users discover to their horror that it is already too late.

A common example of this workflow might be to use a paper wallet (or paper seed) to receive funds, which has two major issues that a proper multisig scheme is designed to mitigate:
1. **It is typically not possible to independently verify the source of randomness** used to generate private key material.
This leaves all funds subject to theft, even if the funds were generated on an airgapped/eternally quarantined machine.
1. **Verifying the backed-up seed matches the addresses generated requires testing this on a secondary device**.
If you're going to do this, you should just use multisig so you can get the benefits of real fault tolerance!
See [Verifying Your Receive Addresses](verify-receive-address/).

#### Multisig Recognizes Humans Are Imperfect
It turns out that cryptography in meatspace is very challenging.
It is far harder to execute a single-key signature scheme *perfectly* vs executing a multi-sig scheme *decently*, and the latter is far more secure than the former (see [here](/why-multisig) for more details).

## Limited Airdrop/Fork Support
Because multisig transactions are more complicated, some altcoin airdrops that gave people coins for having bitcoin only did so when those bitcoins were secured by a single-key address.
Even if those chains did give coins to bitcoin multisig holders, the new coins sometimes had very weak multisig support (effectively trapping those airdropped coins for all but expert users).

Airdrops have become quite rare since 2018 and seem unlikely to make a resurgence, so this issue may have resolved itself.

## Limited Message Signing Support
Messages are signed with a private key, and that signature reveals the public key.
There's no protocol/standard for signing with `m-of-n` bitcoin pubkeys (which are represented in address format as a script hash of those pubkeys).
You can read more [here](https://github.com/spesmilo/electrum/issues/2408).

However, this feature is rarely used in single-key setups, and if it were important a workaround could easily be implemented.
