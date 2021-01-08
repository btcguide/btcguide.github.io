---
title: Coordinate Multisig
---

## Verify M, N, and Pubkeys
Even if you have the correct `m-of-n` (`2-of-3`), you need to be sure that the public keys used correspond to the private keys you actually control!

#### Cobo
You can verify this when [setting up your Cobo](../setup-wallets/cobo), or go to `Multisig Wallet` > `Wallet Name` > `Wallet Info` anytime:  
![](/assets/img/coordinate-multisig-view-policy-cobo.jpeg){:width="35%" class="border_image"}

#### Coldcard
On your Coldcard, enter: `Settings` > `Multisig Wallets` > `Your Wallet Name` >  `View Details`:  
![](/assets/img/coordinate-multisig-view-policy-coldcard.jpeg){:width="35%" class="border_image"}

Because Coldcard uses `xpub...` while Specter/Cobo use the newer `Zpub...` standard, the easiest way to do this in practice is to [verify a single receive address on the coldcard](../verify-receive-address/coldcard).

Expert users may be able to convert between `xpub` and `Zpub` with a tool like [Jameson Lopp's XPub Converter](https://jlopp.github.io/xpub-converter/) to verify extended public keys.
RTFM for more info: <https://coldcardwallet.com/docs/multisig>

#### Paper
We want to verify that the pubkey from this piece of paper has been included in our quorum.
Confirm that your `Zpub...` from the [Setup Paper Wallet Step](../setup-wallets/paper) is included on your Cobo Vault (above).


#### Specter-Desktop:
We can't trust this device (we have to assume it's malware), but it's still a useful sanity-check:  
![](/assets/img/coordinate-multisig-view-policy-specter.png){:width="70%" class="border_image"}



{% include next_steps.md next_url="/verify-receive-address" next_name="Verify Receive Address" %}
