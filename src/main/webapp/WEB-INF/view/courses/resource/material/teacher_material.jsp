<%--@elvariable id="materials" type="java.util.ArrayList<com.se.courses.resource.material.domain.Material>"--%>
<%--@elvariable id="courseId" type="int"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="content">

    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>资源管理</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="/index">首页 Home</a>
                </li>
                <li class="active">
                    <strong>资源管理</strong>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">
        </div>
    </div>

    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>上传资料</h5>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal" id="homeworkForm" name="homeworkform" method="post"
                              action="/course/${courseId}/resource/material/upload" enctype="multipart/form-data">
                            <div class="form-group">
                                <label class="col-lg-1 control-label">附件上传</label>
                                <div class="col-lg-1">
                                    <label title="Upload image file" for="inputImage" class="btn btn-primary btn-outline">
                                        <input type="file" name="file" id="inputImage" class="hide">
                                        选择文件
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-offset-1 col-lg-10">
                                    <button class="btn btn-outline btn-success" type="submit" name="action">上传</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <c:forEach var="material" items="${materials}">
                    <div class="contact-box" style="width: 100%;">
                        <a href="#">
                            <div class="col-lg-10">
                                <a href="/course/${courseId}/resource/material/download?file_id=${material.id}">
                                    <h3><strong>${material.name}</strong></h3>
                                </a> ${material.size1} ${material.date}
                            </div>
                                <div class="col-lg-2">
                                    <a href="/course/${courseId}/resource/material/delete?file_id=${material.id}">
                                        <button type="button" class="btn btn-outline btn-danger">删除</button>
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
                <div class="col s1 m1 l1"></div>
                <div class="col s10 m9 l9">
                    <div class="section"></div>
                    <h4>上传资料</h4>
                    <h5>Upload Material</h5>
                    <div class="divider row"></div>
                    <form method="post" action="/course/${courseId}/resource/material/upload" enctype="multipart/form-data">
                    <div class="row">
                        <div class="file-field input-field col s12">
                            <div class="btn">
                                <span>选择文件...</span>
                                <input type="file" name="file">
                            </div>
                            <!-- <div class="file-path-wrapper">
                                <input class="file-path validate" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12">
                        <button class="btn waves-effect waves-light" type="submit">
                            <i class="material-icons right">send</i>
                            上传
                        </button>
                        </div>
                    </div>
                    </form>
                    <div class="section"></div>
                    <div class="row">
                        <h4>资料列表</h4>
                        <h5>Material List</h5>
                        <div class="divider row"></div>
                        <div class="input-field col s12">
                            <ul class="collection with-header">
                                <c:forEach var="material" items="${materials}">
                                <li class="collection-item">
                                    <div> 
                                    <a href="/course/${courseId}/resource/material/download?file_id=${material.id}">${material.name}</a> ${material.size1} ${material.date}
                                    <c:if test="${user.type == 2}">
                                        <a href="/course/${courseId}/resource/material/delete?file_id=${material.id}" class="secondary-content"><i class="material-icons">delete_forever</i></a>
                                    </c:if>
                                    </div>
                                </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col s1 m2 l2"></div>
            </div>
        </div>-->
</tmpl:overwrite>
<jsp:include page="../../../template/teacher_course_tmpl.jsp"/>
