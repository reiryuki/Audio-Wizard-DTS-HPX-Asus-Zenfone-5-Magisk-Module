MODPATH=${0%/*}
API=`getprop ro.build.version.sdk`
AML=/data/adb/modules/aml

# debug
exec 2>$MODPATH/debug.log
set -x

# property
resetprop ro.build.product ZE620KL
resetprop ro.product.model ASUS_X00QD
resetprop ro.build.asus.sku WW
resetprop ro.dts.licensepath /vendor/etc/dts/
resetprop ro.dts.cfgpath /vendor/etc/dts/
resetprop ro.vendor.dts.licensepath /vendor/etc/dts/
resetprop ro.vendor.dts.cfgpath /vendor/etc/dts/
resetprop audio.wizard.default.mode smart
resetprop ro.asus.audio.dualSPK true
resetprop ro.asus.aw.settingentry 1
resetprop ro.asus.dts.headphone.default_enable false
resetprop ro.asus.audiowizard.outdoor 1
resetprop ro.asus.audio.realStereo true
resetprop ro.config.media_vol_steps 20
resetprop ro.product.lge.globaleffect.dts false
resetprop ro.lge.globaleffect.dts false
resetprop ro.odm.config.dts_licensepath /vendor/etc/dts/
#resetprop vendor.dts.audio.dump_input true
#resetprop vendor.dts.audio.dump_output true
#resetprop vendor.dts.audio.dump_driver true
#resetprop vendor.dts.audio.skip_shadow true
#resetprop vendor.dts.audio.set_bypass true
#resetprop vendor.dts.audio.log_time true
#resetprop vendor.dts.audio.dump_initial true
#resetprop vendor.dts.audio.dump_eagle true
#resetprop ro.config.versatility ID
#resetprop ro.config.versatility IN
resetprop -p --delete persist.asus.aw.forceToGetDevices
resetprop -p --delete persist.asus.stop.audio_wizard_service
PROP=`getprop persist.sys.cta.security`
if ! [ "$PROP" ]; then
  resetprop -n persist.sys.cta.security 0
fi

# wait
sleep 20

# aml fix
DIR=$AML/system/vendor/odm/etc
if [ -d $DIR ] && [ ! -f $AML/disable ]; then
  chcon -R u:object_r:vendor_configs_file:s0 $DIR
fi

# mount
NAME="*audio*effects*.conf -o -name *audio*effects*.xml"
#pNAME="*audio*effects*.conf -o -name *audio*effects*.xml -o -name *policy*.conf -o -name *policy*.xml"
if [ ! -d $AML ] || [ -f $AML/disable ]; then
  DIR=$MODPATH/system/vendor
else
  DIR=$AML/system/vendor
fi
FILE=`find $DIR/etc -maxdepth 1 -type f -name $NAME`
if [ `realpath /odm/etc` == /odm/etc ] && [ "$FILE" ]; then
  for i in $FILE; do
    j="/odm$(echo $i | sed "s|$DIR||")"
    if [ -f $j ]; then
      umount $j
      mount -o bind $i $j
    fi
  done
fi
if [ -d /my_product/etc ] && [ "$FILE" ]; then
  for i in $FILE; do
    j="/my_product$(echo $i | sed "s|$DIR||")"
    if [ -f $j ]; then
      umount $j
      mount -o bind $i $j
    fi
  done
fi

# restart
killall audioserver

# wait
sleep 40

# grant
PKG=com.asus.maxxaudio
pm grant $PKG android.permission.READ_PHONE_STATE
pm grant $PKG android.permission.READ_CALL_LOG
appops set $PKG WRITE_SETTINGS allow
if [ "$API" -ge 30 ]; then
  appops set $PKG AUTO_REVOKE_PERMISSIONS_IF_UNUSED ignore
fi

# grant
PKG=com.asus.maxxaudio.audiowizard
pm grant $PKG android.permission.RECORD_AUDIO
if [ "$API" -ge 30 ]; then
  appops set $PKG AUTO_REVOKE_PERMISSIONS_IF_UNUSED ignore
fi

