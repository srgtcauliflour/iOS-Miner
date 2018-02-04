# iOS Miner

[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![GitHub issues](https://img.shields.io/github/issues/Mrtops/iOS-Miner.svg)](https://github.com/Mrtops/iOS-Miner/issues)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/Mrtops/iOS-Miner.svg)](https://github.com/Mrtops/iOS-Miner/pulls)
[![GitHub release](https://img.shields.io/github/release/Mrtops/iOS-Miner.svg)](https://github.com/Mrtops/iOS-Miner/releases)
[![Github All Releases](https://img.shields.io/github/downloads/Mrtops/iOS-Miner/total.svg)](https://github.com/Mrtops/iOS-Miner/releases)

CPU Miner for ARM64 iOS Devices

This is a fork of Lucas Jones's cpuminer-multi, (<https://github.com/lucasjones/cpuminer-multi>) compiled for arm64 iOS devices. Credits go to the initial developers and contributors. It was then forked from Limneos's MobileMiner (<https://github.com/limneos/MobileMiner>) and further improved upon.

# Releases
For binaries check under the release tab (<https://github.com/Mrtops/iOS-Miner/releases>) To install on iOS devices please use Saurik's Cydia Impactor (<http://www.cydiaimpactor.com>)

# Changes

1) The change needed is in cpu-miner.c, where

       int main(int argc, char *arv[])    

has been changed to

    start_mining(int argc,char *argv[])

in order for it to compile as a library.

Then you can import the library in an Xcode project and use

    char *args[]= {path, "-a","cryptonight","-o","url","-u","userAdrress","-p","x"};

    start_mining((int)(sizeof(args)/sizeof(char *))-1,args);

if you want to keep the same argument formatting and parsing.


2) In order for notifications to be received in the UI, instead of reading from stderr, I am posting notifications from inside cpu-miner.c passing the log message to the UI.

3) I have added a throttle in submit_upstream_work in order to maintain the speed in reasonable limits, since I noticed that some pools might ban you if a) the pool has small startup diff b) the device can cope well at first with this diff and sends hashes very fast.

4) I've added -x objective-c in the Makefile in order to compile with objc.

5) Included necessary CoreFoundation framework for the C functions.

6) In the case of the program being loaded as a library, flags need to be set inside threads in order to be able to stop them, because we don't want them to exit the main thread when done (although its faster to kill and restart the app if you're caught in a processing miner thread)

# Dependencies

Jansson
<https://github.com/akheron/jansson>

curl for iOS
<https://github.com/sinofool/build-libcurl-ios>

openssl for iOS
<https://github.com/x2on/OpenSSL-for-iPhone>

# Instructions
- Compile Xcode project and run
- If individually compiling libraries see wiki for guide

# Donations
Donations for the work done on iOS are accepted at the following adresses:
- ETN:
      etnkEsWJHKCCFfyRCbRrZNGT54AZp7VoaQiAKDycNMz84yo8WpqBmFHTPVToeiEpaZ5FCXxt27V5SL9eXpXhCwr7291xRsZqpn
- XMR:
      45igU3eSMK9iTAzaZNoHpVEgn7WtoFVyA3JSgnkeFumSF6JujTBcQAdh5naLVR2g42LUWGx7UyQZMSfn5GAiLCcP1sSDUKc
- BCN:
      29kJ45WdPPhj9Zbp1GpurucwEQCcgchPn4fK64AH2J2PNcGW3TJehPy9MwxJJREbzJNq2CN4K6QoR9kPj7p2tYQJAojCVY1
- BTC:
      1FuzwKipgFDKdessCxh9DwPT6ZK4HpDYNz
- BCH:
      16ENjTDFSdd9ieuHVu6tviQJTuwbZ8Mz2v
- ETH:
      0x73376259239875d329fd928a200d6c05d6d521ee
- LTC:
      LUy496hoxcUGLiEwJfcVi9ZsB6sUTXuwsA
- PPC:
      PF6tQ9kiVC1VPvdmLvkuqoz8sNBymKGxFF
- DSH:
      Xw3DgfqbkfE2wxJhuEowEaQSte8y1FxjAc
