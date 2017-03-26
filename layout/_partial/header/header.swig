<div id="header">
  <a id="logo" href="/">
    <img src="{{ theme.logo }}">
    <span>{{ theme.title }}</span>
  </a>
  <ul id="nav">
    {% include "main-menu.swig" with { context: 'sidebar' }%}
  </ul>
</div>
