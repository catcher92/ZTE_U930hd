#!/bin/sh

CURRENT_PATH=`pwd`

echo ""
echo "current path: "$CURRENT_PATH
echo "--------------------"
ls -l $CURRENT_PATH

echo ""
echo "/sys/class/misc/modem"
echo "--------------------"
ls -l /sys/class/misc/modem

echo ""
echo "insmod g_serial_tt.ko ..."
echo "--------------------"
insmod g_serial_tt.ko
sleep 1

echo ""
echo "lsmod:"
echo "--------------------"
lsmod

echo ""
#1809, Changed by Yewenhu 20100919.  echo "/dev/ttygs0"
echo "/dev/ttyGS0"
echo "--------------------"
#1809, Changed by Yewenhu 20100919.  ls -l /dev/ttygs0
ls -l /dev/ttyGS0

echo ""
echo "please plugin USB ..."
echo "--------------------"

echo ""
echo "set Modem mode and reset it ..."
echo "--------------------"
echo 0 > /sys/class/misc/modem/a2b_com_sel
echo 1 > /sys/class/misc/modem/a2b_mode_sel
echo 0 > /sys/class/misc/modem/a2b_reset
sleep 1
echo 1 > /sys/class/misc/modem/a2b_reset

#1809, Changed by Yewenhu 20100919.  if [ -e ./cmmb_vega_12mhz.inp ];then
#1809, Changed by Yewenhu 20100919.  mkdir /opl
#1809, Changed by Yewenhu 20100919.  mkdir /opl/usr
#1809, Changed by Yewenhu 20100919.  mkdir /opl/usr/firmware
#1809, Changed by Yewenhu 20100919.  cp ./cmmb_vega_12mhz.inp /opl/usr/firmware
#1809, Changed by Yewenhu 20100919.  fi

#1809, Changed by Yewenhu 20100919.  echo ""
#1809, Changed by Yewenhu 20100919.  echo "CMMB firmware:"
#1809, Changed by Yewenhu 20100919.  echo "--------------------"
#1809, Changed by Yewenhu 20100919.  ls -l /opl/usr/firmware

echo ""
echo "now mount opl ..."
echo "--------------------"
mkdir /mnt/opl
mount -t yaffs2 /dev/mtdblock7 /mnt/opl
ls -l /mnt/opl/nvm

echo ""
echo "now running lc-oms-amt-static ..."
echo "--------------------"
$CURRENT_PATH/lc-oms-amt-static

echo ""
