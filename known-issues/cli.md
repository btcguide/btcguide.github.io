---
title: Known Issues - Command Line Usage Required
---

The ultimate goal of this guide is to make multisig possible for technically-minded users, but make everything accessible via normal GUIs and not require useage of the command line.
Here are what needs to happen for that to be possible.

#### Spectre Downloadable Binary
Currently, Spectre must be downloaded and run from the command line, but there is
[an open pull request](https://github.com/cryptoadvance/specter-desktop/pull/273)
to add this functionality.

You can see more about this step [here](/spectre-config)

#### Calculating Root Fingerprint
[SeedPicker currently doesn't display the root fingerprint](https://github.com/merland/seedpicker/issues/23), [the existing tools](setup-wallets/paper) require using the command line.
