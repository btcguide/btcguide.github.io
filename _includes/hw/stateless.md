#### Stateless Wallets are Not Well-Suited for Multisig
To get the benefits of multisig without taking on new risks, you must [verify a receive address](verify-receive-address/) before use.
Stateless wallets can only verify that this hardware controls `1` of your `m` (as in `m-of-n`) keys.
You can read more about this attack (and potential mitigations) [here](/known-issues/verify-receive-address).
While stateful wallets do not 100% eliminate this attack vector, they provide an extra layer of security where it is needed most.
