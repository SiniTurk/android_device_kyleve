android_device_kyleve
======================

Device tree for Samsung Trend GT-S7392 (2 SIM)
Device tree for Galaxy Trend Duos GT-S7392 (2 SIM)

<b>HOW TO COMPILE ?</b>

<b>TYPE THIS COMMANDS :- </b>

`cd cm-12.1`

`mkdir .repo/local_manifests`

`gedit .repo/local_manifests/kyleve.xml `

<b>PASTE THIS INSIDE THAT FILE :- </b>

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
<project path="kernel/samsung/kyleve" name="SiniTurk/android_kernel_samsung_kylevexx" revision="cm-11.0_3.4.5" />
<project path="hardware/samsung" name="CyanogenMod/android_hardware_samsung" remote="github" revision="cm-12.1"/>
<project path="device/samsung/kyleve" name="SiniTurk/android_device_kyleve" remote="github" revision="cm-12.1" />
<project path="vendor/samsung/kyleve" name="SiniTurk/android_vendor_samsung_kyleve" revision="cm-11.0" />
</manifest>
``` 

Then 

`repo sync -f --force-sync`

`. build/envsetup.sh`

`patch_fix`  // TO MAKE ROM STABLE


`kyleve`
