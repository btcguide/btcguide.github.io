{% unless page.url contains "advanced" or page.no_advanced_link == true %}

<br />


<div class="alert alert-primary mb-4">
	<h4 class="alert-heading mb-3">Advanced Considerations</h4>
	<p>
		Comfortable with the concepts in this step?
	</p>
	<p class="mb-1">
		Read the
		<a href="{% if page.url contains "index" %}advanced{% else %}{{ page.url | split: '.' | first  }}-advanced{% endif %}">advanced considerations</a>
		that can potentially improve your security here.
	</p>
</div>



{% endunless %}

{% if include.next_url and include.next_name %}

---

&raquo; 
Next Section: [{{ include.next_name }}]({{ include.next_url }})
{% comment %}TODO: pull-right somehow? {% endcomment %}
{% endif %}
