---
title: Backup Public Keys
---

To spend bitcoin, although only `m` seeds are required, you must also have _all_ `n` public keys.
For this reason, we recommend saving **many** "public key sets", each one including *all* of the public keys involved in your quorum.

Your "public key sets" are sensitive in terms of privacy - anyone with access to a copy can view your balance and full transaction history - but do not pose a loss-of-funds risk on their own.

#### Save to USB Drive or DVD
Make many copies and store in many locations.
We recommend you keep a copy of *all* public keys (and related metadata) with *each* seed.

#### Save on Your Computer
On Specter-Desktop, select your multisig wallet (e.g. `Redundant Multisig`) > `Settings` > `Export` > `Save Backup PDF`

#### Save Online
Save this data to various cloud providers (Dropbox, Google Drive, iCloud) or backup services (Mozy, Carbonite, Backblaze, etc.) that you may already use.
Keep in mind: as stated above, anyone with access to a cleartext (unencrypted) "public key set" (such as a snooping employee of a cloud provider) can view your balance and full transaction history.


{% include next_steps.md next_url="/send-bitcoin" next_name="Send Bitcoin" %}
