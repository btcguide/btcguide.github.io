---
title: KeepKey
---

{% include hw/experts.md %}

#### Fork of Trezor
This hardware wallet was launched by forking Trezor's open-source code.
While forking open-source projects is normal in software development, if the forked project is not more actively maintained than the original it is *less* likely to catch bugs and upgrade to support new features.
For this reason, we consider the Trezor superior to KeepKey in most ways, but do be mindful that [Trezor's Known Issues](/known-issues/hardware/trezor) likely apply to this device as well.

#### Only 1 Button
Only 1 button.
This makes it impossible to enter a recovery seed / passphrase on the device.
They do have some clever UX options for you to do this on your host computer [using a substitution cipher](https://keepkey.zendesk.com/hc/en-us/articles/360001449050-How-Do-I-Recover-on-My-KeepKey-) but it is difficult/confusing and discourages use.

{% include hw/stateless.md %}

{% include hw/wired_airgap.md %}

{% include hw/udev.md %}Less-advanced users can use [their updater app](https://beta.shapeshift.com/updater-download) (warning: [this will share your xpub with their servers](https://keepkey.zendesk.com/hc/en-us/articles/360004847419-KeepKey-Privacy-Policy)).

{% include hw/shitcoins.md %}

{% include hw/u2f.md %}
