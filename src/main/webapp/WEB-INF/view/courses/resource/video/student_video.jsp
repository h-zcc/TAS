<%--@elvariable id="user" type="com.se.global.domain.User"--%>
<%--@elvariable id="video" type="com.se.courses.resource.video.domain.Video"--%>
<%--@elvariable id="videos" type="java.util.ArrayList<Video>"--%>
<%--@elvariable id="courseId" type="int"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="content">

    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>视频观看</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="/index">首页 Home</a>
                </li>
                <li class="active">
                    <strong>视频观看</strong>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">

        </div>
    </div>

    <div class="row">
        <div class="col s0 m1 l1"></div>
        <div class="col s12 m9 l9">
            <div class="section"></div>
            <h4>视频列表</h4>
            <h5>Video List</h5>
            <div class="divider"></div>
            <div class="section"></div>
            <div class="row">
                <c:forEach var="video" items="${videos}">
                    <div class="row">
                            <video class="responsive video" width="100%" height="350" controls>
                                <source src="${video.location}" type="video/mp4">
                            </video>
                    </div>
                    <div class="row">
                            <div class="card section">
                                <div class="card-content black-text">
                                    <span class="card-title">${video.title}</span>
                                    <p>
                                        ${video.profile}
                                    </p>
                                </div>
                                <div class="card-action">
                                    <a href="/course/${courseId}/resource/video/download?file_id=${video.id}" class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow">
                                        下载
                                        <i class="material-icons">
                                            file_download
                                        </i>
                                    </a>
                                </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div class="col s0 m2 l2"></div>
    </div>
</tmpl:overwrite>
<jsp:include page="../../../template/student_course_tmpl.jsp"/>
