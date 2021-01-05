<%--@elvariable id="course" type="com.se.global.domain.Course"--%>
<%--@elvariable id="courses" type="java.util.ArrayList<com.se.global.domain.Course>"--%>
<%--@elvariable id="noticeCourseNum" type="java.util.ArrayList<Integer>"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="content1">

    <div class="gray-bg" id="page-wrapper">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary" href="#"
                       style="height: 30px;display: flex;align-items: center"><i
                            class="fa fa-bars"></i> </a>
                    <form role="search" class="navbar-form-custom" action="search_results.html"
                          style="margin: 0;padding: 0">
                        <div class="form-group">
                            <input type="text" placeholder="Search for something..." class="form-control"
                                   name="top-search" id="top-search">
                        </div>
                    </form>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li>
                        <span class="m-r-sm text-muted welcome-message">欢迎使用线上教学辅助系统</span>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" href="/notice"> <!--data-toggle="dropdown"-->
                            <i class="fa fa-bell"></i> <span class="label label-warning">${noticeTotalNum}</span>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" href="/user/info"><!--data-toggle="dropdown"-->
                            <i class="fa fa-user"></i>
                        </a>
                    </li>


                    <li>
                        <a href="/logout">
                            <i class="fa fa-sign-out"></i> Log out
                        </a>
                    </li>
                </ul>

            </nav>
        </div>
        <tmpl:block name="content"/>
    </div>
    <!--
    <div id="main">
        <div class="wrapper">
            <aside id="left-sidebar-nav">
                <ul id="slide-out" class="side-nav fixed leftside-navigation">
                    <c:forEach var="course" items="${courses}" varStatus="status">
                        <li>
                            <a href="/notice/${course.id}">
                                <i class="material-icons left">
                                    notifications
                                    <small class="notification-badge">
                                            ${noticeCourseNum.get(status.index)}
                                    </small>
                                </i>
                                    ${course.name}
                            </a>
                        </li>
                    </c:forEach>
                </ul>
                <a href="#" data-activates="slide-out" class="sidebar-collapse btn-floating waves-effect waves-light hide-on-large-only">
                    <i class="material-icons">menu</i>
                </a>
            </aside>
            <tmpl:block name="content"/>
        </div>
    </div>
    <footer class="page-footer">
        <div class="container">
            <div class="row">
                <div class="col l6 s12">
                    <h5 class="white-text">反馈</h5>
                    <p class="grey-text text-lighten-4">
                        您可以通过发送邮件到daoyiwu1997@gmail.com
                    </p>
                    <p class="grey-text text-lighten-4">
                        给我们提供宝贵的建议和意见，谢谢！
                    </p>
                    <a href="https://mail.google.com" class="btn waves-effect waves-light cyan lighten-3">联系我们</a>
                </div>
                <div class="col l4 offset-l2 s12">
                    <h5 class="white-text">友情链接</h5>
                    <ul>
                        <li><a class="grey-text text-lighten-3" href="http://www.cc98.org/">CC98论坛</a></li>
                        <li><a class="grey-text text-lighten-3" href="http://www.cs.zju.edu.cn/">浙江大学计算机科学与技术学院</a></li>
                        <li><a class="grey-text text-lighten-3" href="http://jwbinfosys.zju.edu.cn/default2.aspx">浙江大学现代教务管理系统</a></li>
                        <li><a class="grey-text text-lighten-3" href="https://www.zjubtv.com/">浙江大学广播电视网</a></li>
                        <li><a class="grey-text text-lighten-3" href="https://pintia.cn/">拼题A</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <div class="container">
                © 2017 Copyright G5
                <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
            </div>
        </div>
    </footer>-->
</tmpl:overwrite>
<jsp:include page="top_bar_tmpl6.jsp"/>