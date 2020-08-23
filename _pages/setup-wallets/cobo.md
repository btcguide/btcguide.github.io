---
title: Setup Cobo Vault
---

## Upgrade Firmware
Cobo Vault firmware version later than `V1.3.0` (BTC-Only) supports multisig via PSBT.

Follow the instructions here to update your firwmare:
[https://support.cobo.com/hc/en-us/articles/360046064053-Upgrading-Firmware](https://support.cobo.com/hc/en-us/articles/360046064053-Upgrading-Firmware)

## Setup Wallet
TODO: add instructions for generating seed, setting PIN, etc

## Export Extended Public Key to MicroSD
1. Insert the microSD card into Cobo Vault
2. Menu > Multisig Wallet > press the [•••] button on the top right > Show/Export Zpub
3. Export All > Export > save the Zpub, Ypub and xpub of recovery phrase A as a `.json` file to microSD card
TODO: add photos
TODO: can specter do this over QR airgap?


{% include advanced_config.md %}
