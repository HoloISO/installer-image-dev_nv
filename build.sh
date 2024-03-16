#!/bin/bash
echo $(ls airootfs/etc/holoinstall | grep holoiso | sed -s 's/.img.zst//g') > /tmp/currentcandidate-nv
sudo mkarchiso -v -w /tmp/$(date +%Y%m%d.%H%M.%S) -o /home/vak/home/holoiso-installer/dev_nv .