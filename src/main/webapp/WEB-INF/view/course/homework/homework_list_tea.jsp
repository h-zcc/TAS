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
                    <div class="col-lg-3">
                        <h2><strong>作业名称</strong></h2>
                    </div>

                    <div class="col-lg-6">
                        <a href="./to-assign.html" style="height: 56px; display: flex;align-items: center;">
                            <button type="button" class="btn btn-outline btn-success">布置作业</button>
                        </a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <c:forEach var="homework" items="${homeworkList}">
                    <div class="contact-box" style="width: 100%;">
                        <a href="#">
                            <div class="col-lg-10">
                                <h3><strong>${homework.title}</strong></h3>
                            </div>
                            <div class="col-lg-1">
                                <a href="/course/${course_id}/homework/${homework.id}">
                                    <button type="button" class="btn btn-outline btn-primary">查看情况</button>
                                </a>
                            </div>
                            <c:if test="${userType == 2}">
                                <div class="col-lg-1">
                                    <a class="btn btn-outline btn-danger"
                                       href="/course/${course_id}/homework/${homework.id}/delete">
                                        删除作业
                                    </a>
                                </div>
                            </c:if>

                            <div class="clearfix"></div>
                        </a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <!--
    <div class="container">
    <div class="row">
    <div class="col s0 m1 l1"></div>
    <div class="col s12 m10 l8">
    <div class="section"></div>
    <div class="row">
    <div class="col s0"></div>
    <div class="col s12">
    <a href="./to-assign.html" class="btn waves-effect waves-light">
    <i class="material-icons right">
    send
    </i>
    布置作业
    </a>
    </div>
    <div class="col s0"></div>
    </div>
    <div class="row">
    <div class="input-field col s12">
    <ul class="collection with-header">
    <li class="collection-header">
    <h4>作业列表</h4>
    <h5>Homework List</h5>
    </li>
    <c:forEach var="homework" items="${homeworkList}">
        <li class="collection-item">
        <div>
        <a href="/course/${course_id}/homework/${homework.id}">${homework.title}</a>
        <c:if test="${userType == 2}">
            <a href="/course/${course_id}/homework/${homework.id}/delete"
            class="secondary-content materialize-red-text">
            <i class="material-icons">
            delete_forever
            </i>
            </a>
        </c:if>
        </div>
        </li>
    </c:forEach>
    </ul>
    </div>
    </div>
    </div>
    <div class="col s0 m1 l1"></div>
    </div>
    </div>-->
</tmpl:overwrite>
<jsp:include page="../../template/teacher_course_tmpl.jsp"/>