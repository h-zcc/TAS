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
                        <a href="/course/${courseId}"><i class="fa fa-bell"></i> <span class="nav-label">课程公告</span>
                        </a>
                    </li>
                    <li>
                        <a href="/course/${courseId}/introduction"><i class="fa fa-info"></i> <span class="nav-label">课程简介</span></a>
                    </li>
                    <li>
                        <a href="/course/${courseId}/resource/material"><i class="fa fa-file-text"></i> <span
                                class="nav-label">资料管理</span></a>
                    </li>
                    <li>
                        <a href="/course/${courseId}/resource/video/to-upload"><i class="fa fa-youtube-play"></i> <span
                                class="nav-label">视频上传</span></a>
                    </li>
                    <li>
                        <a href="/course/${courseId}/resource/video/watch"><i class="fa fa-youtube-play"></i> <span
                                class="nav-label">视频观看 </span></a>
                    </li>
                    <li>
                        <a href="/course/${courseId}/onlineTest/list"><i class="fa fa-pencil-square-o"></i> <span
                                class="nav-label">在线测试</span> </a>
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

</tmpl:overwrite>
<jsp:include page="base.jsp"/>