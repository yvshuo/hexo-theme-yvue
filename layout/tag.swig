{% extends '_layout.swig' %}

{% block content %}
	{% include "_partial/header/sidebar.swig"%}
	{% include "_partial/content/archive.swig" with {pagination: config.tag, index: true}%}
{% endblock %}