#!/system/bin/sh

function overwrite() {
  setprop persist.radio.imei 0
  setprop persist.radio.imei1 0
  setprop persist.radio.imei2 0
  setprop persist.radio.meid 0
}

until [ $(getprop sys.boot_completed) -eq 1 ]
do
  overwrite
done

sleep 5s

while true
do
  if $(getprop persist.radio.imei2) -eq 0
    break
  fi
  
  overwrite
  sleep 5s
done
