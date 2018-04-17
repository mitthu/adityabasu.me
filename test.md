---
layout: page
title: Test
permalink: /test/
published: true
---

# Presentation
- [Link to Google Slides](https://docs.google.com/presentation/d/e/2PACX-1vSnRWlYCYhHttURB1ZHugpTm2X2rc36oPuMAp-iNXJO55WLyjqHLdFVlvh1Kg5Pi-IBlF26PeAyW3kb/pub?start=false&loop=false&delayms=3000)

<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vSnRWlYCYhHttURB1ZHugpTm2X2rc36oPuMAp-iNXJO55WLyjqHLdFVlvh1Kg5Pi-IBlF26PeAyW3kb/embed?start=false&loop=false&delayms=60000" frameborder="0" width="1440" height="1109" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>

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
