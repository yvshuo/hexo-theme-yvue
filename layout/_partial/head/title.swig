  {% set title = page.title %}
  {% if is_archive() %}
    {% set title = __('archive_a') %}
    {% if is_month() %}
      {% set title += ': ' + page.year + '/' + page.month %}
    {% elseif is_year() %}
      {% set title += ': ' + page.year %}
    {% endif %}
  {% elseif is_category() %}
    {% set title = __('category') + ': ' + page.category %}
  {% elseif is_tag() %}
    {% set title = __('tag') + ': ' + page.tag %}
  {% endif %}
  <title>
    {% if title %}{{ title+"|" }}{% endif %}{{ config.title }}
  </title>