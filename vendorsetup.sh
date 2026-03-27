#!/bin/bash

echo "Applying frameworks/native patches"
cd frameworks/native
echo "Applying Add MTK GED KPI support to fix broken Mediatek gpufreq"
git fetch https://github.com/Adarsh0127-Elite/android_frameworks_native.git
git cherry-pick 0f64f8863865458374c1039426fd056a966e7c48
cd ../..

echo "Clonning IMS"
git clone -b android-16-qpr2 https://github.com/Adarsh0127-Elite/android_vendor_mediatek_ims.git vendor/mediatek/ims

echo "Clonning Private keys"
git clone https://github.com/Adarsh0127-Elite/android_vendor_lineage-priv_keys-template.git -b master vendor/lineage-priv/keys
cd vendor/lineage-priv/keys
echo "no" | ./generate.sh
cd ../../..
