LOCAL_PATH := vendor/gapps

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/lib,$(TARGET_COPY_OUT_PRODUCT)/lib)
ifeq ($(TARGET_GAPPS_ARCH),arm64)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/lib64,$(TARGET_COPY_OUT_PRODUCT)/lib64)
endif
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/usr,$(TARGET_COPY_OUT_PRODUCT)/usr)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/permissions/com.google.android.maps.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.maps.xml \
    $(LOCAL_PATH)/etc/permissions/privapp-permissions-google-p.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-google-p.xml \
    $(LOCAL_PATH)/etc/permissions/privapp-permissions-google-ps.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-google-ps.xml \
    $(LOCAL_PATH)/etc/permissions/split-permissions-google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/split-permissions-google.xml \
    $(LOCAL_PATH)/etc/preferred-apps/google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/preferred-apps/google.xml \
    $(LOCAL_PATH)/etc/sysconfig/google_build.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google_build.xml \
    $(LOCAL_PATH)/etc/sysconfig/google_vr_build.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google_vr_build.xml \
    $(LOCAL_PATH)/etc/sysconfig/google-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google-hiddenapi-package-whitelist.xml \
    $(LOCAL_PATH)/etc/sysconfig/google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google.xml \
    $(LOCAL_PATH)/etc/sysconfig/nexus.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/nexus.xml \
    $(LOCAL_PATH)/etc/sysconfig/whitelist_com.android.omadm.service.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/whitelist_com.android.omadm.service.xml

ifeq ($(IS_PHONE),true)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/permissions/com.google.android.dialer.support.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.dialer.support.xml
endif
