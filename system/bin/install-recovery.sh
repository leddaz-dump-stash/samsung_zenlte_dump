#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/15570000.ufs/by-name/RECOVERY:28499968:2662b71d0833c6696784efeb2fa7b7a4851a36f2; then
  applypatch EMMC:/dev/block/platform/15570000.ufs/by-name/BOOT:24377344:44619996a0fe8fc17e42bf4b13f23f12a0891d77 EMMC:/dev/block/platform/15570000.ufs/by-name/RECOVERY 2662b71d0833c6696784efeb2fa7b7a4851a36f2 28499968 44619996a0fe8fc17e42bf4b13f23f12a0891d77:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
