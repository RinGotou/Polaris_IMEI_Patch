# Polaris_IMEI_Patch
A magisk module that removing sensitive and easily-accessible IMEI/MEID props 
from your Xiaomi MIX 2S at startup.

# Why?
On MIUI based on Android 10 and almost all 3rd-party ROM for Xiaomi MIX 2S and 
other Xiaomi devices, Xiaomi add these keys to system properties:

```
ro.ril.oem.imei*
persist.radio.imei*
```

And, you can access to these values WITHOUT ANY PERMISSIONS.IT'S HILARIOUS!

#How?
Just try to overwrite all sensitive values at every startup stage of magisk.

#License
GPLv3