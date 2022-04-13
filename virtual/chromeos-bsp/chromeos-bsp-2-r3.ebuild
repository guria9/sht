# Copyright (c) 2022 The Chromium OS Authors and Alex313031. All rights reserved.
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Generic ebuild which satisifies virtual/chromeos-bsp.
This is a direct dependency of virtual/target-chromium-os, but is expected
to be overridden in an overlay for each specialized board.  A typical
non-generic implementation will install any board-specific configuration
files and drivers which are not suitable for inclusion in a generic board
overlay."
HOMEPAGE="http://src.chromium.org"

LICENSE="BSD GPL-3"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	!chromeos-base/chromeos-bsp-null
	!media-libs/mesa-llvmpipe
	!sys-firmware/intel-microcode
	app-admin/pydf
	app-admin/sysstat
	app-arch/tar
	app-editors/nano
	app-misc/sl
	chromeos-base/bash-skel
	chromeos-base/chromeos-bsp-amd64-frick
	chromeos-base/chromeos-osrelease
	chromeos-base/cros-trimly
	chromeos-base/frick-oem-wallpapers
	chromeos-base/frick-chromedev-flags
	chromeos-base/google-drive-fs
	chromeos-base/libwidevine
	dev-cpp/gflags
	sys-firmware/intel-ucode-firmware
	sys-kernel/linux-firmware
	media-libs/cros-camera-hal-usb
	media-libs/mesa-reven
	media-libs/x264
	media-libs/x265
	net-misc/bridge-utils
	net-misc/telnet-bsd
	net-misc/tlsdate
	sys-apps/cpuid
	sys-apps/haveged
	sys-apps/i2c-tools
	sys-apps/iotools
	sys-apps/iucode_tool
	sys-apps/lm-sensors
	sys-process/iotop
	sys-process/htop
	virtual/chromeos-config-bsp
"

DEPEND="${RDEPEND}"

	# !net-wireless/broadcom-sta
	# !net-wireless/rtl8188eu
	# !net-wireless/rtl8723au
	# !net-wireless/rtl8723bu
	# !net-wireless/rtl8812au
	# !net-wireless/rtl8821ce