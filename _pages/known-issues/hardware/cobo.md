---
title: Cobo Vault
---

#### Not Fully Open-Source
The device has been audited, but is not fully open-source for various reason.
See more details on [their blog](https://medium.com/cobo-vault/on-open-source-and-transparency-7f516f80b8d).

If firmware cannot be built from source reproducibly, then users are merely trusting that the binaries the software developers sign are actually derived from the correct source.
Unless users build the firmware themselves, this is essentially the same tradeoff as just using closed source code.
Note that developers working on the project needn't be malicious for issues to occur as their computers could be hacked.

#### Supply Chain Interference
The [company][1], team, and likely the manufacturing and assembly are conducted in China. Even with the team and a co-founder's wealth of engineering experience from Google, Facebook, and IBM, the supply chain could be a point of risk.

As discovered by Amazon in a [Bloomberg report][2] in 2015, there have been companies with unknown microchips added to their products alleged to be from the Chinese government. Another risk is backdoors such as [Huawei's routers][3] between 2009 - 2011, BLU Android phones [reported by Ars Technica][4] in 2016, or with [Huawei phones][5] in 2020.

As [The Intercept notes][6], this is not unique to Chinese supply chains, as these backdoors may take place in many other jurisdictions as well. In addition, there is not specific information on this occuring with hardware wallets manufactured in China. However, given the secure nature of storing assets the supply chain origins are important to consider.

[1]: https://www.linkedin.com/company/cobo-official/
[2]: https://www.bloomberg.com/news/features/2018-10-04/the-big-hack-how-china-used-a-tiny-chip-to-infiltrate-america-s-top-companies
[3]: https://www.theverge.com/2019/4/30/18523701/huawei-vodafone-italy-security-backdoors-vulnerabilities-routers-core-network-wide-area-local
[4]: https://arstechnica.com/information-technology/2016/11/chinese-company-installed-secret-backdoor-on-hundreds-of-thousands-of-phones/
[5]: https://arstechnica.com/tech-policy/2020/02/us-gave-allies-evidence-that-huawei-can-snoop-on-phone-networks-wsj-says/
[6]: https://theintercept.com/2019/01/24/computer-supply-chain-attacks/

#### Built on General Purpose OS (Android)
Most hardware wallets use special purpose operating systems to reduce their attack surface (and improve performance).
Cobo did harden their Android installation, but the attack surface is still much larger.

{% include hw/shitcoins.md %}
Cobo does have [a bitcoin-only firmware](https://cobo.com/hardware-wallet), though this is not a perfect solution (TODO: add link).


#### Mild Annoyances
These are all things that are annoying but not show-stoppers:

* **Slow boot time**. The fingerprint reader does help make up for this!
* **Long PIN can be annoying to enter on keyboard**. However, this only matters when the fingerprint reader fails.
* **The microSD card is hard to remove**. A simple pair of tweezers solves the problem. More importantly, the strong QR-code airgap means you only have to use SD card to update the firmware.


{% include hw/encouragement.md %}
