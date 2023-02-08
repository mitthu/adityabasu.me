---
layout: page
title: Start Here
permalink: /start/
published: true
toc: true
sitemap: false
---

[![Netlify Status](https://api.netlify.com/api/v1/badges/7f2d2399-781d-448b-a637-c3f64dccede5/deploy-status)](https://app.netlify.com/sites/adityabasu/deploys)

* [Tags](/tags/) -- hidden navigation

{% include toc.html %}

# Template
[https://prose.io/#mitthu/adityabasu.me/tree/master/collections/_posts](https://prose.io/#mitthu/adityabasu.me/tree/master/collections/_posts "Create a post")

```
layout: post
excerpt: >-
  Using the mr tool, you can issue commands to multiple repositories in
  parallel. You can pull new changes, do simultaneous commits or just get the
  last commit log.
tags:
  - git
  - version control
  - mr
  - pushover
  - sysad
```

# Add Table of Contents (toc)

[TOC Documentation](https://kramdown.gettalong.org/converter/html.html#toc) is here.

{% raw %}

For TOC use --
```
{% include toc.html %}
```

To skip a heading from the toc,
```markdown
# the heading to skip...
{:.no_toc}
```

{% endraw %}

# Posts
```
include posts.html category="draft"
```


# Docs
* [Linking in Jekyll](https://jekyllrb.com/docs/liquid/tags/#link)


# Code

An `inline` code fragment.

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

With line numbers:
```javascript
var sigmoidGate = function() {
  // helper function
  this.sig = function(x) { return 1 / (1 + Math.exp(-x)); };
};
```
{: .showlineno}


# Image

Code to add an image:
{% raw %}
```markdown
![404 Image](/images/404.jpg)

<!-- For posts -->
![Resume banner]({{site.asset.post}}/20190705-resume.png)
```
{% endraw %}

It looks like:
![404 Image](/images/404.jpg)


# Installing `imagemin`

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
