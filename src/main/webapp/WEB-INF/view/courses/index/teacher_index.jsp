<%--@elvariable id="announcement" type="com.se.courses.announcement.domain.Announcement"--%>
<%--@elvariable id="courseId" type="int"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="content">

    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>课程公告</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="/index">首页 Home</a>
                </li>
                <li class="active">
                    <strong>课程公告</strong>
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
                        <a href="/course/${courseId}/announcement/list" class="btn-link">
                            <h2>
                                    ${announcement.title}
                            </h2>
                        </a>
                        <div class="small m-b-xs">
                            <span class="text-muted"><i class="fa fa-clock-o"></i> ${announcement.date}</span>
                        </div>
                        <p>
                                ${announcement.content}
                        </p>
                        <div class="row" style="display: flex;flex-direction: row-reverse;margin-right: 2%;border-top: 1px;">
                            <div class="btn-group">
                                <a href="/course/${courseId}/announcement/list" type="button" class="btn btn-outline btn-primary"
                                   style="margin-right: 20px;">查看所有</a>
                                <a href="/course/${courseId}/announcement/to-upload" type="button"
                                   class="btn btn-outline btn-success">发布公告</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--
    <div class="container">
    <div class="row">
        <div class="col s0 m1 l1"></div>
        <div class="col s12 m9 l9">
            <div class="card section">
                <div class="card-content black-text">
                    <span class="card-title">${announcement.title}</span>
                    <p>${announcement.content}</p>
                    <p>${announcement.date}</p>
                </div>
                <div class="card-action">
                    <a href="/course/${courseId}/announcement/list" class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow">
                        <i class="material-icons right">
                            more_horiz
                        </i>
                        MORE
                    </a>
                    <a href="/course/${courseId}/announcement/to-upload" class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow">
                        <i class="material-icons right">
                            edit
                        </i>
                        发布公告
                    </a>
                </div>
            </div>
        </div>
        <div class="col s0 m2 l2"></div>
    </div>
    </div>-->
</tmpl:overwrite>
<jsp:include page="../../template/teacher_course_tmpl.jsp"/>