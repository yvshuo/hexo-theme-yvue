{% set dateNow = date(Date.now(), "YYYY") %}
<div id="footer">
	&copy;{{ dateNow }} {{ config.author || config.title }}
	<br>
	{{ __('powered_by') }} <a href="https://github.com/yvshuo" target="_blank">Yvshuo</a>
</div>