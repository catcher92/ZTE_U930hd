#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Settings" ];then
    echo ">>> in custom_app $apkBaseName"
	# Delete the unlock_set_baidu_space in security_settings_picker.xml
	if [ -f $tempSmaliDir/res/xml/security_settings_picker.xml ];then
	echo ">>> delete unlock_set_baidu_space line in $tempSmaliDir/res/xml/security_settings_picker.xml"
	sed -i '/unlock_set_baidu_space/d' $tempSmaliDir/res/xml/security_settings_picker.xml
	fi
	
	# Remove the Official Verify Preference.
	sed -i -e "/^\.method.*setOfficialVerifyPreference()V/,/^\.end method/d" $tempSmaliDir/smali/com/android/settings/DeviceInfoSettings.smali
	
	#echo ">>> add origin settings"
    #sed -i '/com.android.settings.ManageApplicationsSettings/r Settings/settings_headers.xml.part' $tempSmaliDir/res/xml/settings_headers.xml	
    
    #Add baidu romer
	#echo ">>> add baidu romer"
    #sed -i '/android:key="build_number"/r Settings/device_info_settings.xml.part' $tempSmaliDir/res/xml/device_info_settings.xml
    #sed -i -e "/^\.method.*onCreate(Landroid\/os\/Bundle;)V/,/^\.end method/d"  $tempSmaliDir/smali/com/android/settings/DeviceInfoSettings.smali
fi

