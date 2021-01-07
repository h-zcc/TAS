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
                        <a href="/admin/student_manage"><i class="fa fa-users"></i> <span class="nav-label">学生管理</span>
                        </a>
                    </li>
                    <li>
                        <a href="/admin/teacher_manage"><i class="fa fa-mortar-board"></i> <span class="nav-label">教师管理</span></a>
                    </li>
                    <li>
                        <a href="/admin/course_manage"><i class="fa fa-institution"></i> <span
                                class="nav-label">课程管理</span></a>
                    </li>
                    <li>
                        <a href="/admin/relation_manage"><i class="fa fa-share-alt"></i> <span
                                class="nav-label">关联管理</span></a>
                    </li>
                </ul>

            </div>
        </nav>
        <tmpl:block name="content1"/>
    </div>

</tmpl:overwrite>
<jsp:include page="base.jsp"/>