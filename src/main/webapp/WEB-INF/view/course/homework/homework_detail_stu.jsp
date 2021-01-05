<%--@elvariable id="announcement" type="com.se.courses.announcement.domain.Announcement"--%>
<%--@elvariable id="courseId" type="int"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="content">

    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>作业详情</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="/index">首页 Home</a>
                </li>
                <li>
                    <a href="/course/${courseId}/homework/list">实验作业</a>
                </li>
                <li class="active">
                    <strong>作业详情</strong>
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
                        <div class="col-sm-8">
                            <h2><strong>作业名称：${homework.title}</strong></h2>
                            <h3><i class="fa fa-clock-o"></i> 截止日期：${homework.ddl_date}</h3>
                            <address>
                                <br>
                                <h4>作业内容：${homework.content}</h4><br>
                                <h4>满分：${homework.score}</h4><br>
                                <c:if test="${uploadHomework.get_score < 0 || uploadHomework == null}">
                                    <h4>当前分数：未打分</h4><br>
                                </c:if>
                                <c:if test="${uploadHomework.get_score >= 0}">
                                        <h4>当前分数：${uploadHomework.get_score}</h4><br>
                                </c:if>
                                <div>
                                    <h4>作业要求:</h4>
                                    <a href="/course/homework/download?file_id=${attachment.file_id}">
                                            ${attachment.name}
                                    </a>
                                </div>
                            </address>
                        </div>
                        <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="row" style="display: flex;justify-content: center">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>作业提交</h5>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal" id="uploadForm"
                              action="/course/${homework.course_id}/homework/${homework.id}/upload"
                              method="post" enctype="multipart/form-data">
                            <p>请选择文件后上传</p>
                            <div class="form-group"><label class="col-lg-1 control-label">文件</label>

                                <div class="col-sm-1">
                                    <div >
                                        <label title="Upload image file" for="inputImage" class="btn btn-primary btn-block">
                                            <input type="file" name="file" id="inputImage" class="hide">
                                            选择文件
                                        </label>
                                    </div>
                                </div>
                                <div class="col-sm-1">
                                    <button class="btn btn-primary btn-block"
                                            name="submit" type="submit">
                                        提交
                                    </button>
                                </div>
                            </div>
                        </form>
                        <!--
                        <form id="uploadForm2" class="col s12"
                              action="/course/${homework.course_id}/homework/${homework.id}/upload"
                              method="post" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col s0">
                                    <div class="file-field input-field">
                                        <div class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow">
                                            <span>选择文件...</span>
                                            <input type="file" name="file">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s6">
                                    <button class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow"
                                            name="submit" type="submit">
                                        提交
                                        <i class="material-icons right">file_upload</i>
                                    </button>
                                </div>
                            </div>
                        </form>
    -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--
    <div class="container">
        <div class="row">
            <div class="col s0 m1 l1"></div>
            <div class="col s12 m10 l8">
                <div class="section"></div>
                <h4>作业详情</h4>
                <h5>Homework Detail</h5>
                <div class="divider"></div>
                <br>
                <div class="card section">
                    <div class="card-content black-text">
                        <span class="card-title">作业名称</span>
                        <div><p>作业内容：${homework.content}</p>
                            <p>截止日期：${homework.ddl_date}</p>
                            <p>满分：${homework.score}</p>
                            <c:if test="${uploadHomework.get_score == -1}">
                                <p>当前分数：未打分</p>
                            </c:if>
                            <c:if test="${uploadHomework.get_score != -1}">
                                <p>当前分数：${uploadHomework.get_score}</p>
                            </c:if>
                            <div>
                                作业要求:
                                <a href="/course/homework/download?file_id=${attachment.file_id}">
                                        ${attachment.name}
                                </a>
                            </div>
                            <br>
                        </div>
                        <div class="card-action">
                            <div class="row">
                                <form id="uploadForm1" class="col s12"
                                      action="/course/${homework.course_id}/homework/${homework.id}/upload"
                                      method="post" enctype="multipart/form-data">
                                    <div class="row">
                                        <div class="col s0">
                                            <div class="file-field input-field">
                                                <div class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow">
                                                    <span>选择文件...</span>
                                                    <input type="file" name="file">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s6">
                                            <button class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow"
                                                    name="submit" type="submit">
                                                提交
                                                <i class="material-icons right">file_upload</i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <a href="/course/homework/download?file_id=${uploadHomework.upload_homework_file}">
                                    ${uploadHomework.name}
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col s0 m1 l1"></div>
    </div>
    </div>-->
</tmpl:overwrite>
<jsp:include page="../../template/student_course_tmpl.jsp"/>