<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <c:forEach var="course" items="${courses}" varStatus="status">
                        <li>
                            <a href="/notice/${course.id}">
                                <i class="fa fa-bell"></i><span class="label label-warning">${noticeCourseNum.get(status.index)}</span>
                                <span class="nav-label">${course.name}</span>
                            </a>
                        </li>
                    </c:forEach>
                </ul>

            </div>
        </nav>
        <tmpl:block name="content1"/>
    </div>

</tmpl:overwrite>
<jsp:include page="base.jsp"/>