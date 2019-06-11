OS := $(shell uname)

.PHONY: dev
dev:
	bundle exec jekyll serve --drafts --trace

.PHONY: depsinstall
depsinstall:
	@echo "Installing OS specific dependencies..."
ifeq ($(OS), Linux)
	@sudo apt-get install -y ruby-dev build-essential zlib1g-dev \
		imagemagick libmagickwand-dev
endif

ifeq ($(OS), Darwin)
	@# Nothing for now!
endif

	@echo "Installing gem: bundler..."
	@sudo gem install bundler
	@echo "Installing dependencies..."
	@bundle install

