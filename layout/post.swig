{% extends '_layout.swig' %}

{% block content %}
    <div class="sidebar blog">
        <ul class="main-menu">
            {% include "_partial/header/main-menu.swig" with { context: 'nav' }%}
        </ul>
        <div class="list">
            <h2>
                {{ __('post_lists') }}
            </h2>
            <ul style="padding:0">
            {% set sortPosts = site.posts.sort('date', -1) %}
            {% for _post in sortPosts %}
                {% if loop.index0 > -1 %}
                    <li>
                        <a href="{{ url_for(_post.path) }}" class="sidebar-link{% if page.title === _post.title %} current{% endif %}">{{ _post.title }}</a>
                    </li>
                {% endif %}
            {% endfor %}
            </ul>
        </div>
    </div>
    <div class="content with-sidebar blog post">
        <h1>{{ page.title }}</h1>
        <h4>{{ page.date.format('MMM D[,] YYYY') }}
            {# LeanCould PageView #}
            {% if theme.leancloud_visitors.enable %}
                <span id="{{ url_for(page.path) }}" class="leancloud_visitors" data-flag-title="{{ page.title }}">
                    <span class="leancloud-visitors-count"></span>
                </span>
            {% endif %}
        </h4>
        
        
        {{ page.content }}
        <div class="guide-links">
            {% if page.prev %}
                <span>← <a href="{{ url_for(page.prev.path) }}">{{ page.prev.title }}</a></span>
            {% endif %}
            {% if page.next %}
                <span style="float:right"><a href="{{ url_for(page.next.path) }}">{{ page.next.title }}</a> →</span>
            {% endif %}
        </div>
    </div>
{% endblock %}

