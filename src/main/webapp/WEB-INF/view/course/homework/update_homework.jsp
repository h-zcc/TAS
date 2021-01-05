<%--@elvariable id="announcement" type="com.se.courses.announcement.domain.Announcement"--%>
<%--@elvariable id="courseId" type="int"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="script">
    <script>
        function validateHomework() {
            var hwtitle = document.forms["homeworkform"]["title"].value;
            var hwddl = document.forms["homeworkform"]["ddl"].value;
            var hwscore = document.forms["homeworkform"]["score"].value;
            var hwcontent = document.forms["homeworkform"]["content"].value;

            if (hwtitle == null || hwtitle == "") {
                Materialize.toast('请输入作业名称', 4000)
                return false;
            } else if (hwddl == null || hwddl == "") {
                Materialize.toast('请选择作业截止日期', 4000)
                return false;
            } else if (hwscore == null || hwscore == "") {
                Materialize.toast('请输入作业分数', 4000)
                return false;
            } else if (hwcontent == null || hwcontent == "") {
                Materialize.toast('请输入作业内容', 4000)
                return false;
            } else if (hwtitle.length > 30) {
                Materialize.toast('作业名称过长', 4000)
                return false;
            } else if (hwtitle.length < 8) {
                Materialize.toast('作业名称过短', 4000)
                return false;
            } else if (hwscore < 1 || hwscore > 100) {
                Materialize.toast('作业分数应在0-100分之间', 4000)
                return false;
            } else if (hwcontent.length > 140) {
                Materialize.toast('作业内容过长', 4000)
                return false;
            } else if (hwcontent.length < 10) {
                Materialize.toast('作业内容过短', 4000)
                return false;
            } else {
                return true;
            }

        }

        $(document).ready(function () {
            $('#data_1 .input-group.date').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });
        });
    </script>
</tmpl:overwrite>
<tmpl:overwrite name="content">

    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>更改作业</h2>
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
                    <strong>更改作业</strong>
                </li>
            </ol>
        </div>
    </div>
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>更改作业信息</h5>
            </div>
            <div class="ibox-content">
                <form class="form-horizontal" id="homeworkForm" name="homeworkform"
                      action="/course/${course_id}/homework/${homework.id}/update"
                      method="post" enctype="multipart/form-data" onsubmit="return validateHomework()">
                    <div class="form-group">
                        <label class="col-lg-1 control-label">作业名称</label>
                        <div class="col-lg-11">
                            <input type="text" value=${homework.title} class="form-control" id="hw_title" name="title">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-1 control-label">截止日期</label>
                        <div class="col-lg-11" id="data_1">
                            <div class="input-group date">
                            <span class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </span>
                                <input id="hw_ddl" name="ddl" type="text"
                                       value=${homework.ddl_date} class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-1 control-label">作业分数</label>
                        <div class="col-lg-11">
                            <input id="hw_score" name="score" type="number"
                                   value=${homework.score} class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-1 control-label">作业内容</label>
                        <div class="col-lg-11">
                            <input id="hw_content" name="content" class="form-control" data-length="140">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-1 control-label">附件上传</label>
                        <div class="col-lg-1">
                            <label title="Upload image file" for="inputImage" class="btn btn-primary btn-block">
                                <input type="file" name="file" id="inputImage" class="hide">
                                选择文件
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-1 col-lg-10">
                            <button class="btn btn-outline btn-primary" type="submit" name="action">确定</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</tmpl:overwrite>
<jsp:include page="../../template/teacher_course_tmpl.jsp"/>