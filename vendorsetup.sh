#!/bin/bash

echo "Applying frameworks/native patches"
cd frameworks/native
echo "Applying Add MTK GED KPI support to fix broken Mediatek gpufreq"
git fetch https://github.com/Adarsh0127-Elite/android_frameworks_native.git
git cherry-pick f27b7054644dadb1f08a5f421a52420d828b10a3
cd ../..

echo "Clonning IMS"
git clone -b android-16-qpr2 https://github.com/Adarsh0127-Elite/android_vendor_mediatek_ims.git vendor/mediatek/ims

echo "Unlock 4K60FPS"
cd packages/apps/Aperture
git fetch https://github.com/Adarsh0127-Elite/android_packages_apps_Aperture.git
git cherry-pick 9509277efc852ad8bdcce204e0d9cfe104b6d190
cd ../../..
