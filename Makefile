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
		tag-canonical.json \
		tag-map.json \
		node_modules \
		.claude

.PHONY: start
start:
	@if [ ! -f themes/kana-hugo-theme/README.md  ]; then \
		git submodule update --recursive --init; \
	else \
		git submodule update --recursive --remote; \
	fi
	hugo serve -DFO

.PHONY: update
update:
	git submodule update --remote

.PHONY: github
github:
	hugo server -DFO --appendPort=false --baseURL https://$$CODESPACE_NAME-1313.$$GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN

.PHONY: install
install:
	if [ ! -d ./node_modules/ ]; then \
		npm ci; \
	fi
