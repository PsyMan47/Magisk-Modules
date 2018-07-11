#!/system/bin/sh

for i in $(find /sys/devices -name "enable_wakeup") ; do if grep -q 0 "$i" ; then echo 1 > $i ; fi ; done
for i in $(find /sys/devices -name "wakeup_enable") ; do if grep -q 0 "$i" ; then echo 1 > $i ; fi ; done