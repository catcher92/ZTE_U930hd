#! /system/bin/sh

echo spk 92 115 0 0 > /proc/driver/codec_audio
echo hp 108 36 0 0 > /proc/driver/codec_audio
echo rec 100 100 0 0 > /proc/driver/codec_audio
echo spk_hp 100 100 100 0 > /proc/driver/codec_audio
echo main_mic 110 110 0 0 > /proc/driver/codec_audio
echo hp_mic 110 110 0 0 > /proc/driver/codec_audio
echo line 70 0 0 0 > /proc/driver/codec_audio
exit 0