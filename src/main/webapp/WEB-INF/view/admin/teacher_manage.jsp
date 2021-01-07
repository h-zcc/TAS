<%--@elvariable id="user" type="com.se.global.domain.Teacher"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="content">

    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>教师管理</h5>
            </div>
            <div class="ibox-content">
                <p style="color: red">${info}</p>
                <form class="form-horizontal" method="post"
                      action="/admin/teacher/add/single">
                    <div class="form-group">
                        <label class="col-lg-1 control-label">工号</label>
                        <div class="col-lg-11">
                            <input type="text" class="form-control" id="id"
                                   name="id" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-1 control-label">姓名</label>
                        <div class="col-lg-11">
                            <input id="name" name="name" type="text"
                                   class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-1 control-label">学院</label>
                        <div class="col-lg-11">
                            <input id="college" name="college" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-1 control-label">职称</label>
                        <div class="col-lg-11">
                            <input id="major" name="title" class="form-control" required>
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
                <h5>搜索学生</h5>
            </div>
            <div class="ibox-content">
                <form class="form-horizontal" method="post"
                      action="/admin/teacher/search">
                    <div class="form-group">
                        <label class="col-lg-1 control-label">搜索教师</label>
                        <div class="col-lg-11">
                            <input id="search" name="id" type="search"
                                   placeholder="输入教师工号" required
                                   class="form-control">
                        </div>
                    </div>
                    <div class="form-group" style="margin-top: 20px;">
                        <c:if test="${user.type == 2}">
                            <div class="col-lg-12">
                                <div class="col-lg-offset-1 col-lg-1"><h3>工号</h3></div>
                                <div class="col-lg-2"><h3>姓名</h3></div>
                                <div class="col-lg-3"><h3>学院</h3></div>
                                <div class="col-lg-2"><h3>职称</h3></div>
                                <div class="col-lg-2"><h3>邮箱</h3></div>
                            </div>
                            <div class="col-lg-12">
                                <div class="col-lg-offset-1 col-lg-1"><h3>${user.id}</h3></div>
                                <div class="col-lg-2"><h3>${user.name}</h3></div>
                                <div class="col-lg-3"><h3>${user.college}</h3></div>
                                <div class="col-lg-2"><h3>${user.title}</h3></div>
                                <div class="col-lg-2"><h3>${user.email}</h3></div>
                                <div class="col-lg-1"><a href="/admin/teacher/remove/${user.id}"
                                                         class="btn btn-outline btn-danger">删除</a>
                                </div>
                            </div>
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
                        <form class="row" method="post" action="/admin/add/teacher/single">
                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="id" type="text" class="validate" name="id" required>
                                    <label for="id">工号</label>
                                </div>
                                <div class="input-field col s6">
                                    <input id="name" type="text" class="validate" name="name" required>
                                    <label for="name">姓名</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="college" type="text" class="validate" name="college" required>
                                    <label for="college">学院</label>
                                </div>
                                <div class="input-field col s6">
                                    <input id="major" type="text" class="validate" name="title" required>
                                    <label for="major">职称</label>
                                </div>
                            </div>
                            <button class="btn waves-effect waves-light" type="submit"><i class="material-icons right">send</i>导入</button>
                        </form>
                    </div>
                    <div class="col s1"></div>
                    <div class="col s4">
                        <h5>批量导入</h5>
                        <div class="divider"></div>
                        <form class="row" action="/admin/teacher/add/multi" enctype="multipart/form-data" method="post">
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
                    <h5>搜索教师</h5>
                    <div class="divider"></div>
                    <form class="row" method="post" action="/admin/teacher/search">
                        <div class="input-field">
                            <input id="search" name="id" type="search" placeholder="输入教师工号" required>
                            <label class="label-icon" for="search"></label>
                            <i class="material-icons">close</i>
                        </div>
                    </form>
                    <table class="row">
                        <c:if test="${user.type == 2}">
                            <thead>
                            <tr>
                                <th>工号</th>
                                <th>姓名</th>
                                <th>学院</th>
                                <th>职称</th>
                                <th>邮箱</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th>${user.id}</th>
                                <th>${user.name}</th>
                                <th>${user.college}</th>
                                <th>${user.title}</th>
                                <th>${user.email}</th>
                                <th><a href="/admin/teacher/remove/${user.id}" class="waves-effect waves-light btn gradient-45deg-red-pink box-shadow">删除</a></th>
                            </tr>
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