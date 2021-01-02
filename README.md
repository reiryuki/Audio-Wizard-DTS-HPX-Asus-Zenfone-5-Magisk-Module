# Audio Wizard DTS Headphone X Asus Zenfone 5 Magisk Module

## Descriptions
- An equalizer ported from Asus Zenfone 5 (ASUS_X00QD) (old version)
- A recovered module by JohnFawkes, lazerl0rd, & UltraM8 and fixed bugs
- Post process type FX
- Changing build product and product model, may breaks your platform apps

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
- Remove test version if using it
- Reboot
- Install the module via Magisk Manager or Recovery
- Reboot

## Optional

## Troubleshootings
- If SE policy patch doesn't work, remove tag symbols inside /data/adb/modules/AudioWizard/service.sh and reboot to enable permissive mode.
- Install Audio Modification Library module if you using other audio mods
- Use Audio Compatibility Patch module only if EQ is not processing with non Music apps
- Delete /data/adb/modules/AudioWizard and /persist|metadata/magisk/AudioWizard via recovery if facing bootloop and send copied and zipped /data/system/dropbox files to dev for fix
- Open issues with sending full logcats if this module is not working for your device

## Attention!
- Always make nandroid backup before install or updating version, these are just experiments!
- Reporting without logcats is not allowed
- Special thanks to all people that helped and tested my modules.

## Credits
- JohnFawkes
- lazerl0rd
- UltraM8

## Telegram
- https://t.me/audioryukimods
- https://t.me/modsandco

## Donate
- https://www.paypal.me/reiryuki

## Download
- Tap "Releases"
