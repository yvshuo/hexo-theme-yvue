{% if config.disqus_shortname %}
  <script>
    var disqus_shortname = '{{ config.disqus_shortname }}';
    {% if page.permalink %}var disqus_url = '{{ page.permalink }}';{% endif %}
    (function(){
      var dsq = document.createElement('script');
      dsq.type = 'text/javascript';
      dsq.async = true;
      dsq.src = '//' + disqus_shortname + '.disqus.com/{% if page.comments %}embed.js{% else %}count.js{% endif %}';
      (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    })(); 
  </script>
{% endif %}
<script>
var topScrolled = false
window.addEventListener('scroll', function () {
  if (window.pageYOffset > 165 && !topScrolled) {
    topScrolled = true
    document.getElementById('mobile-bar').classList.remove('top')
  } else if (window.pageYOffset <= 165 && topScrolled) {
    topScrolled = false
    document.getElementById('mobile-bar').classList.add('top')
  }
})
</script>
<script src="//cdn.bootcss.com/jquery/2.0.3/jquery.min.js"></script>
{{ js('js/script') }}
{{ js('js/common.js') }}
<script>
{% if theme.open_in_new %}
    let $a = document.querySelectorAll('.blog p:not(.article-more-link)>a,.content.docs p>a,.article-inner p:not(.article-more-link)>a')
    $a.forEach(($em) => {
      $em.setAttribute('target', '_blank')
    })
{% endif %}
</script>
