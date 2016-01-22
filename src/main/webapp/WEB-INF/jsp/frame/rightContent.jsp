<%--
  Created by IntelliJ IDEA.
  User: Tornado
  Date: 2016/1/21
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section id="main" class="column">

  <h4 class="alert_info">欢迎来到指间沙后台管理系统.</h4>

  <article class="module width_full">
    <header><h3>公告栏</h3></header>
    <div class="module_content">
      <article class="stats_graph">
        暂无公告
      </article>

      <!--                <article class="stats_overview">-->
      <!--                    <div class="overview_today">-->
      <!--                        <p class="overview_day">Today</p>-->
      <!--                        <p class="overview_count">1,876</p>-->
      <!--                        <p class="overview_type">Hits</p>-->
      <!--                        <p class="overview_count">2,103</p>-->
      <!--                        <p class="overview_type">Views</p>-->
      <!--                    </div>-->
      <!--                    <div class="overview_previous">-->
      <!--                        <p class="overview_day">Yesterday</p>-->
      <!--                        <p class="overview_count">1,646</p>-->
      <!--                        <p class="overview_type">Hits</p>-->
      <!--                        <p class="overview_count">2,054</p>-->
      <!--                        <p class="overview_type">Views</p>-->
      <!--                    </div>-->
      <!--                </article>-->
      <div class="clear"></div>
    </div>
  </article><!-- end of stats article -->

  <article class="module width_3_quarter">
    <header><h3 class="tabs_involved">动态</h3>
    </header>
    <div style="height: 280px;" class="tab_container">
      <div class="message_list">
        <div class="module_content">
          <s:action name="listLog" executeResult="true" namespace="/" var="l"/>
          <s:iterator value="#l.logEntityList" var="b">
            <div class="message">
              <p>
                <s:property value="#b.time"/>:&nbsp;&nbsp;&nbsp;
                <s:property value="#b.name"/><s:property value="#b.thing"/>
              </p>
            </div>
          </s:iterator>
        </div>
      </div>
    </div>

  </article><!-- end of content manager article -->

  <article class="module width_quarter">
    <header><h3>留言板</h3></header>
    <div class="message_list">
      <div class="module_content">
        <%--<div class="message"><p>小张，你把最新一批客户的资料导入下系统.</p>--%>
        <%--<p><strong>Tornado</strong></p></div>--%>
        <%--<div class="message"><p>小王，你把7号到9号的联系记录打印下，等下交到我办公室.</p>--%>
        <%--<p><strong>Tornado</strong></p></div>--%>
        <%--<div class="message"><p>大家不要偷懒，好好干.</p>--%>
        <%--<p><strong>Tornado</strong></p></div>--%>
        <%--<div class="message"><p>大家都累了一天了，等下我请客，大家去happy一下.</p>--%>
        <%--<p><strong>Tornado</strong></p></div>--%>
        <!--加载action获取留言板内容-->
        <s:action name="listLeaveword" executeResult="true" namespace="/" var="l"/>
        <s:iterator value="#l.leavewordEntityList" var="b">
          <div class="message">
            <p><s:property value="#b.content"/></p>
            <p>
              <strong><s:property value="#b.time"/></strong>&nbsp;&nbsp;
              <strong><s:property value="#b.name"/></strong>
            </p>
          </div>
        </s:iterator>
      </div>
    </div>
    <footer>
      <form class="post_message" action="addLeaveword.action" method="post">
        <input type="text" value="Message" name="leavewordEntity.content" onfocus="if(!this._haschanged){this.value=''};this._haschanged=true;">
        <input type="submit" class="btn_post_message" value=""/>
      </form>
    </footer>
  </article><!-- end of messages article -->

  <div class="clear"></div>

  <h4 class="alert_warning">修改操作</h4>

  <h4 class="alert_error">删除操作</h4>

  <h4 class="alert_success">添加操作</h4>

  <div class="spacer"></div>
</section>
