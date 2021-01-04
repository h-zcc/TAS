<%--@elvariable id="announcement" type="com.se.courses.announcement.domain.Announcement"--%>
<%--@elvariable id="announcements" type="java.util.ArrayList<Announcement>"--%>
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
                <li>
                    <a href="/course/${courseId}">课程公告</a>
                </li>
                <li class="active">
                    <strong>公告列表</strong>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">

        </div>
    </div>

    <div class="wrapper wrapper-content  animated fadeInRight blog">
        <div class="row">
            <div class="col-lg-12">
                <div class="wrapper wrapper-content animated fadeInRight">
                    <c:forEach var="announcement" items="${announcements}" varStatus="status">
                        <div class="faq-item">
                            <div class="row">
                                <div class="col-md-7">
                                    <a data-toggle="collapse" href="#faq${status.index + 1}" class="faq-question">${announcement.title}</a>
                                    <small>Added on <i class="fa fa-clock-o"></i> ${announcement.date}</small>
                                </div>
                                <div class="col-md-3">

                                </div>
                                <div class="col-md-2 text-right">

                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div id="faq${status.index + 1}" class="panel-collapse collapse ">
                                        <div class="faq-answer">
                                            <p>
                                                    ${announcement.content}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</tmpl:overwrite>
<jsp:include page="../../template/teacher_course_tmpl.jsp"/>