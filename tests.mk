#
# See ./CONTRIBUTING.rst
#

test: clean
	@echo $(MESSAGE) Running tests $(END)

test.lint: clean
	pre-commit run --all-files --verbose

test.syntax: clean
	@echo $(MESSAGE) Running tests $(END)
