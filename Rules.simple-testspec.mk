# Id: simple-testspec/0.0.1-master Rules.simple-testspec.mk

include $(DIR)/Rules.simple-testspec.shared.mk


empty :=
space := $(empty) $(empty)
usage::
	@echo 'usage:'
	@echo '# make [$(subst $(space),|,$(STRGT))]'


TRGT += TODO.list

TODO.list: Makefile spec.rst spec.yaml
	-grep -srI 'TODO\|FIXME\|XXX' $^ | grep -v 'grep..srI..TODO' | grep -v 'TODO.list' > $@


