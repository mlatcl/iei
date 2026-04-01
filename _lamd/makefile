# Update BASE to the stem of the current lecture file you are building,
# e.g. if the file is 01-01-introduction.md then BASE=01-01-introduction
BASE=introduction

# Update LAMDDIR to your local checkout of lawrennd/lamd
LAMDDIR=$(HOME)/lawrennd/lamd/lamd
MAKEFILESDIR=$(LAMDDIR)/makefiles
INCLUDESDIR=$(LAMDDIR)/includes
TEMPLATESDIR=$(LAMDDIR)/templates
SCRIPTDIR=$(LAMDDIR)/scripts

# Profiling disabled
TIME_CMD=

include $(MAKEFILESDIR)/make-talk-flags.mk
include $(MAKEFILESDIR)/make-talk.mk
