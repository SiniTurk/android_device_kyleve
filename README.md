android_device_kyleve
======================

Device tree for Samsung Trend GT-S7392 (2 SIM)

keep this in cm12.1/.repo/local_manifests/kyleve.xml






<?xml version="1.0" encoding="UTF-8"?>


<manifest>



  <project path="kernel/samsung/kyleve" name="SiniTurk/android_kernel_samsung_kylevexx" remote="github" revision="cm-11.0"/>

  <project path="hardware/samsung" name="CyanogenMod/android_hardware_samsung" remote="github" revision="cm-12.1"/>

  <project path="device/samsung/kyleve" name="SiniTurk/android_device_kyleve" remote="github" revision="cm-12.1" />

  <project path="vendor/samsung/kyleve" name="ZIM555/android_vendor_logands" remote="github" revision="master" />

</manifest>


Then 
repo sync -f --force-sync
. build/envsetup.sh
brunch kyleve
