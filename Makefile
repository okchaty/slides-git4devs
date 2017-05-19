# Makefile for slide-git4devs.
# See INSTALL for details.

# Configuration.
SHELL = /bin/bash
SCRIPT_DIR = $(ROOT_DIR)/script

# Bin scripts
CLEAN = $(shell) $(SCRIPT_DIR)/clean.sh
SETUP = $(shell) $(SCRIPT_DIR)/setup.sh
PYENV = $(shell) $(SCRIPT_DIR)/pyenv.sh
TEST = $(shell) $(SCRIPT_DIR)/test.sh
WATCH = $(shell) $(SCRIPT_DIR)/watch.sh
GENERATE = $(shell) $(SCRIPT_DIR)/generate.sh

install:
	$(SETUP)


clean:
	$(CLEAN)

environment:
	$(PYENV)

watch:
	$(WATCH)


generate:
	$(GENERATE)
