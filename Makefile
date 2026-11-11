export PATH := $(CURDIR)/node_modules/.bin:$(PATH)

.PHONY: clean
clean:
	rm -rf \
		public \
		resources \
		.wrangler \
		.hugo_build.lock \
		.dev.vars \
		.env \
		.env.* \
		node_modules \
		.claude \
		lychee-report.md \
		.lycheecache

.PHONY: start
start: install
	@if [ ! -f themes/kana-hugo-theme/README.md  ]; then \
		git submodule update --recursive --init; \
	else \
		git submodule update --recursive --remote; \
	fi
	hugo serve -DFO

.PHONY: update
update:
	git submodule foreach --quiet git fetch --quiet --tags --force
	git submodule update --remote

.PHONY: github
github: install
	hugo server -DFO --appendPort=false --baseURL https://$$CODESPACE_NAME-1313.$$GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN

.PHONY: hooks
hooks:
	git config core.hooksPath .githooks

.PHONY: check-links
check-links: install
	rm -f lychee-report.md
	@command -v lychee >/dev/null 2>&1 || { echo "lychee not found. Install it with: brew install lychee"; exit 1; }
	hugo --gc --minify
	@lychee -vv --root-dir '$(CURDIR)/public' --format markdown --output lychee-report.md './public/**/*.html';

.PHONY: install
install:
	if [ ! -d ./node_modules/ ]; then \
		npm ci; \
	fi
