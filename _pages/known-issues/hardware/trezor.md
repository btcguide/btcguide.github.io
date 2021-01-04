### Trezor

#### Warning: Experts Only!
For the reasons below, **we currently do not recommend using this hardware wallet for ordinary users**.
Expert users may find reason to add this wallet to their multisig quorum and get [the additive security benefits of multisig](#why-multisig).

---

#### Trezor Bridge Warning
Default usage leaks your xpub to Trezor's servers (and whoever they share records with).
This is [estimated at 99% of their users](https://coldbit.com/how-to-use-a-trezor-without-leaking-your-balance-and-transaction-history-to-third-parties/).
This has severe privacy implications and some [potential security implications](https://www.reddit.com/r/Bitcoin/comments/5csles/what_are_the_security_risks_of_sharing_xpub/).

#### Stateless Wallets are Not Well-Suited for Multisig
To get the benefits of multisig without taking on new risks, you must [verify a receive address](#verify-receive-address) before use.
Stateless wallets can only verify that this hardware controls `1` of your `m` (as in `m-of-n`) keys.
You can read more about this attack and potential mitigations [here](#verify-receive-address).
While stateful wallets do not 100% eliminate this attack vector, they provide an extra layer of security where it is needed most.


#### Limited BIP174 Support
Partially Signed Bitcoin Transactions (PSBT or [BIP174](https://github.com/bitcoin/bips/blob/master/bip-0174.mediawiki)) was proposed in July 2017 and merged into Bitcoin Core [in October 2018](https://bitcoin.org/en/release/v0.17.0#bip-174-partially-signed-bitcoin-transactions-support).
Wallets that don't update their software could easily become abandonware.

You can track Trezor's progress on this issue [here](https://github.com/trezor/trezor-firmware/issues/49).

#### Wired "Airgap"
This device must be connected to your computer in order to function.
Wired connections are bad because the USB stack presents massive attack vectors; the whole point of hardware wallets is to keep your keys offline.

Trezor's Model T [does not use the built-in SD card for transacting](https://www.hardware-wallets.net/faq/what-is-the-sd-card-slot-on-the-trezor-model-t-for/).

#### No Keyboard
With only 2 buttons, it's very hard to enter a 24-word seed or strong passphrase.
You can read about advanced recovery steps on the screen for both Trezor One [here](https://blog.trezor.io/using-advanced-recovery-on-trezor-4af0eb53c3bb) and for the Model T [here](https://blog.trezor.io/learn-about-trezor-recovery-seed-offline-backup-fe235873c69f).

To mitigate this, Trezor can plug into your computer and use clever tricks to "securely" enter text on your computer, but is not ideal from a security/UX perspective.

#### No Physical Security
If a clever attacker with ~$100 USD of equipment gains *physical* access to your Trezor (model T or Trezor One) they can extract your seed.
You can read more about this [here](https://donjon.ledger.com/Unfixable-Key-Extraction-Attack-on-Trezor/) and [here](https://blog.kraken.com/post/3662/kraken-identifies-critical-flaw-in-trezor-hardware-wallets/) (Trezor's response [here](https://blog.trezor.io/our-response-to-ledgers-mitbitcoinexpo-findings-194f1b0a97d4)).

These attacks can be mitigated with a strong passphrase, and cannot be exploited remotely (must have physical access to your Trezor).

#### Altcoin-Focused
In theory, supporting altcoins does not fundamentally weaken bitcoin security.
In practice, the more complex a codebase is the more likely a security bug will be introduced (or go undetected).
These wallets are liable to be slow to upgrade their security, and [bit rot](https://en.wikipedia.org/wiki/Software_rot) is more likely to set in.

Trezor does have [a bitcoin-only firmware](https://shop.trezor.io/btc-only/), though [this is not a perfect solution](https://www.reddit.com/r/TREZOR/comments/dccdxq/bitcoinonly_firmware_available/).
TODO: find better explainer link.

#### Complex Driver Configuration
In order to connect a hardware wallet to your computer (thus breaking the "airgap"), your computer needs to be configured to interact with it.
Advanced users will need to setup [udev rules](https://github.com/spesmilo/electrum/tree/master/contrib/udev).

Less-advanced users can use the Trezor Bridge installer [here](https://wiki.trezor.io/Trezor_Bridge) (see Trezor Bridge warning above).

#### Slow To Sign Multisig Transactions
It is unclear why this is the case:  
<https://twitter.com/lopp/status/1308082310038732801>

#### Have Made Breaking Changes in the Past
In June 2020, [BTCPay users found they were no longer able to access their funds](https://twitter.com/BtcpayServer/status/1268544252247715849).
Recovery is possible; savvy users can refuse to upgrade their firmware (and forego potentially valuable security updates) in the first place and expert users can load in their own firmware.
You can read more about this [here](https://github.com/trezor/trezor-firmware/issues/1044).

#### Written in Python
This is not inherently a problem (python is a good general-purpose programming language!), but several hardware wallets with varying level of multisig support are also written in python, including: Trezor, Coldcard, KeepKey, Specter-DIY, and Passport.
These hardware wallets share *a lot* of upstream code, and it's possible that if a vulnerability were discovered in one it would be present in the others.


---

#### Alternate Use: U2F Key
This wallet can be converted to a [Universal 2nd Factor (U2F)](https://en.wikipedia.org/wiki/Universal_2nd_Factor) key for logging into trusted third parties like Twitter, Google, Facebook, LinkedIn, DropBox, etc.
While this won't have any direct impact on the security of bitcoin private keys that are under your physical control, it does significantly impair hackers' ability to wreak havoc on your digital life.

*If you use this as a U2F key, you should probably use it only for that purpose and not for storing bitcoin*.
There are already many reputable U2F hardware providers and their dedicated products are very affordable, so it is *not* recommended to buy this device for use as a U2F key.
However, U2F keys can be a good way to make use of a retired bitcoin hardware wallet.

You can read more about this on [Trezor's Website](https://blog.trezor.io/secure-two-factor-authentication-with-trezor-u2f-e940fd5a60af).

---

#### Don't Be Discouraged
Security is not a binary, and no device is 100% secure.
Remember that [multisig security is additive](#why-multisig), and using this device as part of a proper multisig setup can *substantially* improve your bitcoin security.

