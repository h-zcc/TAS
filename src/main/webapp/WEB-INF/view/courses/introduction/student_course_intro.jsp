<%--@elvariable id="course" type="Course"--%>
<%--@elvariable id="teachers" type=""ArrayList<Teacher>"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="content">

    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>课程简介</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="/index">首页 Home</a>
                </li>
                <li class="active">
                    <strong>课程简介</strong>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">

        </div>
    </div>
    <div class="wrapper wrapper-content  animated fadeInRight blog">
        <div class="row">
            <div class="col-lg-12">
                <div class="ibox">
                    <div class="ibox-content" style="padding:2% 10%;">
                        <a href="" class="btn-link">
                            <h2>
                                    ${course.name}
                            </h2>
                        </a>
                        <div class="small m-b-xs">
                            <span class="text-muted"><i class="fa fa-university"></i> <strong>${course.college}</strong></span>
                        </div>
                        <p>
                                ${course.introduction}
                        </p>
                    </div>
                </div>
            </div>
            <c:forEach var="teacher" items="${teachers}">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content" style="padding:2% 10%;">
                            <a href="" class="btn-link">
                                <h2>
                                        ${teacher.name}
                                </h2>
                            </a>
                            <div class="small m-b-xs">
                                <span class="text-muted"><i class="fa fa-graduation-cap"></i> ${teacher.title}</span>
                            </div>
                            <br/>
                            <p><i class="fa fa-university"></i> <strong>学院：</strong>${teacher.college}</p>
                            <br/>
                            <p><i class="fa fa-suitcase"></i> <strong>简介：</strong>${teacher.profile}</p>
                            <br/>
                            <p><i class="fa fa-envelope-o"></i> <strong>邮箱：</strong>${teacher.email}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</tmpl:overwrite>
<jsp:include page="../../template/student_course_tmpl.jsp"/>