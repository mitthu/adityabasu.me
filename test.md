---
layout: page
title: Test
permalink: /test/
published: true
---

{% include code.html caption="A ruby script" %}
{% highlight bash linenos=table %}
def print_hi(name)
  puts "Hi, #{name} A line."
end
{% endhighlight %}
{% include endcode.html %}

Some `random` text.

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
