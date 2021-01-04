<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="content1">
    <div class="gray-bg" id="page-wrapper" style="margin: 0;">
        <div class="row wrapper border-bottom white-bg page-heading"
             style="display: flex;justify-content: center;align-items: center">

            <div class="col-lg-9">
                <h2>课程 Curriculum</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="/index"><strong>首页 Home</strong></a>
                    </li>
                </ol>
            </div>
        </div>
        <div class="wrapper wrapper-content animated fadeInRight"
             style="display: flex;justify-content: center;align-items: center">
            <div class="col-lg-9">

                <div class="row">
                    <c:forEach var="course" items="${courses}" varStatus="status">

                        <div class="col-lg-4">
                            <div class="contact-box center-version">

                                <a href="/course/${course.id}">

                                    <h2 class="m-b-xs"><strong>${course.name}</strong></h2>

                                    <address class="m-t-md">
                                            ${course.semester += " " += course.time}<br>
                                            ${course.place}<br>
                                            ${course.credit}学分<br>
                                            ${course.college}
                                    </address>

                                </a>
                                <div class="contact-box-footer">
                                    <div class="m-t-xs btn-group">
                                        <a href="/passenger/${course.id}" class="btn btn-outline btn-primary"><i class="fa fa-sign-in" style="margin-right: 10px;"></i>进入</a>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </c:forEach>

                </div>
            </div>
        </div>
    </div>
    <!--
    <div class="container">
        <div class="row">
            <div class="col s12 m4 l4">

            </div>
        </div>
        <div class="row">
            <div class="col s0 m2 l2">

            </div>
            <div class="col s12 m8 l8">
                <div class="section">
                    <h5>Course</h5>
                </div>
                <div class="divider">

                </div>
                <div class="section">

                </div>
                <c:forEach var="course" items="${courses}" varStatus="status">
                    <c:if test="${status.index % 3 == 0}">
                        <div class="row">
                    </c:if>
                    <div class="col s12 m4 l4">
                        <div class="card">
                            <div class="card-content black-text">
                                <span class="card-title">${course.name}</span>
                                <p>
                                        ${course.college}
                                </p>
                            </div>
                            <div class="card-action">
                                <a href="/passenger/${course.id}" class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow">进入</a>
                            </div>
                        </div>
                    </div>
                    <c:if test="${(status.index + 1) % 3 == 0}">
                        </div>
                    </c:if>
                </c:forEach>
            </div>
            <div class="col s0 m2 l2">
            </div>
        </div>
    </div>-->
</tmpl:overwrite>
<jsp:include page="../../template/top_bar_tmpl1.jsp"/>