#!/bin/bash

prog=create-zpool.sh
. ../.script-config

# Single disk ilc dev nodes
DEVICES="/dev/sda"

# All disks in a Thumper config
#DEVICES="/dev/sda  /dev/sdb  /dev/sdc  /dev/sdd  /dev/sde  /dev/sdf  \
#         /dev/sdg  /dev/sdh  /dev/sdi  /dev/sdj  /dev/sdk  /dev/sdl  \
#         /dev/sdm  /dev/sdn  /dev/sdo  /dev/sdp  /dev/sdq  /dev/sdr  \
#         /dev/sds  /dev/sdt  /dev/sdu  /dev/sdv  /dev/sdw  /dev/sdx  \
#         /dev/sdy  /dev/sdz  /dev/sdaa /dev/sdab /dev/sdac /dev/sdad \
#         /dev/sdae /dev/sdaf /dev/sdag /dev/sdah /dev/sdai /dev/sdaj \
#         /dev/sdak /dev/sdal /dev/sdam /dev/sdan /dev/sdao /dev/sdap \
#         /dev/sdaq /dev/sdar /dev/sdas /dev/sdat /dev/sdau /dev/sdav"

# Sun style disk in Thumper config
#DEVICES="/dev/sda  /dev/sdb  /dev/sdc \
#         /dev/sdi  /dev/sdj  /dev/sdk \
#         /dev/sdr  /dev/sds  /dev/sdt \
#         /dev/sdz  /dev/sdaa /dev/sdab"

# Promise JBOD config (ilc23)
#DEVICES="/dev/sdb  /dev/sdc  /dev/sdd \
#         /dev/sde  /dev/sdf  /dev/sdg \
#         /dev/sdh  /dev/sdi  /dev/sdj \
#         /dev/sdk  /dev/sdl  /dev/sdm"

echo
echo "zpool create lustre <devices>"
${CMDDIR}/zpool/zpool create -F lustre ${DEVICES}

echo
echo "zpool list"
${CMDDIR}/zpool/zpool list

echo
echo "zpool status lustre"
${CMDDIR}/zpool/zpool status lustre

