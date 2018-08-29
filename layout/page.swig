{% extends '_layout.swig' %}

{% block content %}
  {% include "_partial/header/sidebar.swig"%}

  <div class="content {% if page.type %}{{ page.type }}{% endif %} {% if page.type !== 'tags' %}{{ 'with-sidebar' }}{% endif %}">
      {% if page.title.trim() %}
        <h1>{{ page.title }}</h1>
      {% endif %}
      {% if page.type === "tags" %}
        <div class="archive-year-wrap">
            <a href="{{ url_for('/tags') }}" class="archive-year">标签列表</a><br>
        </div>
        <div class="tag-cloud-tags">
          {{ tagcloud({min_font: 12, max_font: 30, amount: 200, color: true, start_color: '#996900', end_color: '#ff6900'}) }}
        </div>
      {% else %}
        {{ page.content }}
        <div class="guide-links">
        {% set _pre = site.pages.find({ type: page.type, order: page.order - 1 }) %}
        {% set _next = site.pages.find({ type: page.type, order: page.order + 1 }) %}
        {% for p in _pre %}
          <span>← <a href="{{ url_for(p.path) }}">{{ p.title }}</a></span>
        {% endfor %}
        {% for n in _next %}
          <span style="float:right"><a href="{{ url_for(n.path) }}">{{ n.title }}</a> →</span>
        {% endfor %}
      </div>
      {% endif %}
  </div>
{% endblock %}

