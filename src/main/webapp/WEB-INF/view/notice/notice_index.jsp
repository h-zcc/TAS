<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="content">

    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>消息中心</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="/index">首页 Home</a>
                </li>
                <li class="active">
                    <strong>消息中心</strong>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">

        </div>
    </div>
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>资料</h5>
                    </div>
                    <div class="ibox-content">
                        <ul class="side-nav fixed leftside-navigation">
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
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
    <div>
        <div>
            <aside>
                <ul class="side-nav fixed leftside-navigation">
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
            </aside>
        </div>
    </div>
    </div>
</tmpl:overwrite>
<jsp:include page="../template/notice_center_tmpl.jsp"/>