echo 'Starting to clone stuffs needed for your device'
# Stuffs to rm -rf
rm -rf device/xiaomi/sm8250-common
rm -rf kernel/xiaomi/sm8250
rm -rf vendor/xiaomi/munch
rm -rf vendor/xiaomi/sm8250-common
rm -rf packages/resources/devicesettings
rm -rf hardware/lineage/compat

echo 'Cloning DT-Common tree [1/9]'
# Device Tree Common
git clone --depth=1 https://github.com/ProjectElixir-Devices/device_xiaomi_sm8250-common.git -b munch device/xiaomi/sm8250-common

echo 'Cloning Kernel tree [2/9]'
# Kernel Tree
git clone --depth=1 https://github.com/projects-nexus/nexus_kernel_xiaomi_sm8250.git -b stable kernel/xiaomi/sm8250

echo 'Cloning Vendor tree [3/9]'
# Vendor Tree
git clone --depth=1 https://gitlab.com/Vincent4440/android_vendor_xiaomi_munch.git -b 13 vendor/xiaomi/munch

echo 'Cloning Vendor-Common tree [4/9]'
# Vendor-Common Tree
git clone --depth=1 https://gitlab.com/Vincent4440/android_vendor_xiaomi_sm8250-common.git -b 13 vendor/xiaomi/sm8250-common

echo 'Cloning Firmware [5/9]'
# Firmware
git clone --depth=1 https://gitlab.com/Vincent4440/vendor_xiaomi_munch-firmware.git -b thirteen-global vendor/xiaomi/munch-firmware

echo 'Cloning GcamGo [6/9]'
# GcamGo
git clone --depth=1 https://gitlab.com/Ar5646L/vendor_xiaomi_haydn-extras.git -b twelve vendor/xiaomi/haydn-extras

echo 'Cloning Device Settings [7/9]'
# Device Settings
git clone --depth=1 https://github.com/Evolution-X/packages_resources_devicesettings.git -b tiramisu packages/resources/devicesettings

echo 'Cloning Prelude Clang [8/9]'
# Prelude Clang
git clone --depth=1 https://gitlab.com/jjpprrrr/prelude-clang.git prebuilts/clang/host/linux-x86/clang-prelude

echo 'Cloning Hardware Lineage Compat [9/9]'
# Compat
git clone https://github.com/LineageOS/android_hardware_lineage_compat.git -b lineage-20.0 hardware/lineage/compat
