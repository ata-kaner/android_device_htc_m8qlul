[AID_VENDOR_QCOM_DIAG]
value:2950

[AID_VENDOR_RFS]
value:2951

[AID_VENDOR_RFS_SHARED]
value:2952

[firmware/]
mode: 0771
user: AID_SYSTEM
group: AID_SYSTEM
caps: 0

[firmware/radio]
mode: 0771
user: AID_SYSTEM
group: AID_SYSTEM
caps: 0

[firmware/wcnss]
mode: 0771
user: AID_SYSTEM
group: AID_SYSTEM
caps: 0

[firmware/image/*]
mode: 0771
user: AID_ROOT
group: AID_SYSTEM
caps: 0

[carrier/]
mode: 0771
user: AID_RADIO
group: AID_RADIO
caps: NET_BIND_SERVICE

[devlog/]
mode: 0771
user: AID_SYSTEM
group: AID_SYSTEM
caps: 0

[fataldevlog/]
mode: 0771
user: AID_SYSTEM
group: AID_SYSTEM
caps: 0

[ramdump/]
mode: 0771
user: AID_SYSTEM
group: AID_SYSTEM
caps: 0