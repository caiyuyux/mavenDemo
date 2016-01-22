<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

  <title>登陆</title>

  <!--- CSS --->
  <link rel="stylesheet" href="/css/style.css" type="text/css" />


  <!--- Javascript libraries (jQuery and Selectivizr) used for the custom checkbox --->

  <!--[if (gte IE 6)&(lte IE 8)]>
  <script type="text/javascript" src="/js/jquery-1.7.1.min.js"></script>
  <script type="text/javascript" src="/js/selectivizr.js"></script>
  <noscript><link rel="stylesheet" href="/css/fallback.css" /></noscript>
  <![endif]-->

</head>
<s:head/>
<body>
<div id="container">
  <s:form action="loginAction_authentication.action" method="post" namespace="/login">
    <div class="login">登陆</div>
    <div class="username-text">账号:</div>
    <div class="password-text">密码:</div>
    <div class="username-field">
      <input type="text" name="username" value="admin" />
    </div>
    <div class="password-field">
      <input type="password" name="password" value="admin"/>
    </div>
    <input type="checkbox" name="remember-me" id="remember-me" /><label for="remember-me">记住我</label>
    <div class="forgot-usr-pwd"><s:property value="tip"/></div>
    <input type="submit" name="submit" value="GO" />
  </s:form>
</div>
<div id="footer">
  <a href="/" target="_blank" title="指间沙">指间沙系统 by gank</a>
</div>
</body>
</html>
