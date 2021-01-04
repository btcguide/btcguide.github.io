### KeepKey

#### Warning: Experts Only!
For the reasons below, **we currently do not recommend using this hardware wallet for ordinary users**.
Expert users may find reason to add this wallet to their multisig quorum and get [the additive security benefits of multisig](#why-multisig).

---


#### Fork of Trezor
This hardware wallet was launched by forking Trezor's open-source code.
While forking open-source projects is normal in software development, if the forked project is not more actively maintained than the original it is *less* likely to catch bugs and upgrade to support new features.
For this reason, we consider the Trezor superior to KeepKey in most ways, but do be mindful that [Trezor's Known Issues](#trezor) likely apply to this device as well.

#### Only 1 Button
Only 1 button.
This makes it impossible to enter a recovery seed / passphrase on the device.
They do have some clever UX options for you to do this on your host computer [using a substitution cipher](https://keepkey.zendesk.com/hc/en-us/articles/360001449050-How-Do-I-Recover-on-My-KeepKey-) but it is difficult/confusing and discourages use.

#### Stateless Wallets are Not Well-Suited for Multisig
To get the benefits of multisig without taking on new risks, you must [verify a receive address](#verify-receive-address) before use.
Stateless wallets can only verify that this hardware controls `1` of your `m` (as in `m-of-n`) keys.
You can read more about this attack and potential mitigations [here](#verify-receive-address).
While stateful wallets do not 100% eliminate this attack vector, they provide an extra layer of security where it is needed most.


#### Wired "Airgap"
This device must be connected to your computer in order to function.
Wired connections are bad because the USB stack presents massive attack vectors; the whole point of hardware wallets is to keep your keys offline.


#### Complex Driver Configuration
In order to connect a hardware wallet to your computer (thus breaking the "airgap"), your computer needs to be configured to interact with it.
Advanced users will need to setup [udev rules](https://github.com/spesmilo/electrum/tree/master/contrib/udev).
Less-advanced users can use [their updater app](https://beta.shapeshift.com/updater-download) (warning: [this will share your xpub with their servers](https://keepkey.zendesk.com/hc/en-us/articles/360004847419-KeepKey-Privacy-Policy)).

#### Altcoin-Focused
In theory, supporting altcoins does not fundamentally weaken bitcoin security.
In practice, the more complex a codebase is the more likely a security bug will be introduced (or go undetected).
These wallets are liable to be slow to upgrade their security, and [bit rot](https://en.wikipedia.org/wiki/Software_rot) is more likely to set in.

---

#### Alternate Use: U2F Key
This wallet can be converted to a [Universal 2nd Factor (U2F)](https://en.wikipedia.org/wiki/Universal_2nd_Factor) key for logging into trusted third parties like Twitter, Google, Facebook, LinkedIn, DropBox, etc.
While this won't have any direct impact on the security of bitcoin private keys that are under your physical control, it does significantly impair hackers' ability to wreak havoc on your digital life.

*If you use this as a U2F key, you should probably use it only for that purpose and not for storing bitcoin*.
There are already many reputable U2F hardware providers and their dedicated products are very affordable, so it is *not* recommended to buy this device for use as a U2F key.
However, U2F keys can be a good way to make use of a retired bitcoin hardware wallet.

