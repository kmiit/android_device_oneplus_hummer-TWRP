# TWRP device tree for Realme GT7 Pro

Realme GT7 Pro (codenamed _"RMX5010"_) is a high-end smartphone from Realme.

## Build it yourself?

```
mkdir twrp && cd twrp
repo init --depth=1 -u https://github.com/kmiit/platform_manifest_twrp_aosp
repo sync
git clone --depth=1 https://github.com/realme-rmx5010-development/android_device_realme_rmx5010-TWRP device/realme/rmx5010
```

```
source build/envsetup.sh
lunch twrp_rmx5010-ap2a-eng
make recoveryimage
```


If there is no error, recovery.img will be found in out/target/product/rmx5010/recovery.img  
**NOTE**  
Using Github Actions to build TWRP-14 branch may fail because of the large source


## Features
Not works:
- [ ] Touch in fastbootd

Works:
- [X] ADB
- [X] Display
- [X] Decryption
- [X] Fasbootd
- [X] Flashing
- [X] MTP
- [X] Sideload
- [X] USB OTG
- [X] Vibrator
- [X] Mount /data

## To use it:

```
fastboot flash recovery recovery.img
or
fastboot flash recovery_a recovery.img
fastboot flash recovery_b recovery.img
```
