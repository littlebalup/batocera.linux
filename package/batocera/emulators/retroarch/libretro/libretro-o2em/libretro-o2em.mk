################################################################################
#
# O2EM
#
################################################################################
# Version.: Commits on Feb 03, 2020
LIBRETRO_O2EM_VERSION = b23a796dd3490e979ff43710317df6d43bd661e1
LIBRETRO_O2EM_SITE = $(call github,libretro,libretro-o2em,$(LIBRETRO_O2EM_VERSION))
LIBRETRO_O2EM_LICENSE = Artistic License

define LIBRETRO_O2EM_BUILD_CMDS
	CFLAGS="$(TARGET_CFLAGS)" CXXFLAGS="$(TARGET_CXXFLAGS)" $(MAKE) CXX="$(TARGET_CXX)" CC="$(TARGET_CC)" \
		-C $(@D)/ -f Makefile platform="$(LIBRETRO_PLATFORM)"
endef

define LIBRETRO_O2EM_INSTALL_TARGET_CMDS
	$(INSTALL) -D $(@D)/o2em_libretro.so \
		$(TARGET_DIR)/usr/lib/libretro/o2em_libretro.so
endef

$(eval $(generic-package))
