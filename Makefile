OS := $(shell uname)
export GEM_HOME := $(HOME)/.ruby
export GEM_PATH := $(HOME)/.ruby
export BUNDLE_PATH := $(HOME)/.ruby
export PATH := $(HOME)/.ruby/bin:$(PATH)

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
		libmagickwand-dev
endif

ifeq ($(OS), Darwin)
	@brew install imagemagick@6
	@brew link --force imagemagick@6
endif
	
	@mkdir -p $(GEM_HOME)
	@echo "Update system gems..."
	@sudo gem update --system --no-doc
	@echo "Installing gem: bundler..."
	@gem install bundler -v "~>2.0"
	@echo "Installing dependencies..."
	@bundle install

.PHONY: doctor
doctor:
	gem update --system --no-doc
	gem update --no-doc
