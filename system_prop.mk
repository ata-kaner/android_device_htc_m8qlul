# ActivityManager optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.max_starting_bg=4

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    audio_hal.period_size=192 \
    media.aac_51_output_enabled=true \
    audio.offload.buffer.size.kb=1024 \
    audio.offload.multiple.enabled=false \
    audio.offload.gapless.enabled=false \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=false \
    av.offload.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.ssr=false \
    voice.playback.conc.disabled=true \
    voice.record.conc.disabled=false \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-scan=true \
    media.swhevccodectype=0 \
    media.hwhevccodectype=0 \
    mm.enable.smoothstreaming=true \
    mmp.enable.3g2=true \
    tunnel.audio.encode=false \
    vidc.enc.narrow.searchrange=1

PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.smoothstreaming=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.fluence.speaker=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.audio.sdk.fluencetype=fluence

PRODUCT_PROPERTY_OVERRIDES += \
    use.voice.path.for.pcm.voip=true

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.bt.hci_transport=smd

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.preview.size=1920x1080

# Dexopt - limit to 4 cores
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.dex2oat_thread_count=4

# Dalvik heap
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=true \
    ro.opengles.version=196608 \
    ro.sf.lcd_density=420 \
    debug.enable.sglscale=1

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=1 \
    ro.gps.agps_provider=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.qcom_parser=3314291 \
    drm.service.enabled=1

# NITZ
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3=""


# Qualcomm
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true \
    ro.qualcomm.cabl=0 \
    ro.vendor.extension_library=libqti-perfd-client.so

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libargs=-d /dev/smd0 \
    rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
    ro.baseband.arch=msm \
    ro.ril.telephony.mqanelements=5 \
    ro.telephony.call_ring.multiple=false \
    ril.ecclist=112,911,113,114,115,118,000,08,110,999,119 \
 
# Radio (from HTC)
PRODUCT_PROPERTY_OVERRIDES += \
ro.ril.enable.a52=0 \
ro.ril.enable.a53=1 \
ro.ril.hsdpa.category=24 \
ro.ril.hsupa.category=6 \
ro.ril.hsxpa=4 \
ro.ril.enable.amr.wideband=1 \
ro.ril.enable.r8fd=1 \
ro.ril.fd.r8_tout.scr_off=2 \
ro.ril.fd.r8_tout.scr_on=3 \
ro.ril.enable.pre_r8fd=1 \
ro.ril.fd.pre_r8_tout.scr_off=2 \
ro.ril.fd.pre_r8_tout.scr_on=3 \
ro.ril.ltefgi=1561328784 \
ro.ril.ltefgi.rel9=2147483648 \
ro.ril.disable.cpc=1 \
ro.ril.lte3gpp=35

# Do not power down SIM card when modem is sent to Low Power Mode.
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=true
# USB
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=true
