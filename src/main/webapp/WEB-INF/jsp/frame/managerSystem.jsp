<%--
  Created by IntelliJ IDEA.
  User: Tornado
  Date: 2016/1/21
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="keywords" content="" />
  <meta name="description" content="指间沙后台管理系统" />
  <meta name="viewPort" content="width=device-width, initial-scale=1.0">
  <meta charset="utf-8">

  <link rel="stylesheet" href="/css/main/layout.css" type="text/css" media="screen" />
  <link rel="stylesheet" href="/css/main/jquery.dataTables.css" type="text/css" media="screen" />
  <link rel="stylesheet" href="/css/CRUD/general.css" type="text/css" media="screen" />
  <!--[if lt IE 9]>
  <link rel="stylesheet" href="/css/main/ie.css" type="text/css" media="screen" />
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

  <script src="/js/jquery.js" type="text/javascript"></script>
  <script src="/js/hideshow.js" type="text/javascript"></script>
  <script src="/js/jquery.tablesorter.min.js" type="text/javascript"></script>
  <script src="/js/jquery.equalHeight.js" type="text/javascript"></script>
  <script src="/js/jquery.dataTables.js" type="text/javascript"></script>
  <script src="/js/validation.js" type="text/javascript"></script>


  <script type="text/javascript">
    $(document).ready(function()
            {
              $(".tablesorter").tablesorter();
            }
    );
    $(document).ready(function() {

      //When page loads...
      $(".tab_content").hide(); //Hide all content
      $("ul.tabs li:first").addClass("active").show(); //Activate first tab
      $(".tab_content:first").show(); //Show first tab content

      //On Click Event
      $("ul.tabs li").click(function() {
        $("ul.tabs li").removeClass("active"); //Remove any "active" class
        $(this).addClass("active"); //Add "active" class to selected tab
        $(".tab_content").hide(); //Hide all tab content

        var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
        $(activeTab).fadeIn(); //Fade in the active ID content
        return false;
      });

    });
  </script>
  <script type="text/javascript">
    $(document).ready(function() {
      $('#example').DataTable();
    } );
  </script>
  <script type="text/javascript">
    $(function(){
      $('.column').equalHeight();
    });
  </script>

</head>


<body>

<header id="header">
  <hgroup>
    <h1 class="site_title"><a href="managerSystem">指间沙后台管理系统</a></h1>
    <h2 class="section_title"></h2>
    <div class="btn_view_site">
      <a href="managerSystem?page=personal">个人中心</a>
      <a href="/">前端界面</a>
    </div>
  </hgroup>
</header> <!-- end of header bar -->

<section id="secondary_bar">
  <div class="user">
    <p><s:property value="#session.username"/></p>
    <!-- <a class="logout_user" href="#" title="Logout">Logout</a> -->
  </div>
  <div class="breadcrumbs_container">
    <article class="breadcrumbs"><a href="manager.html"></a> <div class="breadcrumb_divider"></div> <a class="current"></a></article>
  </div>
</section><!-- end of secondary bar -->

<aside id="sidebar" class="column">
  <form class="quick_search">
    <input type="text" value="Quick Search" onfocus="if(!this._haschanged){this.value=''};this._haschanged=true;">
  </form>
  <hr/>
  <h3>新闻管理</h3>
  <ul class="toggle">
    <li class="icn_tags"><a href="managerSystem?page=allNews">新闻概况</a></li>
    <li class="icn_tags"><a href="managerSystem?page=addNews">添加新闻</a></li>
    <li class="icn_tags"><a href="managerSystem?page=deleteNews">删除新闻</a></li>
  </ul>
  <h3>排版管理</h3>
  <ul class="toggle">
    <li class="icn_tags"><a href="#">待开发</a></li>
    <li class="icn_tags"><a href="#">待开发</a></li>
    <li class="icn_tags"><a href="#">待开发</a></li>
  </ul>
  <h3>评论管理</h3>
  <ul class="toggle">
    <li class="icn_tags"><a href="#">待开发</a></li>
    <li class="icn_tags"><a href="#">待开发</a></li>
    <li class="icn_tags"><a href="#">待开发</a></li>
  </ul>
  <h3>用户管理</h3>
  <ul class="toggle">
    <li class="icn_tags"><a href="#">待开发</a></li>
    <li class="icn_tags"><a href="#">待开发</a></li>
    <li class="icn_tags"><a href="#">待开发</a></li>
  </ul>


  <footer>
    <hr />
    <p><strong>Copyright &copy; 2016 Website Admin</strong></p>
    <p>by <a href="#">Gank</a></p>
  </footer>
</aside><!-- end of sidebar -->
<!--点击切换页面-->
<s:if test="#parameters.page==null || #parameters.page==''">
  <s:set name="lmbs" value="'rightContent.jsp'"/>
</s:if>
<s:else>
  <s:set name="lmbs" value="#parameters.page[0]+'.jsp'"/>
</s:else>
<s:include value="%{#lmbs}"/>

<!--点击切换页面结束-->
</body>
</html>

