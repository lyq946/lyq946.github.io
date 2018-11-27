<script async src="https://busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>
<div class="copyright">{#
#}{% set current = date(Date.now(), "YYYY") %}{#
#}&copy; {% if theme.footer.since and theme.footer.since != current %}{{ theme.footer.since }} &mdash; {% endif %}{#
#}<span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="fa fa-{{ theme.footer.icon }}"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ theme.footer.copyright || config.author }}</span>

  {% if theme.post_wordcount.totalcount %}
    <span class="post-meta-divider">|</span>
    <span class="post-meta-item-icon">
      <i class="fa fa-area-chart"></i>
    </span>
    {% if theme.post_wordcount.item_text %}
      <span class="post-meta-item-text">{{ __('post.totalcount') }}&#58;</span>
    {% endif %}
    <span title="{{ __('post.totalcount') }}">{#
    #}{{ totalcount(site, '0,0.0a') }}{#
  #}</span>
  {% endif %}
</div>

<!--<div class="powered-by">
<i class="fa fa-user-md"></i><span id="busuanzi_container_site_uv">
  本站访客数:<span id="busuanzi_value_site_uv"></span>
</span>
</div>-->

{% if theme.footer.powered %}
  <div class="powered-by">{#
  #}{{ __('footer.powered', '') }}{#
#}</div>
{% endif %}

<!--{% if theme.footer.powered and theme.footer.theme.enable %}
  <span class="post-meta-divider">|</span>
{% endif %}-->

{% if theme.footer.theme.enable %}
  <div class="theme-info">{#
  #}{{ __('footer.theme') }}{#
  #}{#
#}</div>
{% endif %}

{% if theme.footer.custom_text %}
  <div class="footer-custom">{#
  #}{{ theme.footer.custom_text }}</div>
{% endif %}

<!--<div class="theme-info">
  <div class="powered-by"></div>
  <span class="post-count">博客全站共{{ totalcount(site) }}字</span>
</div>-->

<br/>

<!-- 新增访客统计代码 -->

<div class="busuanzi-count">
    <script async="" src="https://dn-lbstatics.qbox.me/busuanzi/2.3/busuanzi.pure.mini.js"></script>
    <span class="site-uv">
      <i class="fa fa-user"></i>
      访问用户： <span class="busuanzi-value" id="busuanzi_value_site_uv"></span> 人
    </span>
    <div class="powered-by"></div>
    <span class="site-uv">
      <i class="fa fa-eye"></i>
      访问次数： <span class="busuanzi-value" id="busuanzi_value_site_pv"></span> 次
    </span>
    <!-- 博客字数统计 -->
    <span class="site-pv">
      <i class="fa fa-pencil"></i>
      博客全站共： <span class="post-count">{{ totalcount(site) }}</span> 字
    </span>
</div>
<!-- 新增访客统计代码 END-->

<!-- 在网页底部添加网站运行时间 -->
<span id="timeDate">载入天数...</span><span id="times">载入时分秒...</span>
<script>
    var now = new Date();
    function createtime() {
        var grt= new Date("11/24/2018 00:00:00");//此处修改你的建站时间或者网站上线时间
        now.setTime(now.getTime()+250);
        days = (now - grt ) / 1000 / 60 / 60 / 24; dnum = Math.floor(days);
        hours = (now - grt ) / 1000 / 60 / 60 - (24 * dnum); hnum = Math.floor(hours);
        if(String(hnum).length ==1 ){hnum = "0" + hnum;} minutes = (now - grt ) / 1000 /60 - (24 * 60 * dnum) - (60 * hnum);
        mnum = Math.floor(minutes); if(String(mnum).length ==1 ){mnum = "0" + mnum;}
        seconds = (now - grt ) / 1000 - (24 * 60 * 60 * dnum) - (60 * 60 * hnum) - (60 * mnum);
        snum = Math.round(seconds); if(String(snum).length ==1 ){snum = "0" + snum;}
        document.getElementById("timeDate").innerHTML = "Run for "+dnum+" Days ";
        document.getElementById("times").innerHTML = hnum + " Hours " + mnum + " m " + snum + " s";
    }
setInterval("createtime()",250);
</script>
