---
title: Setup Cobo Vault
---

#### Verify Your Firmware Before Installing
Confirm that the sha256 hash digest of the file you downloaded matches what is expected:

Linux:
```
$ shasum -a 256 V1.4.0-BTC_Only.zip 
6956715f43893da00f41ff6e3da5403c908e853f35ad85b80ab75af59b3f1faf  V1.4.0-BTC_Only.zip
```
Windows:
```
> certutil -hashfile V1.4.0-BTC_Only.zip sha256
SHA256 hash of V1.4.0-BTC_Only.zip:
6956715f43893da00f41ff6e3da5403c908e853f35ad85b80ab75af59b3f1faf
CertUtil: -hashfile command completed successfully.
```

(This is accurate for `v.1.4.0` but will become stale for future releases. Calculate the hash digest of the new file and confirm that it matches what's published by the company.)

#### Generate your own seedphrase

Using seedpicker:  
https://support.cobo.com/hc/en-us/articles/360060645233-Construct-Your-Own-Recovery-Phrase

Using dice:  
https://support.cobo.com/hc/en-us/articles/360050478133-How-to-Use-Dice-to-Generate-Your-Recovery-Phrase

## Not Perfect
No device is perfect and this one is no exception.
Read more about known issues with Cobo Vault [here](/known-issues/hardware/cobo).
