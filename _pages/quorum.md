## Pick Quorum

The main theme of this guide is to create fault tolerance by **avoiding a single point of failure**.
This means multiple signatures ("multi-sig") to move your bitcoin is an absolute **must**.

We’re recommending `2-of-3` by default, as we’ve found it’s an excellent balance of security/usability for most use-cases.
Once you’ve got that down, you may want to pick larger numbers in the future (see [advanced section](#pick-quorum-advanced)).

You’ll need three hardware wallets, made by three different manufacturers.
In order to avoid having to buy three hardware wallets
(and because there are only [very few high-quality hardware wallets with good multisig support](#hardware-wallet-vendors)),
we’ll generate this third key less securely on your computer **offline**.

