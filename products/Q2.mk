# Inherit AICP common Phone stuff.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aicp/configs/telephony.mk)

$(call inherit-product, device/quantum/Q2/device.mk)

# Build fingerprints
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=Q2 BUILD_FINGERPRINT=quantum/Q2/Q2:5.1/LMY47D/URBR2015110901/Nvt_nw:user/release-keys PRIVATE_BUILD_DESC="Q2-user 5.1 LMY47D URBR2015110901 release-keys"

PRODUCT_NAME := aicp_Q2
PRODUCT_BRAND := quantum
PRODUCT_DEVICE := Q2
PRODUCT_MODEL := Quantum Go
PRODUCT_MANUFACTURER := quantum

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="GuizãoBR"

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
-include vendor/aicp/configs/bootanimation.mk
