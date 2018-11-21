---
layout: page
title: Test
permalink: /test/
published: true
toc: true
---

# Posts
{% include posts.html category="draft" %}

# Archvied pages
* link archive/projects.md
* link archive/research.md
* link archive/blog.html


# Docs
* [Linking in Jekyll](https://jekyllrb.com/docs/liquid/tags/#link)

# Presentation
- [Link to Google Slides](https://docs.google.com/presentation/d/e/2PACX-1vSnRWlYCYhHttURB1ZHugpTm2X2rc36oPuMAp-iNXJO55WLyjqHLdFVlvh1Kg5Pi-IBlF26PeAyW3kb/pub?start=false&loop=false&delayms=3000)

<!-- <iframe src="https://docs.google.com/presentation/d/e/2PACX-1vSnRWlYCYhHttURB1ZHugpTm2X2rc36oPuMAp-iNXJO55WLyjqHLdFVlvh1Kg5Pi-IBlF26PeAyW3kb/embed?start=false&loop=false&delayms=60000" frameborder="0" width="640" height="480" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe> -->

# Code

## Liquid Tag Based

### JavaScript
{% include code.html caption="A ruby script" %}
{% highlight javascript linenos=table %}
var sigmoidGate = function() {
  // helper function
  this.sig = function(x) { return 1 / (1 + Math.exp(-x)); };
};
sigmoidGate.prototype = {
  forward: function(u0) {
    this.u0 = u0;
    this.utop = new Unit(this.sig(this.u0.value), 0.0);
    return this.utop;
  },
  backward: function() {
    var s = this.sig(this.u0.value);
    this.u0.grad += (s * (1 - s)) * this.utop.grad;
  }
}
{% endhighlight %}
{% include endcode.html %}

### Bash
{% include code.html %}
{% highlight bash linenos=table %}
def print_hi(name)
  puts "Hi, #{name} A line."
end
{% endhighlight %}
{% include endcode.html %}

## Fenced Code Blocks

### Javascript

#### Span
Inline code `like this`.

#### Block

```javascript
var sigmoidGate = function() {
  // helper function
  this.sig = function(x) { return 1 / (1 + Math.exp(-x)); };
};
sigmoidGate.prototype = {
  forward: function(u0) {
    this.u0 = u0;
    this.utop = new Unit(this.sig(this.u0.value), 0.0);
    return this.utop;
  },
  backward: function() {
    var s = this.sig(this.u0.value);
    this.u0.grad += (s * (1 - s)) * this.utop.grad;
  }
}
```

No line numbers:
```javascript
var sigmoidGate = function() {
  // helper function
  this.sig = function(x) { return 1 / (1 + Math.exp(-x)); };
};
```
{: .nolineno}

## Image
Width = 50% (no caption)
{% responsive_image path: 'images/404.jpg' width: 400px %}

Width = 100% (default & with caption)
{% responsive_image path: 'images/404.jpg' caption: 'width: 100%' %}


Width = 80% (with caption)
{% responsive_image path: 'images/404.jpg' width: 80% caption: 'width: 80%' template: _includes/img/srcset-caption.html %}


## Installing `imagemin`

* [GitHub: imagemin-cli](https://github.com/imagemin/imagemin-cli)
  * [Fix for global npm install](https://github.com/npm/npm/issues/17268)

```bash
sudo npm install --global imagemin-cli
sudo npm install --global imagemin-gifsicle --unsafe-perm=true --allow-root
sudo npm install --global imagemin-pngquant --unsafe-perm=true --allow-root
sudo npm install --global imagemin-jpegtran --unsafe-perm=true --allow-root
sudo npm install --global imagemin-optipng --unsafe-perm=true --allow-root
```

Running it on png files
```bash
# Original file size: 1.6 MB
# Resized file size: 501 KB
imagemin --plugin=pngquant youtube_issues.png >plugin.png

# Original file size: 1.6 MB
# Resized file size: 1.2 MB
imagemin youtube_issues.png >no_plugin.png
```