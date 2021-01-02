<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%--@elvariable id="user" type="com.se.global.domain.Student"--%>
<%--@elvariable id="noticeTotalNum" type="int"--%>
<tmpl:overwrite name="body">

    <div class="wrapper" style="padding: 0">
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <span>
                            <div style="display: flex;justify-content: center;align-items: center;">
                                <img alt="image" class="img-circle" src="/image/logo.png"
                                     style="width: 120px;height: 120px;"/>

                            </div>
                             </span>
                        </div>
                        <div class="logo-element">
                            IN+
                        </div>
                    </li>
                    <li>
                        <a href="/course/${courseId}"><i class="fa fa-bell"></i> <span class="nav-label">课程公告</span>
                        </a>
                    </li>
                    <li>
                        <a href="/course/${courseId}/introduction"><i class="fa fa-info"></i> <span class="nav-label">课程简介</span></a>
                    </li>
                    <li>
                        <a href="/course/${courseId}/resource/material"><i class="fa fa-file-text"></i> <span
                                class="nav-label">资料下载</span></a>
                    </li>
                    <li>
                        <a href="/course/${courseId}/resource/video/watch"><i class="fa fa-youtube-play"></i> <span
                                class="nav-label">视频观看 </span></a>
                    </li>
                    <li>
                        <a href="/course/${courseId}/onlineTest/list"><i class="fa fa-pencil-square-o"></i> <span
                                class="nav-label">在看测试</span> </a>
                    </li>
                    <li>
                        <a href="/course/${courseId}/homework/list"><i class="fa fa-laptop"></i> <span
                                class="nav-label">实验作业</span></a>
                    </li>
                    <li>
                        <a href="/course/${courseId}/comment"><i class="fa fa-comments-o"></i> <span class="nav-label">留言板</span></a>
                    </li>
                </ul>

            </div>
        </nav>
        <tmpl:block name="content1"/>
    </div>
    <!--<header id="header" class="page-topbar">
    <div class="navbar-fixed">
    <nav>
    <div class="nav-wrapper">
    <a href="/index" class="brand-logo">TAS</a>
    <div class="header-search-wrapper hide-on-med-and-down sideNav-lock">
    <i class="material-icons">search</i>
    <input type="text" name="Search" class="header-search-input z-depth-2" placeholder="Explore">
    </div>
    <ul class="right hide-on-med-and-down">
    <li>
    <a href="/notice" class="waves-effect waves-block waves-light" data-activates="notifications-dropdown">
    <i class="material-icons">
    notifications_none
    <small class="notification-badge">
    ${noticeTotalNum}
    </small>
    </i>
    </a>
    </li>
    <li>
    <a href="/user/info">
    <i class="material-icons">
    account_circle
    </i>
    </a>
    </li>
    <li>
    <a href="/logout">
    <i class="material-icons">
    arrow_forward
    </i>
    </a>
    </li>
    </ul>
    </div>
    </nav>
    </div>
    </header>
    -->

</tmpl:overwrite>
<jsp:include page="base.jsp"/>