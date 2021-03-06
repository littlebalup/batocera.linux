################################################################################
#
# kodi-pvr-wmc
#
################################################################################

KODI18_PVR_WMC_VERSION = 2.4.5-Leia
KODI18_PVR_WMC_SITE = $(call github,kodi-pvr,pvr.wmc,$(KODI18_PVR_WMC_VERSION))
KODI18_PVR_WMC_LICENSE = GPL-2.0+
KODI18_PVR_WMC_LICENSE_FILES = src/client.h
KODI18_PVR_WMC_DEPENDENCIES = kodi18-platform

$(eval $(cmake-package))
