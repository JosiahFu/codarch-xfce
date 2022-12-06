#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="codarch-xfce"
iso_label="CODARCH_XFCE"
iso_publisher="Josiah Fu <josiahfu@gmail.com>"
iso_application="Cod Arch XFCE"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="erofs"
airootfs_image_tool_options=('-zlz4hc,12' -E ztailpacking)
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
)
