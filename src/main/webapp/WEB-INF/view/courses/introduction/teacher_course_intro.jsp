<%--@elvariable id="course" type="Course"--%>
<%--@elvariable id="teachers" type=""ArrayList<Teacher>"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
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
                        <div class="row" style="margin: 20px 10px;">
                            <a href="/course/${courseId}/introduction/edit" class="btn btn-outline btn-primary">
                                <i class="fa fa-pencil-square-o">

                                </i>
                                编辑
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--
    <div class="container">
        <div class="row">
            <div class="col s01 m1 l1"></div>
            <div class="col s10 m9 l9">
                <div class="card section">
                    <div class="card-content black-text">
                        <span class="card-title">${course.name}</span>
                        <div class="divider"></div>
                        <div class="row"></div>
                        <p>${course.college}</p>
                        <br/>
                        <p>${course.introduction}</p>
                        <br/>
                        <a href="/course/${courseId}/introduction/edit" class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow">
                            <i class="material-icons right">
                                edit
                            </i>
                            编辑
                        </a>
                    </div>
                </div>
            </div>
            <div class="col s1 m2 l2"></div>
        </div>
    </div>-->
</tmpl:overwrite>
<jsp:include page="../../template/teacher_course_tmpl.jsp"/>