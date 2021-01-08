---
title: Verifying a Receive Address
---

## Confirm You Control the Wallet
Because multisig schemes require `m-of-n` signatures, you must verify a new receive address on `m-of-n` trusted devices before receiving funds.
Otherwise, you could fall prey to a clever attack.

#### Example Attack

Let's say you have a `2-of-3` multisig (with seeds A, B, and C), and your host computer is infected with malware (we always assume this to be true and it's the reason for using hardware wallets in the first place).
Unfortunately for you, one of your hardware wallets is compromised/fake.
Here is how you could be tricked into using an address you don't actually control to receive funds:

1. Specter on your host computer (malware) displays a `2-of-3` receiving address, where *none* of your hardware wallets are actually part of the multisig scheme.
1. You pull out hardware wallet A (also malware!) and it (falsely) confirms the same receive address on its trusted display.
1. You then deposit funds to this address, and are confused when they magically vanish :(

A similar attack is possible where < `m` of our keys are part of the multisig, but your attacker still controls at least `m` keys and can steal your funds as soon as they arrive.
For example, you might verify a `3-of-5` address on the trusted display of 2 hardware wallets, but your attacker could still control the other 3 keys and rob you remotely.

Smart hardware wallets implement a defense against this where they register all extended public key information when the wallet is setup, which can make this attack **much** harder to pull off.

#### How Bad Is This

The bullet-proof solution is to verify your receive addresses on a quorum of trusted displays.
Not only does this eliminate the risk, but it serves as a redundant check when making a deposit.

While perhaps a little counter-intuitive, this is an excellent safety feature as redundant verification applies to single-key signature users as well.
Verification in single-key schemes adds new issues due to the inherent single point of failure in single-key signature schemes;
you now have your seed floating around in multiple places for verification, and suffering a breach in any one of these is enough to lose all your funds!

#### Potential Mitigation
This guide spells out a [less secure approach](/verify-receive-address/advanced) that is available for users who choose to sacrifice some convenience for security.

## Confirm You Can Retrieve the Key

TODO: add content about bip32 paths.
