<%--@elvariable id="announcement" type="com.se.courses.announcement.domain.Announcement"--%>
<%--@elvariable id="courseId" type="int"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="script">
    <script>
        function validateAnnounce() {
            var ann_title = document.forms["announceform"]["title"].value;
            var ann_con = document.forms["announceform"]["content"].value;

            if (ann_title == null || ann_title == "") {
                Materialize.toast('请输入公告标题', 4000)
                return false;
            } else if (ann_con == null || ann_con == "") {
                Materialize.toast('请输入公告内容', 4000)
                return false;
            } else if (ann_title.length > 20) {
                Materialize.toast('公告标题过长', 4000)
                return false;
            } else if (ann_con.length > 140) {
                Materialize.toast('公告内容过长', 4000)
                return false;
            } else {
                return true;
            }

        }
    </script>
</tmpl:overwrite>
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
                    <strong>发布公告</strong>
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
                        <h5>发布公告</h5>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal" method="post"
                              action="/course/${courseId}/announcement/upload" onsubmit="return validateAnnounce()">
                            <p>请发布课程相关的公告内容</p>
                            <div class="form-group"><label class="col-lg-1 control-label">公告标题</label>
                                <div class="col-lg-11">
                                    <input type="text" placeholder="公告标题" class="form-control" id="announce_title" name="title" data-length="15">
                                </div>
                            </div>
                            <div class="form-group"><label class="col-lg-1 control-label">公告内容</label>
                                <div class="col-lg-11">
                                    <input type="text" placeholder="公告内容" class="form-control" id="announce_content" name="content" data-length="140">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-offset-1 col-lg-10">
                                    <button class="btn btn-outline btn-primary" type="submit">发布</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--
    <div class="container">
        <div class="row">
            <div class="col s2 m1 l1"></div>
            <div class="col s8 m9 l9">
                <div class="section"></div>
                <h4 align="left">发布公告</h4>
                <h5 align="left">Announce</h5>
                <div class="divider row"></div>
                <form class="row" name="announceform" method="post"
                      action="/course/${courseId}/announcement/upload" onsubmit="return validateAnnounce()">
                    <div class="row">
                        <div class="input-field col s9">
                            <i class="material-icons prefix">subtitles</i>
                            <input id="announce_title" name="title" type="text" class="validate" data-length="15">
                            <label for="announce_title">公告标题</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s9">
                            <i class="material-icons prefix">content_copy</i>
                            <textarea id="announce_content" name="content" class="materialize-textarea"
                                      data-length="140"></textarea>
                            <label for="announce_content">公告内容</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12" align="left">
                            <button class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow"
                                    type="submit">
                                <i class="material-icons right">send</i>
                                发布
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col s2 m2 l2"></div>
        </div>
    </div>-->
</tmpl:overwrite>
<jsp:include page="../../template/teacher_course_tmpl.jsp"/>