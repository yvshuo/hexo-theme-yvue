{% set dateNow = date(Date.now(), "YYYY") %}
<div id="footer">
	<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1260544287'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1260544287' type='text/javascript'%3E%3C/script%3E"));</script>
	&copy;{{ dateNow }} {{ config.author || config.title }}
	<br>
	{{ __('powered_by') }} <a href="https://github.com/yvshuo/hexo-theme-yvue" target="_blank">Yvue</a>
	<br>
	{{ config.beian }}
</div>