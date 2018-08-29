<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  {% include "_partial/head/title.swig" %}
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  {{ open_graph({twitter_id: theme.twitter, google_plus: theme.google_plus, fb_admins: theme.fb_admins, fb_app_id: theme.fb_app_id}) }}
  {% if theme.rss %}
    <link rel="alternate" href="{{ theme.rss }}" title="{{ "config.title" }}" type="application/atom+xml">
  {% endif %}
  {% if theme.favicon %}
    <link rel="icon" href="{{ url_for(theme.favicon) }}" >
  {% endif %}
  {% if config.highlight.enable %}
    <link href="//fonts.googleapis.com/css?family=Source+Code+Pro" rel="stylesheet" type="text/css">
  {% endif %}
  {{ css('css/page') }}
  <script src="https://cdn.ravenjs.com/3.19.1/raven.min.js" crossorigin="anonymous"></script>
  <script>
    Raven.config('http://aef818609cfb452f9f065e7e6362ef39@sentry.yvshuo.me/3').install()
  </script>
  {{ js('js/vue.min.js') }}
  <script>window.PAGE_TYPE = "{{ page.type }}"</script>
</head>
<body class="docs">
  {% set isIndex = page.path === 'index.html'; %}
  {% include "_partial/header/mobile-nav.swig" with {isIndex:isIndex}%}
  {% include "_partial/header/header.swig" %}
  <div id="main" class="fix-sidebar">
      {% block content %}{% endblock %}
  </div>
  {% block footer %}{% endblock %}
  {% include "_partial/footer/after-footer.swig" %}
</body>
</html>

