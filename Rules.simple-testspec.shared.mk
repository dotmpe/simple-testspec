# Id: simple-testspec/0.0.1-dev Rules.simple-testspec.shared.mk

TRGT += spec.json

spec.json: spec.yaml
	yaml2json $< > $@

