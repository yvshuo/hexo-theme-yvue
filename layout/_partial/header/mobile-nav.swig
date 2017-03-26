<div id="mobile-bar" {% if isIndex %}class="top"{% endif %}>
  <a class="menu-button"></a>
  <a class="logo" href="/"></a>
  {% if !isIndex %}
    <a class="back" href="javascript:history.go(-1)"></a>
  {% endif %}
</div>