---
title: Verifying a Receive Address
---

## Confirm You Control the Wallet
Because multisig schemes require `m-of-n` signatures, you must verify a new receive address on **at least** `m` trusted devices before receiving funds.
Otherwise, you could fall prey to a clever attack.

## Example Attack

Let's say you have a `2-of-3` multisig (with seeds A, B, and C), and your host computer is infected with malware.
Remember that we always assume your host computer running Specter-Desktop is infected with malware as this is the problem hardware wallets exist to solve.

#### Simple Attack
Unfortunately for you, `1` of your hardware wallets is also compromised/fake.
When you use Specter-Desktop to lookup one of your bitcoin addresses (to receive funds on) a clever attacker could replace it with one that they control.
Here is how the attack work:

1. Specter-Desktop on your host computer (assumed to be malware infected) displays a `2-of-3` receiving address, where *none* of your hardware wallets are actually part of the multisig scheme.
1. You pull out hardware wallet A (also malware infected) and it falsely confirms the same receive address on its trusted display.
1. You then deposit funds to this address **without checking on any other hardware wallet displays**.
1. You discover that the bitcoin you thought was sent to you was sent to your attacker :(

#### Complex Attack
A similar attack is possible where < `m` of your seeds are part of the multisig wallet, but your attacker controls `>= m` seeds.
If your hardware wallets are stateless (like Trezor), then this attack is possible even if none of your hardware wallets are compromised!

1. Specter-Desktop on your host computer (assumed to be malware infected) displays a `2-of-3` receiving address, where only `1` of your hardware wallets are actually part of the multisig scheme.
1. You pull out hardware wallet A and it falsely confirms the same receive address on its trusted display, as it really is `1` hardware wallet (seed A) in your `2-of-3` (which also includes B and C).
1. You then deposit funds to this address **without checking on any other hardware wallet displays** (B and C).
1. You discover that the bitcoin you thought was sent to you was sent to your attacker, as they control B and C (which is `2-of-3` of the seeds needed to spend your bitcoin without your permission).

#### Defense
Smart hardware wallets implement a defense against this where they register all extended public key information when the wallet is setup, which can make this attack **much** harder to pull off.
If you're willing to trust one of those hardware wallets exclusively (potentially creating a single point of failure), you can choose to accept the result on your hardware wallet's trusted display.

If you have a large-value transaction, you should always confirm the address on *at least* `m` trusted displays.
If you have a very large-value transaction, you may want to confirm the address on *all* `n` trusted displays.
Not only does this eliminate the risk, but it serves as a redundant check when making a deposit.

While perhaps a little counter-intuitive, this is an excellent safety feature as redundant verification applies to single-key signature users as well.
Verification in single-key schemes adds new issues due to the inherent single point of failure in single-key signature schemes; you now have your seed floating around in multiple places for verification, and suffering a breach in any one of these is enough to lose all your funds!

#### Potential Mitigation
This guide spells out a [less secure approach](/verify-receive-address/advanced) that is available for users who choose to sacrifice some convenience for security.

## Confirm You Can Retrieve the Key

TODO: add content about bip32 paths.
