OS := $(shell uname)

.PHONY: drafts
drafts:
	bundle exec jekyll serve --drafts --trace

# Run the production version of the site
.PHONY: prod
prod:
	bundle exec jekyll serve --trace

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

.PHONY: doctor
doctor:
	sudo gem update --system --no-doc
	sudo gem update --no-doc

