<li><a href="/blog" class="nav-link{% if page.path.match('^index') %} current{% endif %}">首页</a></li>
<li><a href="/blog/archives" class="nav-link{% if page.path.match('^archives') %} current{% endif %}">文章列表</a></li>
<li><a href="/blog/tags" class="nav-link{% if page.path.match('^tags') %} current{% endif %}">标签列表</a></li>
<li class="nav-dropdown-container">
  <a class="nav-link{% if page.path.match('^docs') %} current{% endif %}">文档</a><span class="arrow"></span>
  <ul class="nav-dropdown">
    <li><a href="/blog/docs/alibaba" class="nav-link">阿里巴巴java开发手册解读</a></li>
    <li><a href="/blog/docs/es6" class="nav-link">ES6温故而知新</a></li>
  </ul>
</li>