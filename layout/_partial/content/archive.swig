{% set last = null %}
{% for _post in page.posts %}
  {% set year = _post.date.year() %}
  {% if last != year %}
    {% if last != null %}</div></section>{% endif %}
    {% set last = year %}
    <section class="archives-wrap">
        <div class="archive-year-wrap">
          {% if page.tag %}
            <a href="{{ url_for(config.tag_dir + '/' + page.tag) }}" class="archive-year">{{ page.tag }}</a><br>
            <a href="{{ url_for(config.tag_dir + '/' + page.tag) }}" class="archive-year">{{ year }}</a>
          {% else %}
            <a href="{{ url_for(config.archive_dir + '/' + year) }}" class="archive-year">{{ year }}</a>
          {% endif %}
        </div>
    <div class="archives">
  {% endif %}
  {{ partial('_partial/archive-post', {post: _post, even: loop.index % 2 == 0,index:index}) }}
{% endfor %}
{% if page.posts.length %}</div></section>{% endif %}


