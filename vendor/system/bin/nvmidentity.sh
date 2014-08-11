#!/system/bin/sh

file_name="/sys/devices/platform/zte_mvd/boardid"
test_name="/sys/devices/platform/zte_mvd/mvd_test"
nvm_name="/system/etc/nvram/nvram_sysconfig_da.bin"

vale=$(cat $file_name)
nvm_exist=`ls $nvm_name`
case "$nvm_exist" in
    $nvm_name)
	echo 10 > $test_name
    ;;
    *) 
if [ "$vale" -ne 4 ]; then
#	rm /system/etc/nvram/nvram_sysconfig_ba.bin 
#	rm /system/etc/nvram/nvram_sysconfig_da.bin 
#	rm /system/etc/nvram/nvram_sysconfig_ma.bin 
	cp /system/etc/nvram/nvram_sysconfig_ba_9812.bin /system/etc/nvram/nvram_sysconfig_ba.bin 
	cp /system/etc/nvram/nvram_sysconfig_da_9812.bin /system/etc/nvram/nvram_sysconfig_da.bin 
	cp /system/etc/nvram/nvram_sysconfig_ma_9812.bin /system/etc/nvram/nvram_sysconfig_ma.bin 
    echo 123 > $test_name
else  
#	rm /system/etc/nvram/nvram_sysconfig_ba.bin 
#	rm /system/etc/nvram/nvram_sysconfig_da.bin 
#	rm /system/etc/nvram/nvram_sysconfig_ma.bin 
	cp /system/etc/nvram/nvram_sysconfig_ba_9810.bin /system/etc/nvram/nvram_sysconfig_ba.bin 
	cp /system/etc/nvram/nvram_sysconfig_da_9810.bin /system/etc/nvram/nvram_sysconfig_da.bin 
	cp /system/etc/nvram/nvram_sysconfig_ma_9810.bin /system/etc/nvram/nvram_sysconfig_ma.bin 
	echo 4 > $test_name
fi 
    ;;
esac
