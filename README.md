# Blog
[![Netlify Status](https://api.netlify.com/api/v1/badges/7f2d2399-781d-448b-a637-c3f64dccede5/deploy-status)](https://app.netlify.com/sites/adityabasu/deploys)

The jekyll stuff for my blog.

## Guidelines
### VM setup

Alternatively for Linux (x86_64) only.
Just use the local setup. It won't install gems in system directories.

```bash
vagrant plugin update
vagrant plugin install vagrant-notify-forwarder
vagrant up
```

### Local Setup

`chruby` to install isolated ruby environments.
It is necessary for macOS on Apple Silicon.

```bash
brew install \
  ruby-install \
  chruby chruby-fish \
  openssl@1.1

# enable (for bash)
# fish will work by automatically
echo "\
# On cd, switch ruby based on .ruby-version file
source /opt/homebrew/share/chruby/chruby.sh
source /opt/homebrew/share/chruby/auto.sh
" | tee ~/.melocal/chruby.sh
chmod +x ~/.melocal/chruby.sh

# Install relevant version
ruby-install (cat .ruby-version)  # fish
ruby-install `cat .ruby-version`  # bash

# For macOS (Apple Silicon)
ruby-install (cat .ruby-version) -- --with-openssl-dir=$(brew --prefix openssl@1.1)  # fish
ruby-install `cat .ruby-version` -- --with-openssl-dir=$(brew --prefix openssl@1.1)  # bash
```

Performing `cd adityabasu.me` will automatically switch ruby versions.
Verify this by running `which ruby`.

Using the Makefile:

```bash
# Install dependencies; gems are installed in: ~/.ruby
make depsinstall

# Preview website with drafts
# goto: http://localhost:4000/
make drafts # or
make

# Preview website (production)
make prod

# Fix issues with ruby gems
make doctor

# Update Gemfile (& dependencies)
make update
```

### Include Table of Contents
```
{% include toc.html %}
```

### To include code
#### Method #1
<pre>
```ruby
def print_hi(name)
  puts "Hi, #{name}!"
end
```
</pre>

To show line number(s) -

<pre>
```ruby
def print_hi(name)
  puts "Hi, #{name}!"
end
```
{: .showlineno}
</pre>

#### Method #2
```
{% include code.html caption="A ruby script" %}
{% highlight ruby linenos %}
def print_hi(name)
  puts "Hi, #{name}!"
end
{% endhighlight %}
{% include endcode.html %}
```

## Miscellaneous
- Font preview and CDNs,
  * [Google Fonts](https://www.google.com/fonts)
- [Group posts by year](https://stackoverflow.com/questions/19086284/jekyll-liquid-templating-how-to-group-blog-posts-by-year/20777475#20777475)

## Table of contents (TOC)
- Refer `_layout/sidebar.html`
- For TOC in a sticky side bar:
  * https://www.bram.us/2020/01/10/smooth-scrolling-sticky-scrollspy-navigation/
  * https://lab.hakim.se/progress-nav/
  * http://tscanlin.github.io/tocbot/

- To use `position: sticky; top: 1em;`, edit style.scss:
```css
.container {
  ...
  overflow: auto; /* remove this! */
}
```

## Credits

- [Github Pages: Gem Versions](https://pages.github.com/versions/)
- [JekyllNow Theme](https://github.com/barryclark/jekyll-now)
- [Icons @footer](https://github.com/neilorangepeel/Free-Social-Icons)
- Syntax highlight style
  * [Octopress](http://octopress.org/)
  * [richleland/pygments-css](https://github.com/richleland/pygments-css)
  * [MozMorris/tomorrow-pygments](https://github.com/MozMorris/tomorrow-pygments)
  * [chriskempson/tomorrow-theme](https://github.com/chriskempson/tomorrow-theme)

Troubleshooting:
- [Ruby installation fails on macOS Apple Silicon](https://github.com/postmodern/ruby-install/issues/409)
