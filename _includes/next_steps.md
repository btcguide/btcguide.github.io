{% unless page.url contains "advanced" %}
## Advanced Configuration
Click
[here]({% if page.url contains "index" %}advanced{% else %}{{ page.url | split: '.' | first  }}-advanced{% endif %})
for advanced details on how to improve your security at this step.
{% endunless %}

{% if include.next_url and include.next_name %}
---
\>\> 
Next Section: [{{ include.next_name }}]({{ include.next_url }})
{% comment %}TODO: pull-right somehow? {% endcomment %}
{% endif %}
