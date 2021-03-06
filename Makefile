KATA ?= kata
ENV ?= env
BINDIR ?= bin
PYTHON ?= python
VIRTUALENV_SYSTEM_SITE_PACKAGES ?= true
PIP_INSTALL = $(ENV)/$(BINDIR)/pip install --use-mirrors -I
VIRTUALENV = \
    VIRTUALENV_SYSTEM_SITE_PACKAGES=$(VIRTUALENV_SYSTEM_SITE_PACKAGES) \
        virtualenv --python=$(PYTHON)
NOSE = nosetests
NOSECMD = \
    $(ENV)/$(BINDIR)/$(NOSE) \
        --with-coverage
        --cover-package=$(KATA) \
        --cover-erase \
        --cover-html

install: env
	test -d $(KATA) || mkdir $(KATA)
	touch $(KATA)/__init__.py
	${PIP_INSTALL} --requirement requirements.txt

clean-env:
	rm -rf $(ENV)

run-tests:
	$(NOSECMD)

env: $(ENV)/$(BINDIR)/activate
$(ENV)/$(BINDIR)/activate:
	$(VIRTUALENV) $(ENV)
