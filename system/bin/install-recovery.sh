#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:11445872:b8c44fe7313ba39075ef8808b227200e0ceb8185; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:7857776:76700e27bbb4673a5a53e17126231cd5227c5494 EMMC:/dev/block/platform/bootdevice/by-name/recovery b8c44fe7313ba39075ef8808b227200e0ceb8185 11445872 76700e27bbb4673a5a53e17126231cd5227c5494:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
