# Makefile Reference
# Please use this file as the project Makefile reference


##############################################################################
# Default DALVIK_VM_BUILD setting is 27
# Only used for odex, if not, ignore...
#-----------------------------------------------------------------------------
DALVIK_VM_BUILD := 27

##############################################################################
# Default DENSITY setting is hdpi
# this depends on the device's resolution
#-----------------------------------------------------------------------------
DENSITY := hdpi

##############################################################################
# Default RESOLUTION setting is nothing
# this used to config the bootanimation
#-----------------------------------------------------------------------------
RESOLUTION := 720x1280

##############################################################################
# customize weather use prebuilt image or pack from BOOT/RECOVERY directory
# Support Values:
# vendor_modify_images := boot recovery
# boot/recovery, pack boot.img/recovery.img from vendor/BOOT / vendor/RECOVERY
# NULL, check boot.img/recovery.img in project root directory, if it exists,
# use a prebuilt boot.img/recovery.img, if not, nothing to do
#-----------------------------------------------------------------------------
# vendor_modify_images :=

##############################################################################
# Directorys which you want to remove in vendor directory
#-----------------------------------------------------------------------------
vendor_remove_dirs := app vendor/operator/app joinme cmcc

##############################################################################
# Files which you want to remove in vendor directory
#-----------------------------------------------------------------------------
vendor_remove_files := media/boot.mp3 media/shutdown.mp3 checklist.md5 lib/libassistantjni.so lib/libhanvonhw_v32.so lib/libsogouime_jni_v32.so lib/libspeex_sogou_v32.so lib/libthemeextractor_v32.so

##############################################################################
# Vendor apks you want to use
#-----------------------------------------------------------------------------
vendor_saved_apps := Bluetooth MIPop 

##############################################################################
# Apks build from current project root directory
# if the apk is decode from baidu:
# 1, check if the apk in BAIDU_UPDATE_RES_APPS (you can see it in build/configs/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's apk to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_apps := FMRadio
# you need decode FMRadio.apk to the project directory (use apktool d FMRadio.apk) first
# then you can make it by:   make FMRadio
#-----------------------------------------------------------------------------
vendor_modify_apps := LC_FmRadio Stk Phone NumberLocator

##############################################################################
# Jars build from current project root directory
# if the jar is decode from baidu:
# 1, check if the jar in BAIDU_UPDATE_RES_APPS (you can see it in build/configs/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's jar to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_jars := android.policy
# you need decode android.policy.jar to the project directory (use apktool d android.policy.jar) first
# then you can make it by:   make android.policy
#-----------------------------------------------------------------------------
vendor_modify_jars := framework services

##############################################################################
# Directorys which you want to saved in baidu directory
#-----------------------------------------------------------------------------
# baidu_saved_dirs := media/audio/ui

##############################################################################
# Files which you want to saved in baidu directory
#-----------------------------------------------------------------------------
# baidu_saved_files := lib/libwebcore.so

##############################################################################
# baidu_remove_apps: those baidu apk you want remove 
#-----------------------------------------------------------------------------
baidu_remove_apps := Phone BaiduUserFeedback HelpBook BaiduUpdate

##############################################################################
# baidu_modify_apps: which base the baidu's apk
# just override the res, append *.smali.part
#-----------------------------------------------------------------------------
baidu_modify_apps := Settings HomePro Contacts SystemUI

##############################################################################
# baidu_modify_jars: which base the baidu's jar
# just append *.smali.part
#-----------------------------------------------------------------------------
baidu_modify_jars := android.policy framework-yi

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------

# hide the soft mainkeys
override_property += \
	sys.product_default_lock_mode=1 \
	ro.baidu.romer=cxd541806675 \
	persist.sys.baidu.default_write=first_storage \
	ro.baidu.default_write.settable=true \
	ro.baidu.2nd_storage.format=enable \
	persist.sys.emmc=/mnt/sdcard \
	ro.config.rootperm.enable=1 \
	persist.sys.timezone=Asia/Shanghai

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------
# remove_property += \
#    dev.defaultwallpaper

NO_SYSTEM_IMG := true
LOW_RAM_DEVICE := true

include $(PORT_BUILD)/main.mk
include $(PORT_BUILD)/autopatch.mk
