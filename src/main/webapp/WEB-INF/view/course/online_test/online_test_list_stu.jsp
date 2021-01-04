<%--@elvariable id="announcement" type="com.se.courses.announcement.domain.Announcement"--%>
<%--@elvariable id="courseId" type="int"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="script">

</tmpl:overwrite>
<tmpl:overwrite name="content">

    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>在线测试</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="/index">首页 Home</a>
                </li>
                <li class="active">
                    <strong>在线测试</strong>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">

        </div>
    </div>
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-lg-12">
                <div class="contact-box">
                    <a href="#">
                        <div class="col-sm-5">
                            <h2><strong>测试名称</strong></h2>
                        </div>
                        <div class="col-sm-5">
                            <h2><strong>截止时间</strong></h2>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                </div>
                <c:forEach var="onlineTest" items="${onlineTests}">
                    <div class="contact-box">
                        <a href="#">
                            <div class="col-sm-5">
                                <h3><strong>${onlineTest.title}</strong></h3>
                            </div>
                            <div class="col-sm-5">
                                <h3><strong>${onlineTest.ddl_date}</strong></h3>
                            </div>
                            <div class="col-sm-2">
                                <a href="/course/${onlineTest.course_id}/onlineTest/${onlineTest.id}">
                                    <button type="button" class="btn btn-outline btn-primary">进入测试</button>
                                </a>
                            </div>
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
            <div class="col s12 m10 l10">
                <div class="section"></div>
                <h3>测试列表</h3>
                <h4>Test List</h4>
                <div class="divider"></div>
                <div class="section"></div>
                <table class="striped">
                    <thead>
                    <tr>
                        <th>测试名称</th>
                        <th>截止时间</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="onlineTest" items="${onlineTests}">
                        <tr>
                            <td><a href="/course/${onlineTest.course_id}/onlineTest/${onlineTest.id}">${onlineTest.title}</a></td>
                            <td>${onlineTest.ddl_date}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="col s0 m1 l1"></div>
            </div>
        </div>
    </div>-->
</tmpl:overwrite>
<jsp:include page="../../template/student_course_tmpl.jsp"/>