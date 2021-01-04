<%--@elvariable id="announcement" type="com.se.courses.announcement.domain.Announcement"--%>
<%--@elvariable id="courseId" type="int"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="content">

    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>实验作业</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="/index">首页 Home</a>
                </li>
                <li class="active">
                    <strong>实验作业</strong>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">

        </div>
    </div>
    <div class="wrapper wrapper-content animated fadeInRight">

        <div class="row">
            <div class="col-lg-12">
                <div class="contact-box" style="width: 100%;">
                    <a href="#">
                        <div class="col-lg-12">
                            <h2><strong>作业名称</strong></h2>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                </div>
                <c:forEach var="homework" items="${homeworkList}">
                    <div class="contact-box" style="width: 100%;">
                        <a href="#">
                            <div class="col-lg-10">
                                <h3><strong>${homework.title}</strong></h3>
                            </div>
                            <div class="col-lg-2">
                                <a href="/course/${course_id}/homework/${homework.id}">
                                    <button type="button" class="btn btn-outline btn-primary">写作业</button>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                        </a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</tmpl:overwrite>
<jsp:include page="../../template/student_course_tmpl.jsp"/>