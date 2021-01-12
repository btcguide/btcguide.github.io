---
title: Install Specter-Desktop
---

#### Enable Merkle Proofs
This optional feature in Specter-Desktop provides protection from a compromised Bitcoin Core node tricking you into believing you received a fake payment. Enabling this feature should be considered "nice to have" for locally hosted Bitcoin Core, but **very important** for cloud-hosted Bitcoin Core. Note that enabling this feature does not harm your privacy.

To enable:

1. Navigate to the Bitcoin Core settings in Specter-Desktop and click on the `General` tab ([this link](http://localhost:25441/settings/general) should work if you have Specter-Desktop running).
1. Enable the `Validate Merkle Proofs` option and click `Save`.

TODO: add screenshot

Note that this feature is currently [only possible on non-pruned nodes](https://github.com/cryptoadvance/specter-desktop/pull/334#issuecomment-685981023).

#### Build from Source
Follow [these instructions](https://github.com/cryptoadvance/specter-desktop#how-to-run) to build Specter-Desktop from source.
More details [here](https://github.com/cryptoadvance/specter-desktop/blob/master/DEVELOPMENT.md).

#### Run Behind Tor
TODO: add link


{% include next_steps.md next_url="/setup-wallets" next_name="Setup Hardware Wallets" %}
