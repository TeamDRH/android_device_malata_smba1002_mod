# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

TARGET_BOOTANIMATION_NAME := horizontal-1024x600

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration for smb_b9701.
$(call inherit-product, device/malata/smba1002/full_smba1002.mk)

# Release name
PRODUCT_NAME := cm_smba1002
PRODUCT_RELEASE_NAME := smba1002

#
# Setup device specific product configuration.
#
PRODUCT_DEVICE := smba1002

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=asus/US_epad/EeePad:4.0.3/IML74K/US_epad-9.2.1.11-20120221:user/release-keys PRIVATE_BUILD_DESC="US_epad-user 4.0.3 IML74K US_epad-9.2.1.11-20120221 release-keys"

