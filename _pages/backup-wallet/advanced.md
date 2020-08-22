---
title: Backup Wallet - Advanced Instructions
---

#### Protect Your Privacy
Expert users may notice a potential privacy issue.

In the event that an authorized third party gains access to a single seed and knows the corresponding bip32 path used, they will be able to calculate the child public keys that it would (likely) contribute to a mulstig scheme.
This means that if this third party is savvy, they can scan the bitcoin blockchain to see all the transactions that these address *previously* controlled (meaning that their public key was part of the quorum of addresses that could spend those bitcoin).
We say "previously" because this third party cannot know which multisig addresses (if any) that key currently participates in.

The easy solution to this is to use a non-standard bip32 path as a way to hide your activity on the blockchain from anyone who gains unauthorized access to a seed.
That way if a 3rd party gains unauthorized access to a seed, they can't see how much it was ever protecting (to spend bitcoin they need access to `m` seeds).
A new scheme is currently being developed to protect this privacy (not security) information using Shamir's Secret Sharing Scheme, but for now this is an outstanding issue with multisig security.

Keep in mind that this issue already exists with single-key signatures and is much worse: an unauthorized third party who gains access to your seed can not only see your prevously used addresses, they can also see your current ones and more importantly *steal* all your funds.
So, while this is a negative of bitcoin multisig it is still strictly superior to single-key signatures.
