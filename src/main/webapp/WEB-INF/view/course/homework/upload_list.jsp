<%--@elvariable id="announcement" type="com.se.courses.announcement.domain.Announcement"--%>
<%--@elvariable id="courseId" type="int"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="content">
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>提交列表</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="/index">首页 Home</a>
                </li>
                <li>
                    <a href="/course/${courseId}/homework/list">实验作业</a>
                </li>
                <li>
                    <a href="/course/${course_id}/homework/${homework.id}">作业详情</a>
                </li>
                <li class="active">
                    <strong>提交列表</strong>
                </li>
            </ol>
        </div>
    </div>
    <div class="wrapper wrapper-content animated fadeInRight">

        <div class="row">
            <div class="col-lg-12">
                <div class="contact-box" style="width: 100%;">
                    <div class="col-lg-12">
                        <h2><strong>提交列表</strong></h2>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <c:forEach var="uploadHomework" items="${uploadHomeworkList}">
                    <div class="contact-box" style="width: 100%; display: flex;align-items: center;">
                        <div class="col-lg-3">
                            <h3>
                                <strong>${uploadHomework.studentId},${uploadHomework.studentName}
                                </strong>
                            </h3>
                        </div>
                        <c:if test="${uploadHomework.uploadFileId != -1}">
                            <div class="col-lg-7">
                                    <div style="display: flex;align-items: center;">
                                        <form id="homeworkForm" name="homeworkform" method="post"
                                              action="/course/${course_id}/homework/${homework_id}/mark"
                                              onsubmit="return validateHomework()" style="margin: 0;">
                                            <div>
                                                <input type="hidden" value=${uploadHomework.uploadId} id="disabled"
                                                       name="upload_id" type="number">
                                            </div>
                                            <div class="col-lg-10">
                                                <div class="col-lg-6">
                                                    <input placeholder="分数" class="form-control" id="hw_score"
                                                           name="score" type="number">
                                                </div>
                                                <div class="col-lg-2">
                                                    <button class="btn btn-primary btn-outline" type="submit">
                                                        提交
                                                    </button>
                                                </div>
                                            </div>

                                        </form>
                                    </div>
                            </div>
                            <div class="col-lg-2">
                                <a href="/course/homework/download?file_id=${uploadHomework.uploadFileId}">
                                        <span class="badge badge-success">
                                                ${uploadHomework.uploadFileName}
                                        </span>
                                </a>
                            </div>
                        </c:if>

                        <c:if test="${uploadHomework.uploadFileId == -1}">
                            <div class="col-lg-7">
                            </div>
                            <div class="col-lg-1">
                                <span class="badge badge-danger">还未提交</span>
                            </div>
                        </c:if>
                        <div class="clearfix"></div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <!--
    <div class="container">
    <div class="row">
    <div class="col s0 m1 l1"></div>
    <div class="col s12 m12 l11">
    <div class="section"></div>
    <div class="row">
    <div class="col s12">
    <ul class="collection with-header">
    <li class="collection-header">
    <h4>提交列表</h4>
    <h5>Submit List</h5>
    </li>
    <c:forEach var="uploadHomework" items="${uploadHomeworkList}">
        <li class="collection-item">
        <div class="section">
        <div class="row">
        <div class="col s2">
        ${uploadHomework.studentId},${uploadHomework.studentName}
        </div>
        <c:if test="${uploadHomework.uploadFileId != -1}">

            <div class="col s8">
            <form id="homeworkForm" name="homeworkform" method="post"
            action="/course/${course_id}/homework/${homework_id}/mark" onsubmit="return validateHomework()">


            <div>
            <input type="hidden" value=${uploadHomework.uploadId} id="disabled" name="upload_id" type="number" >
            </div>

            <div class="input-field col s4">
            <i class="material-icons prefix">grade</i>
            <input id="hw_score" name="score" type="number" class="validate">
            <label for="hw_score">作业分数</label>
            </div>
            <div class="col s4">
            <button class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow " type="submit">
            <i class="material-icons right">send</i>
            提交
            </button>
            </div>


            </form>
            </div>
            <div class="col s2">
            <a href="/course/homework/download?file_id=${uploadHomework.uploadFileId}" class="secondary-content">${uploadHomework.uploadFileName}</a>
            </div>
        </c:if>

        <c:if test="${uploadHomework.uploadFileId == -1}">
            <div class="secondary-content">
            <span class="red-text text-read">还未提交</span>
            </div>
        </c:if>
        </div>
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