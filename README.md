# TWRP device tree for Realme GT7 Pro

Realme GT7 Pro (codenamed _"RMX5010"_) is a high-end smartphone from Realme.

## About decryption
Keymint service calls omapi, omapi creates an eSE terminal on init.  
This terminal calls android.hardware.secure_element.ISecureElement/eSE1 service(Provided by android.hardware.secure_element-service.qti) on init.  
Then this terminal calls SEservice->init.  
And when service init, it calls GPMTEEC to open a session by ioctl /dev/nq-nci and invoke smc command.  
But I can't manage this session to successfully open. 

```
I android.hardware.secure_element-service.qti: init callback: 0xb40000754f8aee20
D GPTEE   : [TEE_client_api.cpp:177 TEEC_InitializeContext] No variant specified, using default: GPMTEEC
D GPTEE   : [TEE_client_api.cpp:193 TEEC_InitializeContext] Loading module: libGPMTEEC_vendor.so
D android.hardware.secure_element-service.qti: TimedRetryForwarder_release:79 delete me:12970367437920468560
E GPMTEEC : [MTEEC.cpp:177 openSession] openSession: openSession ret=11
E GPMTEEC : [MTEEC.cpp:795 TEEC_MTEE_OpenSession] openSession() failed: 11
I smcinvoke: qtee_release: qtee-3 released.
E GPQeSE-HAL: TEEC_OpenSession() failed : 0xFFFF0000
E GPQeSE-HAL: ESE ERROR MESSAGE - let's close everything : 0xFFFF0000
E GPTEE   : [TEE_client_api.cpp:899 TEEC_InvokeCommand] INVALID TEEC session imp
E GPQeSE-HAL: gpqese_open failed
```

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
- [ ] Decryption
- [ ] Touch in fastbootd

Works:
- [X] ADB
- [X] Display
- [X] Fasbootd
- [X] Flashing
- [X] MTP
- [X] Sideload
- [X] USB OTG
- [X] Vibrator
- [X] Mount /data

## To use it:

```
fastboot flash recovery out/target/product/dada/recovery.img
or
fastboot flash recovery_a out/target/product/dada/recovery.img
fastboot flash recovery_b out/target/product/dada/recovery.img

```
