#!/bin/sh

dd=$(echo -e "Mount\nUmount" | dmenu -l 2 -p "what to do:") 


case "$dd" in
"Mount") 

device=$(simple-mtpfs -l)
phone=$(echo -e "$device" | dmenu -l 10 -p "available:")
simple-mtpfs --device 1 ~/media/mount/cell 

;;
"Umount")

fusermount -u ~/media/mount/cell

;;

esac
