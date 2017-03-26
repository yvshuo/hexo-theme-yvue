{% extends '_layout.swig' %}

{% block content %}
	{% include "_partial/header/sidebar.swig"%}
	{{ partial('_partial/archive', {pagination: config.archive, index: true}) }}
{% endblock %}
