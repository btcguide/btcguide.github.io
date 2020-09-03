---
title: Install Specter-Desktop
---

#### Enable Merkle Proofs
That way, if your node is compromised it will have a hard time tricking you into believing you've received a fake payment (while still preserving your privacy):
1. Visit Bitcoin Core settings page and click on `General` tab ([this link](http://localhost:25441/settings/general) should work if you have Specter-Desktop running).
2. Toggle `Validate Merkle Proofs` button and hit `Save`.

TODO: add screenshot

This is a nice-to-have feature on nodes hosted locally, and very important for nodes hosted in the cloud.
Unfortunately, it is currently [only possible on non-pruned nodes](https://github.com/cryptoadvance/specter-desktop/pull/334#issuecomment-685981023).

#### Build from Source
Follow [these instructions](https://github.com/cryptoadvance/specter-desktop#how-to-run) to build Specter-Dekstop from source.
More details [here](https://github.com/cryptoadvance/specter-desktop/blob/master/DEVELOPMENT.md).

#### Run Behind Tor
TODO: add link
