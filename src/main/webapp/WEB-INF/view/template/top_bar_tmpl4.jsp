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
                            SEM
                        </div>
                    </li>
                    <li>
                        <a href="/passenger/${courseId}"><i class="fa fa-info"></i> <span class="nav-label">课程简介</span>
                        </a>
                    </li>
                    <li>
                        <a href="/passenger/${courseId}/video"><i class="fa fa-youtube-play"></i> <span class="nav-label">视频观看</span></a>
                    </li>
                    <li>
                        <a href="/passenger/${courseId}/comment"><i class="fa fa-comments-o"></i> <span
                                class="nav-label">留言板</span></a>
                    </li>
                    <!--
                    <li>
                        <a href="/notice"><i class="fa fa-bell"></i> <span
                                class="nav-label">消息中心 </span></a>
                    </li>
    -->
                </ul>

            </div>
        </nav>
        <tmpl:block name="content1"/>
    </div>
</tmpl:overwrite>
<jsp:include page="base.jsp"/>