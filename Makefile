#
# See LICENSE file.
#
PROGRAM_NAME=wifi-mac-changer
INSTALL_PATH=/usr/local/bin

install:
	@install $(PROGRAM_NAME) $(INSTALL_PATH)/$(PROGRAM_NAME)
	@echo "$(PROGRAM_NAME): installed"

uninstall:
	@rm -f $(INSTALL_PATH)/$(PROGRAM_NAME)
	@echo "$(PROGRAM_NAME): uninstalled"