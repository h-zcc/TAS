<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<tmpl:overwrite name="content">
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>个人中心</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="/index">首页 Home</a>
                </li>
                <li class="active">
                    <strong>个人中心</strong>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">

        </div>
    </div>
    <div class="row" style="margin-top: 10px;">
        <div class="col-lg-6">
            <div class="ibox">
                <div class="ibox-title">
                    <h5>个人信息 <small>Profile</small></h5>
                </div>
                <div class="ibox-content">

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    姓名 ｜ Name
                                </div>
                                <div class="panel-body">
                                    <p>${user.name}</p>
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    工号 ｜ ID
                                </div>
                                <div class="panel-body">
                                    <p>${user.id}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    学院 | Dept
                                </div>
                                <div class="panel-body">
                                    <p>${user.college}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    职称 ｜ Title
                                </div>
                                <div class="panel-body">
                                    <p>${user.title}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    邮箱 ｜ Email
                                </div>
                                <div class="panel-body">
                                    <p>${user.email}</p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="ibox">
                <div class="ibox-title">
                    <h5>个性化设置 <small>Individuality</small></h5>
                </div>
                <div class="ibox-content">

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    个性签名 ｜ sign
                                </div>
                                <div class="panel-body">
                                    <p>${user.signature}</p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <a href="/user/info/edit">
                <button type="button" class="btn btn-w-m btn-primary">编辑资料</button>
            </a>
        </div>
    </div>
</tmpl:overwrite>
<jsp:include page="../../template/info_center_tmpl.jsp"/>
