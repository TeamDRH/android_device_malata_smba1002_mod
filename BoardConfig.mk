# inherit from the common version
-include device/malata/smba-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := harmony,smba1002

BOARD_HAVE_MAGNETIC_SENSOR := true

BOARD_USES_MMEA_GPS := true

TARGET_PREBUILT_KERNEL := device/malata/smba1002/kernel

