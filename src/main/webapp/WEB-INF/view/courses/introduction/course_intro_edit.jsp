<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<tmpl:overwrite name="content">

    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>课程公告</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="/index">首页 Home</a>
                </li>
                <li>
                    <a href="/course/${courseId}/introduction">课程简介</a>
                </li>
                <li class="active">
                    <strong>编辑课程简介</strong>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">

        </div>
    </div>
    <div class="wrapper wrapper-content  animated fadeInRight blog">
        <div class="row">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>编辑课程简介</h5>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal" method="post"
                              name="videoform" action="/course/${courseId}/introduction/submit"
                              method="post" enctype="multipart/form-data" onsubmit="return validateVideo()">
                            <p>请发布课程相关的公告内容</p>
                            <div class="form-group"><label class="col-lg-1 control-label">课程简介</label>
                                <div class="col-lg-11">
                                    <input type="text" placeholder="请输入课程简介" class="form-control"
                                           id="announce_title" name="intro" data-length="280">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-offset-1 col-lg-10">
                                    <button class="btn btn-outline btn-primary" type="submit">确认</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--
    <div class="row">
        <div class="col s1 m1 l1"></div>
        <div class="col s10 m9 l9">
            <div class="section"></div>
            <h4>编辑课程简介</h4>
            <h5>Edit course intro</h5>
            <div class="divider"></div>
            <form class="col s12" name="videoform" action="/course/${courseId}/introduction/submit"
                  method="post" enctype="multipart/form-data" onsubmit="return validateVideo()">
                <div class="row">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">mode_edit</i>
                        <textarea id="icon_prefix2" class="materialize-textarea" name="intro"></textarea>
                        <label for="icon_prefix2">课程简介</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col s12">
                        <button class="btn waves-effect waves-light" type="submit">
                            <i class="material-icons right">send</i>
                            确认
                        </button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col s1 m2 l2"></div>
    </div>-->
</tmpl:overwrite>
<jsp:include page="../../template/teacher_course_tmpl.jsp"/>