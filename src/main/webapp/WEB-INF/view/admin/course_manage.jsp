<%--@elvariable id="courses" type="java.util.ArrayList<Course>"--%>
<%--@elvariable id="course" type="Course"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="content">

    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>课程管理</h5>
            </div>
            <div class="ibox-content">
                <p style="color: red">${info}</p>
                <form class="form-horizontal" method="post"
                      action="/admin/course/add/single">
                    <div class="form-group">
                        <label class="col-lg-1 control-label">课程代码</label>
                        <div class="col-lg-11">
                            <input type="text" class="form-control" id="id"
                                   name="code" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-1 control-label">课程名称</label>
                        <div class="col-lg-11">
                            <input id="name" name="name" type="text"
                                   class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-1 control-label">学分</label>
                        <div class="col-lg-11">
                            <input id="major" name="credit" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-1 control-label">开课学院</label>
                        <div class="col-lg-11">
                            <input id="college" name="college" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-1 control-label">学期</label>
                        <div class="col-lg-11">
                            <input id="grade" name="semester" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-1 control-label">时间</label>
                        <div class="col-lg-11">
                            <input id="class_number" name="time" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-1 control-label">地点</label>
                        <div class="col-lg-11">
                            <input id="place" name="place" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-1 col-lg-10">
                            <button class="btn btn-outline btn-primary" type="submit" name="action">导入</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>搜索课程</h5>
            </div>
            <div class="ibox-content">
                <form class="form-horizontal" method="post"
                      action="/admin/course/search">
                    <div class="form-group">
                        <label class="col-lg-1 control-label">课程代码</label>
                        <div class="col-lg-11">
                            <input id="search" name="code" type="search"
                                   placeholder="输入课程代码" required
                                   class="form-control">
                        </div>
                    </div>
                    <div class="form-group" style="margin-top: 20px;">
                                <c:if test="${courses.size() > 0}">
                                    <div class="col-lg-12">
                                        <div class="col-lg-offset-1 col-lg-1"><h3>代码</h3></div>
                                        <div class="col-lg-2"><h3>名称</h3></div>
                                        <div class="col-lg-1"><h3>学分</h3></div>
                                        <div class="col-lg-2"><h3>学院</h3></div>
                                        <div class="col-lg-1"><h3>学期</h3></div>
                                        <div class="col-lg-1"><h3>时间</h3></div>
                                        <div class="col-lg-2"><h3>地点</h3></div>
                                    </div>
                                    <c:forEach var="course" items="${courses}">
                                    <div class="col-lg-12">
                                            <div class="col-lg-offset-1 col-lg-1"><h3>${course.code}</h3></div>
                                            <div class="col-lg-2"><h3>${course.name}</h3></div>
                                            <div class="col-lg-1"><h3>${course.credit}</h3></div>
                                            <div class="col-lg-2"><h3>${course.college}</h3></div>
                                            <div class="col-lg-1"><h3>${course.semester}</h3></div>
                                            <div class="col-lg-1"><h3>${course.time}</h3></div>
                                            <div class="col-lg-2"><h3>${course.place}</h3></div>
                                            <div class="col-lg-1"><a href="/admin/course/remove/${course.id}"
                                                   class="btn btn-outline btn-danger">删除</a>
                                            </div>
                                    </div>
                                    </c:forEach>
                                </c:if>
                        </div>

                </form>
            </div>
        </div>
    </div>
    <!--
    <div class="container">
    <div class="row">
    <div class="col s1 m1 l1"></div>
    <div class="col s10 m9 l9">
    <div class="section">
    <p style="color: red">${info}</p>
    </div>
    <div class="row">
    <div class="col s7">
    <h5>单个导入</h5>
    <div class="divider"></div>
    <form class="row" method="post" action="/admin/course/add/single">
    <div class="row">
    <div class="input-field col s6">
    <input id="id" type="text" class="validate" name="code" required>
    <label for="id">课程代码</label>
    </div>
    <div class="input-field col s6">
    <input id="name" type="text" class="validate" name="name" required>
    <label for="name">课程名称</label>
    </div>
    </div>
    <div class="row">
    <div class="input-field col s6">
    <input id="major" type="text" class="validate" name="credit" required>
    <label for="major">学分</label>
    </div>
    <div class="input-field col s6">
    <input id="college" type="text" class="validate" name="college" required>
    <label for="college">开课学院</label>
    </div>
    </div>
    <div class="row">
    <div class="input-field col s6">
    <input id="grade" type="text" class="validate" name="semester" required>
    <label for="grade">学期</label>
    </div>
    <div class="input-field col s6">
    <input id="class_number" type="text" class="validate" name="time" required>
    <label for="class_number">时间</label>
    </div>
    </div>
    <div class="row">
    <div class="input-field col s6">
    <input id="place" type="text" class="validate" name="place" required>
    <label for="place">地点</label>
    </div>
    </div>
    <button class="btn waves-effect waves-light" type="submit"><i class="material-icons right">send</i>导入</button>
    </form>
    </div>
    <div class="col s1"></div>
    <div class="col s4">
    <h5>批量导入</h5>
    <div class="divider"></div>
    <form class="row" action="/admin/course/add/multi" enctype="multipart/form-data" method="post">
    <div class="file-field input-field">
    <div class="btn">
    <span>上传文件</span>
    <input type="file" name="file" required>
    </div>
    <div class="file-path-wrapper">
    <input class="file-path validate" type="text">
    </div>
    </div>
    <br/>
    <button class="btn waves-effect waves-light" type="submit"><i class="material-icons right">send</i>导入</button>
    </form>
    </div>
    </div>

    <div class="section"></div>

    <div class="row">
    <h5>搜索课程</h5>
    <div class="divider"></div>
    <form class="row" method="post" action="/admin/course/search">
    <div class="input-field">
    <input id="search" name="code" type="search" placeholder="输入课程代码" required>
    <label class="label-icon" for="search"></label>
    <i class="material-icons">close</i>
    </div>
    </form>
    <table class="row">
    <c:if test="${courses.size() > 0}">
        <thead>
        <tr>
        <th>代码</th>
        <th>名称</th>
        <th>学分</th>
        <th>学院</th>
        <th>学期</th>
        <th>时间</th>
        <th>地点</th>
        <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="course" items="${courses}">
            <tr>
            <th>${course.code}</th>
            <th>${course.name}</th>
            <th>${course.credit}</th>
            <th>${course.college}</th>
            <th>${course.semester}</th>
            <th>${course.time}</th>
            <th>${course.place}</th>
            <th><a href="/admin/course/remove/${course.id}" class="waves-effect waves-light btn gradient-45deg-red-pink box-shadow">删除</a></th>
            </tr>
        </c:forEach>
        </tbody>
    </c:if>
    </table>
    </div>
    </div>
    <div class="col s1 m2 l2"></div>
    </div>
    </div>-->
</tmpl:overwrite>
<jsp:include page="../template/admin_tmpl.jsp"/>