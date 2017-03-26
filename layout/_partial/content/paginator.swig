{% if page.total > 1 %}
	<nav id="page-nav">
	{{ paginator({
	  prev_text:__('prev'),
	  next_text:__('next')
	}) }}
	</nav>
{% endif %}