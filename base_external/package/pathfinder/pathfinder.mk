#######################
# PATHFINDER AVIONICS #
#######################
PATHFINDER_VERSION = 'b35fb39e3b222af882743007bf6aac7305b4cf3b'
# PATHFINDER_VERSION = 'main'
PATHFINDER_SITE = 'git@github.com:scotch115/Pathfinder_Avionics.git'
PATHFINDER_SITE_METHOD = git
PATHFINDER_GIT_SUBMODULES = YES

define PATHFINDER_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/src/support/driver all
endef

define PATHFINDER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/src/support/driver/pdtpserver $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/src/support/driver/pdtp-start-stop.sh $(TARGET_DIR)/etc/init.d/S99pdtpserver
endef

$(eval $(generic-package))

