#######################
# PATHFINDER AVIONICS #
#######################
# PATHFINDER_VERSION = 'b6970930a5b533ce8821e56a0fb0a008d220bc2c'
PATHFINDER_VERSION = 'driver'
PATHFINDER_SITE = 'git@github.com:scotch115/Pathfinder_Avionics.git'
PATHFINDER_SITE_METHOD = git
PATHFINDER_GIT_SUBMODULES = YES

#define PATHFINDER_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/src/GND all
#endef

define PATHFINDER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/src/MPU $(TARGET_DIR)/usr/bin
#	$(INSTALL) -m 0755 $(@D)/src/MPU/pdtp-start-stop.sh $(TARGET_DIR)/etc/init.d/S99groundcntl
endef

$(eval $(generic-package))

