# Blog
The jekyll stuff for my blog.

## Guidelines
### Local Setup

- [Github Pages: Gem Versions](https://pages.github.com/versions/)

```
# Install dependencies
make depsinstall

# Preview website with drafts
make drafts # or
make

# Preview website (production)
make prod

# Fix issues with ruby gems
make doctor
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

To hide line numbers -

<pre>
```ruby
def print_hi(name)
  puts "Hi, #{name}!"
end
```
{: .nolineno}
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

## Credits
- [JekyllNow Theme](https://github.com/barryclark/jekyll-now)
- [Icons @footer](https://github.com/neilorangepeel/Free-Social-Icons)
- Syntax highlight style
  * [Octopress](http://octopress.org/)
  * [richleland/pygments-css](https://github.com/richleland/pygments-css)
  * [MozMorris/tomorrow-pygments](https://github.com/MozMorris/tomorrow-pygments)
  * [chriskempson/tomorrow-theme](https://github.com/chriskempson/tomorrow-theme)
