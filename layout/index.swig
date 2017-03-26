{% extends '_layout.swig' %}

{% block content %}
{% set isIndex = page.path === 'index.html' %}
<div class="sidebar{% if isIndex %} sidebarIndex{% endif %}">
  <ul class="main-menu">
  	{% include "_partial/header/main-menu.swig" with { context: 'sidebar' } %}
  </ul>
</div>
<div id="hero">
  <div class="inner">
    <div class="left">
      <img class="hero-logo" src="{{ theme.logo }}">
    </div>
    <div class="right">
      <h2 class="vue">{{ theme.title }}</h2>
      <h1>{{ theme.subtitle }}</h1>
    </div>
  </div>
</div>
{% for _post in page.posts %}
	{{ partial('_partial/article', {post: _post, index: true}) }}
{% endfor %}
  {% include "_partial/content/paginator.swig" %}
{% endblock %}

{% block footer %}
  {% include "_partial/footer/footer.swig" %}
{% endblock %}

