# Audio Wizard DTS Headphone X Asus Zenfone 5 Magisk Module

## Descriptions
- An equalizer ported from Asus Zenfone 5 (ASUS_X00QD) SDK 28
- A recovered module by JohnFawkes, lazerl0rd, & UltraM8 and fixed bugs
- Post process type FX
- Changing build product and product model, may breaks your platform apps
- SoundFX library still using Oreo source.

## Not Compatible with
- Mi Music or any player that forcing compress offload playback
- Dolby Atmos / Dolby Audio / Moto Dolby (maybe different case in different rom)
- Moto Waves (maybe different case in different rom)
- AudioFX Moto (maybe different case in different rom)

## Compatible with
- Sound Enhancement Xperia

## Requirements
- Android 8.0, 8.1, 9, 10, or 11

## Tested on
- Android 10 arm64 CrDroid ROM

## Installation Guide
- Install the module via Magisk Manager or Recovery
- Reboot

## Optional
- You can make this module not to change ro.build.product. Run at Terminal Emulator:
  
  `su`

  `setprop` `aw.patch` `1`

   Then reflash the module. Not possible to patch ro.product.model because of DTS license check.

## Troubleshootings
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
- Install Audio Modification Library module if you using other audio mods
- Audio Compatibility Patch module is not recommended!
- Delete /data/adb/modules/AudioWizard and /persist|metadata/magisk/AudioWizard via recovery if facing bootloop and send copied and zipped /data/system/dropbox files to dev for fix
- Open issues with sending full logcats if this module is not working for your device

## Attention!
- Always make nandroid backup before install or updating version, these are just experiments!
- Reporting without logcats is not allowed

## Credits
- @JohnFawkes
- @lazerl0rd
- @UltraM8
- @aquahol for changing my .jks key to .x509.pem and .pk8
- All people that helped and tested my modules

## Telegram
- https://t.me/audioryukimods
- https://t.me/modsandco

## Donate
- https://www.paypal.me/reiryuki

## Download
- Tap "Releases"
