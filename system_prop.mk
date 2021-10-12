# ActivityManager optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.max_starting_bg=4

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    audio.deep_buffer.media=true \
    vendor.audio_hal.period_size=192 \
    audio.offload.buffer.size.kb=1024 \
    audio.offload.multiple.enabled=false \
    audio.offload.gapless.enabled=false \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=false \
    av.offload.enable=true \
    ro.vendor.audio.sdk.fluencetype=fluence \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.fluence.speaker=true \
    persist.vendor.audio.spkr.cal.duration=10 \
    persist.vendor.audio.speaker.prot.enable=true \
    vendor.audio.use.dts_eagle=true \
    hpx_send_params=1 \
    vendor.voice.path.for.pcm.voip=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.ssr=false \
    voice.playback.conc.disabled=true \
    voice.record.conc.disabled=false \
    media.swhevccodectype=0 \
    media.hwhevccodectype=0 \
    vendor.audio.tunnel.encode=false \
    vidc.enc.narrow.searchrange=1

# BPF
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.ebpf.supported=false

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.qcom.bluetooth.soc=pronto \
    ro.bluetooth.dun=true \
    ro.bluetooth.hfp.ver=1.7 \
    ro.bluetooth.sap=true \
    ro.qualcomm.bluetooth.hfp=true \
    ro.qualcomm.bluetooth.ftp=true \
    ro.bluetooth.remote.autoconnect=true \
    ro.bt.bdaddr_path=/sys/module/htc_bdaddress/parameters/bdaddress \
    ro.qualcomm.bt.hci_transport=smd

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.preview.size=1920x1080

# Dalvik heap
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m

# Dexopt - limit to 4 cores
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.dex2oat_thread_count=4

# Display
PRODUCT_PROPERTY_OVERRIDES += \
debug.egl.hw=0 \
debug.enable.sglscale=1 \
debug.hwui.use_buffer_age=false \
debug.mdpcomp.logs=0 \
debug.sf.hw=0 \
debug.sf.disable_backpressure=1 \
debug.sf.recomputecrop=0 \
debug.sf.latch_unsignaled=1 \
dev.pm.dyn_samplingrate=1 \
persist.demo.hdmirotationlock=false \
persist.hwc.mdpcomp.enable=true \
persist.hwc.downscale_threshold=1.15 \
ro.opengles.version=196610 \
ro.sf.lcd_density=420 \
persist.sys.wfd.virtual=0 \
debug.sf.early_phase_offset_ns=1500000 \
debug.sf.early_app_phase_offset_ns=1500000 \
debug.sf.early_gl_phase_offset_ns=3000000 \
debug.sf.early_gl_app_phase_offset_ns=15000000 \
ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
ro.surface_flinger.max_frame_buffer_acquired_buffers=1 \
ro.surface_flinger.vsync_event_phase_offset_ns=6000000 \
ro.surface_flinger.vsync_sf_event_phase_offset_ns=2000000 \
debug.renderengine.backend=threaded

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=1 \
    ro.gps.agps_provider=1

# LMKD
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lmk.critical_upgrade=true \
    ro.lmk.downgrade_pressure=60 \
    ro.lmk.kill_heaviest_task=false \
    ro.lmk.log_stats=true \
    ro.lmk.upgrade_pressure=40 \
    ro.lmk.use_psi=false

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.qcom_parser=3314291 \
    drm.service.enabled=1 \
    media.aac_51_output_enabled=true \
    mm.enable.smoothstreaming=true

# system props for the MM modules
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0 \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-scan=true \
    mmp.enable.3g2=true

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.am.reschedule_service=true \
    ro.vendor.qti.sys.fw.bservice_enable=true

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

#Power saving tweaks from tomato
PRODUCT_PROPERTY_OVERRIDES += \
ro.min_freq_0=533333 \
ro.min_freq_4=499200

# Qualcomm
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true \
    ro.qualcomm.cabl=0 \
    ro.vendor.extension_library=libqti-perfd-client.so

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.rild.libargs=-d /dev/smd0 \
    vendor.rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
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

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lineage.build.vendor_security_patch=2016-10-01

# System
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.binary_xml=false
