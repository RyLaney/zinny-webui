VERSION=$(shell sed -n 's/^version = "\([0-9.]*\)"/\1/p' pyproject.toml)

build:
	$(MAKE) clean
	python ../zinny-dev/bump_version.py
	python -m build

install:
	$(MAKE) uninstall
	python -m pip install --upgrade .

uninstall:
	python -m pip uninstall -y zinny-webui

run:
	zinny-webui

test:
	python -m pytest tests

clean:
	rm -rf dist/ build/ src/zinny_webui.egg-info


testpypi:
	python -m twine upload --repository testpypi dist/*

testpypi-install:
	python -m pip uninstall -y zinny-webui
	python -m pip install --index-url https://test.pypi.org/simple/ --no-deps zinny-webui


pypi:
	python -m twine upload dist/*
	$(MAKE) tag

pypi-install:
	python -m pip uninstall -y zinny-webui
	python -m pip install zinny-webui


tag:
	# Create a Git tag with the current version and push it to the remote repository
	git tag -a v$(VERSION) -m "Release v$(VERSION)"
	git push origin v$(VERSION)

print-version:
	@echo $(VERSION)

cbir:
	$(MAKE) clean
	$(MAKE) build
	$(MAKE) install
	$(MAKE) run

tpi:
	$(MAKE) testpypi
	$(MAKE) testpypi-install
	$(MAKE) run

pi:
	$(MAKE) pypi
	$(MAKE) pypi-install
	$(MAKE) run