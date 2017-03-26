<div class="sidebar">
    <ul class="main-menu">
        {% include "main-menu.swig" with { context: 'sidebar' }%}
    </ul>
    {% if page.type %}
        <div class="list">
            <ul class="menu-root">
                {% set _pages = site.pages.find({type:page.type}) %}
                {% set _pagesSorted = _pages.sort('order',1) %}
                {% for p in _pagesSorted %}
                    {% set fileName = p.path | replace('^.+?\/([\w-]+)\.html','$1') %}
                    <li>
                        <a href="{{ url_for(p.path) }}" class="sidebar-link{% if page.title === p.title %} current{% endif %}{% if p.is_new %} new{% endif %}">{{ p.title }}</a>
                    </li>
                {% endfor %}
            </ul>
        </div>
    {% endif %}
</div>
