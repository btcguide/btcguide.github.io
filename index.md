---
title: 10x Security Bitcoin Guide
subtitle: How to store bitcoin without any single point of failure.
author: Michael Flaxman
lang: "en"
titlepage: true
urlcolor: blue
colorlinks: true
...

# Preface

## Purpose
Multisig security is a difference in kind and not in degree. It affords you the ability to avoid loss while making 1 (or more) catastrophic failures in securing your bitcoin. By using a security system that is fault-tolerant, you can move much faster (with less caution) through each step and still attain far higher levels of security vs any single-key system. This guide will show you how.

The purpose of this guide is to make multisig accessible to a tech-savvy audience who does not write code. While it may be helpful if you are comfortable using the command line (especially for some of the optional advanced steps), it is not required.

## Project Status
This guide is currently a work in progress. While the ultimate goal is for the process to be easy enough for non-technical users, there may be kinks to work out. Pull requests are welcome.

![compensation file](/compensation.md){.markdown2}

![contributors file](/contributors.md){.markdown2}

![disclaimer file](/disclaimer.md){.markdown2}

![why multisig file](/_pages/why-multisig.md){.markdown}

## Why Multisig Advanced?

![why-multisig-advanced file](/_pages/why-multisig-advanced.md){.markdownskip_34}

![quorum file](/_pages/quorum.md){.markdown2}

## Pick Quorum Advanced

![quorum-advanced file](/_pages/quorum-advanced.md){.markdownskip_23}

![equipment file](/_pages/equipment.md){.markdown2_23}

![equipment-advanced file](/_pages/equipment-advanced.md){.markdownskip_23}

![setup-computer1 file](/_pages/setup-computer/index.md){.markdown}

![setup-computer2 file](/_pages/setup-computer/computer.md){.markdown2}

### Setup Computer Overview Advanced

![setup-computer3 file](/_pages/setup-computer/computer-advanced.md){.markdownskip}

![setup-computer4 file](/_pages/setup-computer/bitcoin-node.md){.markdown2}

![setup-computer5 file](/_pages/setup-computer/bitcoin-node-advanced.md){.markdownskip_23}

![setup-computer6 file](/_pages/setup-computer/specter.md){.markdown2}

![setup-computer7 file](/_pages/setup-computer/specter-advanced.md){.markdownskip}

![setup-wallets1 file](/_pages/setup-wallets/index.md){.markdown_42}

![setup-wallets2 file](/_pages/setup-wallets/advanced.md){.markdownskip}

![setup-wallets3 file](/_pages/setup-wallets/paper.md){.markdown2_23}

## Setup Paper Wallet Advanced

![setup-wallets4 file](/_pages/setup-wallets/paper-advanced.md){.markdownskip_23}

![setup-wallets5 file](/_pages/setup-wallets/cobo.md){.markdown2_23}

![setup-wallets6 file](/_pages/setup-wallets/cobo-advanced.md){.markdownskip_23}

![setup-wallets7 file](/_pages/setup-wallets/coldcard.md){.markdown2_23}

![setup-wallets8 file](/_pages/setup-wallets/coldcard-advanced.md){.markdownskip_23}

![setup-wallets9 file](/_pages/setup-wallets/coordinate-multisig.md){.markdown2_23}

![setup-wallets10 file](/_pages/setup-wallets/coordinate-multisig-advanced.md){.markdownskip_23}

![verify-receive-address1 file](/_pages/verify-receive-address/index.md){.markdown}

## Verify Receive Address Advanced

![verify-receive-address2 file](/_pages/verify-receive-address/advanced.md){.markdownskip_23}

![verify-receive-address3 file](/_pages/verify-receive-address/specter.md){.markdown2_23}

![verify-receive-address4 file](/_pages/verify-receive-address/specter-advanced.md){.markdownskip_23}

![verify-receive-address5 file](/_pages/verify-receive-address/cobo.md){.markdown2_23}

![verify-receive-address6 file](/_pages/verify-receive-address/cobo-advanced.md){.markdownskip_23}

![verify-receive-address7 file](/_pages/verify-receive-address/coldcard.md){.markdown2_23}

![verify-receive-address8 file](/_pages/verify-receive-address/coldcard-advanced.md){.markdownskip_23}

![backup-wallet1 file](/_pages/backup-wallet/index.md){.markdown}

![backup-wallet2 file](/_pages/backup-wallet/advanced.md){.markdownskip}

![backup-wallet3 file](/_pages/backup-wallet/seeds.md){.markdown2}

![backup-wallet4 file](/_pages/backup-wallet/seeds-advanced.md){.markdownskip}

![backup-wallet5 file](/_pages/backup-wallet/public-keys.md){.markdown2}

![backup-wallet6 file](/_pages/backup-wallet/public-keys-advanced.md){.markdownskip}
 
![send-bitcoin1 file](/_pages/send-bitcoin/index.md){.markdown}
 
![send-bitcoin2 file](/_pages/send-bitcoin/advanced.md){.markdownskip_42}

![emergency-recovery1 file](/_pages/emergency-recovery/index.md){.markdown}
 
![emergency-recovery2 file](/_pages/emergency-recovery/advanced.md){.markdownskip}

# Known Issues & Benefits

## 10x Security Guide

![known-issues1 file](/_pages/known-issues/software/specter.md){.markdown3}

![known-issues2 file](/_pages/known-issues/hardware/coldcard.md){.markdown3}

![known-issues3 file](/_pages/known-issues/hardware/cobo.md){.markdown3}

![known-issues4 file](/_pages/known-issues/software/seedpicker.md){.markdown3}

![known-issues5 file](/_pages/known-issues/multisig.md){.markdown3}

![known-issues6 file](/_pages/known-issues/complexity.md){.markdown3_24}

![known-issues7 file](/_pages/known-issues/hw-vendors.md){.markdown3}

![known-issues8 file](/_pages/known-issues/verify-receive-address.md){.markdown3_23}

![known-issues9 file](/_pages/known-issues/cost.md){.markdown3_24}

![known-issues10 file](/_pages/known-issues/seeds-and-privacy.md){.markdown3}

## Hosted Services

![hosted1 file](/_pages/known-issues/hosted/casa.md){.markdown3}

![hosted2 file](/_pages/known-issues/hosted/unchained.md){.markdown3}

## Other Coordination Software

![software1 file](/_pages/known-issues/software/electrum.md){.markdown3}

![software2 file](/_pages/known-issues/software/caravan.md){.markdown3}

![software3 file](/_pages/known-issues/software/sparrow.md){.markdown3}

## Hardware Wallets

![hardware1 file](/_pages/known-issues/hardware/specter-diy.md){.markdown3}

![hardware2 file](/_pages/known-issues/hardware/trezor.md){.markdown3}

![hardware3 file](/_pages/known-issues/hardware/ledger.md){.markdown3}

![hardware4 file](/_pages/known-issues/hardware/keepkey.md){.markdown3}

![hardware5 file](/_pages/known-issues/hardware/bitbox.md){.markdown3}

## Other Protocols

![protocols1 file](/_pages/known-issues/protocols/advanced-single-sig.md){.markdown3}

![protocols1 file](/_pages/known-issues/protocols/glacier.md){.markdown3}

![protocols1 file](/_pages/known-issues/protocols/yeti.md){.markdown3}

