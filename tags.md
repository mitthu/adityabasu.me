---
layout: navpage
published: true
title: Tags
---

{% assign alldocs = site.documents %}
{% assign grouptag =  alldocs | map: 'tags' | join: ','  | split: ','  | group_by: tag %}

{% for tag in grouptag %}
#### {{ tag.name }} (`{{tag.size}}`)

  {% for document in alldocs %}
    {% if document.tags contains tag.name %}
* [{{ document.title }}]({{ document.url }})
    {% endif %}
  {% endfor %}

{% endfor %}
