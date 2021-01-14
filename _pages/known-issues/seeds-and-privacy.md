---
title: Seeds and Privacy
---

In the event that an unauthorized third party gains access to a single seed and knows the corresponding bip32 path used, they will be able to calculate the child public keys that it would (likely) contribute to a multisig scheme.
This means that if this third party is savvy, they can scan the bitcoin blockchain to see all the transactions that these addresses *previously* controlled (meaning that their public key was part of the quorum of addresses that could spend those bitcoin).
We say "previously" because this third party cannot know which multisig addresses (if any) that key currently participates in.

Keep in mind that this issue already exists with single-key signatures and is much worse: an unauthorized third party who gains access to your seed can not only see your previously used addresses, they can also see your current ones and, more importantly, *steal* all your funds.
So, while this is a negative of bitcoin multisig it is still strictly superior to single-key schemes.

#### Option A: Nonstandard BIP32 Path
One solution to this is to use a non-standard bip32 path as a way to hide your activity on the blockchain from anyone who gains unauthorized access to a seed.
That way if a 3rd party gains unauthorized access to a seed, they can't see how much it was ever protecting (to spend bitcoin they need access to `m` seeds).

This has the added benefit that it could be combined with Shamir's Secret Sharing Scheme to make it so that someone would have to break into multiple secure locations in order to get access to private information.
This standard is still being developed, especially since many hardware wallets currently do not support non-standard paths (see [Verifying a Receive Address](/known-issues/verify-receive-address#confirm-you-can-retrieve-the-key)).

#### Option B: Store Passphrases Separate from Seeds
This solves one problem and creates another: now you have to store those passphrases securely.
This creates a whole other set of security tradeoffs.
We recommend this **for experts only** and is outside the scope of this guide.
