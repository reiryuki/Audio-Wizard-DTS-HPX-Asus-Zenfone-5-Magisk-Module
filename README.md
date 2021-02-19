# Audio Wizard DTS Headphone X Asus Zenfone 5 Magisk Module

## Descriptions
- An equalizer ported from Asus Zenfone 5 (ASUS_X00QD) SDK 28
- Still using SoundFX library from Oreo source by @Michi_Nemuritor
- Post process type FX
- Changing build product and product model, may break your platform apps and features functionality

## Not Compatible with
- Dolby, Moto Waves, AudioFX Moto, or any global type soundfx (different case in different rom)

## Compatible with
- Sound Enhancement Xperia
- MusicFX AOSP
- AudioFX LineageOS

## Requirements
- Android 8.0, 8.1, 9, 10, or 11

## Tested on
- Android 10 arm64 CrDroid ROM

## Installation Guide
- Install the module via Magisk Manager or Recovery
- Install Audio Modification Library module if you using other audio mods
- Reboot (reboot twice without reinstalling if you have Magisk sepolicy.rule bug)

## Optional

## Troubleshootings
- If UI shows blank only, you should reboot it again without reinstalling. It's probably Magisk sepolicy.rule bug.
- If SE policy patch doesn't work for your device, run at Terminal Emulator:

  `su`

  `setprop` `aw.permissive` `1`

   Then reflash the module
- You can also using both permissive mode and SE policy rule with:

  `su`

  `setprop` `aw.permissive` `2`

- If something goes wrong with Audio Wizard data, run at Terminal Emulator:

  `su`

  `setprop` `aw.cleanup` `1`

   Then reflash the module
- Patch to not change ro.build.product is enabled by default (v1.3). But if you got problem with it, you can disable it by run at Terminal Emulator:
  
  `su`

  `setprop` `aw.patch` `0`

   Then reflash the module.
- No possible to patch ro.product.model because of DTS license check
- Install Audio Modification Library module if you using other audio mods
- Audio Compatibility Patch module is not recommended as it disabling deep buffer which causes FX is not processing correctly
- Delete /data/adb/modules/AudioWizard and /persist|metadata/magisk/AudioWizard via recovery if facing bootloop and send copied and zipped /data/system/dropbox files to dev for fix

## Attention!
- Always make nandroid backup before install or updating version, these are just experiments!

## Report Guide
- [Tap here](https://t.me/audioryukimods/2618)

## Credits and contributors
- @Michi_Nemuritor
- @guitardedhero
- @JohnFawkes
- @Zackptg5
- @UltraM8
- @lazerl0rd
- @aquahol
- @aip_x

## Supports
- [Tap here](https://t.me/audioryukimods/2619)

## Telegram
- https://t.me/audioryukimods

## Donate
- https://www.paypal.me/reiryuki

## Download
- Tap "Releases" below
