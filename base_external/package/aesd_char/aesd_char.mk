##############################################################
#
# AESD_CHAR
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 7 git contents
AESD_CHAR_VERSION = '39bfdeceea1defb348150bf843187f6421d92aed'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_CHAR_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-CarlosAlmeida4.git'
AESD_CHAR_SITE_METHOD = git
AESD_CHAR_GIT_SUBMODULES = YES

AESD_CHAR_MODULE_SUBDIRS = aesd-char-driver
AESD_ASSIGNMENTS_DEPENDENCIES = linux

# Install aesdsocket binary and init script
# Install aesdchar_load and aesdchar_unload scripts
define AESD_CHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))