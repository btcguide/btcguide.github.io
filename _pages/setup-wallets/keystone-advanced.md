---
title: Setup Keystone
---

#### Verify Your Firmware Before Installing
Confirm that the sha256 hash digest of the file you downloaded matches what is expected:

###### Linux:
```shell
$ sha256sum  update.zip 
8fe9e8609854d6a081c06322be656093bace41456cd9bb39f2d0ed72dcede133  update.zip
```
###### Windows:
```shell
> certutil -hashfile update.zip sha256
SHA256 hash of update.zip:
8fe9e8609854d6a081c06322be656093bace41456cd9bb39f2d0ed72dcede133
CertUtil: -hashfile command completed successfully.
```
###### MacOS:
```shell
$ shasum -a 256 update.zip 
8fe9e8609854d6a081c06322be656093bace41456cd9bb39f2d0ed72dcede133  update.zip
```

(The above hashes are accurate for `v1.1.1` but will become stale for future releases. Calculate the hash digest of the new file and confirm that it matches what's published by the company.)

#### Generate your own seedphrase

Using seedpicker:  
https://support.keyst.one/advanced-features/recovery-phrase/construct-own-recovery-phrase

Using dice:  
https://support.keyst.one/advanced-features/recovery-phrase/use-dice-to-generate-recovery-phrase

## Not Perfect
No device is perfect and this one is no exception.
Read more about known issues with Keystone [here](/known-issues/hardware/keystone).


{% include next_steps.md next_url="coldcard" next_name="Setup Coldcard" %}
