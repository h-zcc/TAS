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
                                    学号 ｜ ID
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
                                    专业 ｜ Major
                                </div>
                                <div class="panel-body">
                                    <p>${user.major}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    班级 ｜ Class
                                </div>
                                <div class="panel-body">
                                    <p>${user.classNumber}</p>
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
    <!--
    <div class="container">
        <div class="row">
            <div class="col s0 m1 l1"></div>
            <div class="col s12 m10 l10">
                <div>
                    <div class="container page-container">
                        <div>
                            <div>
                                <div id="tab-infomation" class="col s12">
                                    <div class="row">
                                        <div class="col s12 m6 l6">
                                            <div class="row">
                                                <br>
                                                <h4>个人信息</h4>
                                                <h5>Profile</h5>
                                                <div class="divider"></div>
                                            </div>
                                            <ul class="collapsible" data-collapsible="expandable">
                                                <li>
                                                    <div class="collapsible-header active"><i class="material-icons">filter_1</i>姓名
                                                        | Name
                                                    </div>
                                                    <div class="collapsible-body"><span>${user.name}</span></div>
                                                </li>
                                                <li>
                                                    <div class="collapsible-header active"><i class="material-icons">filter_2</i>学号
                                                        | ID
                                                    </div>
                                                    <div class="collapsible-body"><span>${user.id}</span></div>
                                                </li>
                                                <li>
                                                    <div class="collapsible-header active"><i class="material-icons">filter_3</i>学院
                                                        | Dept
                                                    </div>
                                                    <div class="collapsible-body"><span>${user.college}</span></div>
                                                </li>
                                                <li>
                                                    <div class="collapsible-header active"><i class="material-icons">filter_4</i>专业
                                                        | Major
                                                    </div>
                                                    <div class="collapsible-body"><span>${user.major}</span></div>
                                                </li>
                                                <li>
                                                    <div class="collapsible-header active"><i class="material-icons">filter_5</i>班级
                                                        | Class
                                                    </div>
                                                    <div class="collapsible-body"><span>${user.classNumber}</span></div>
                                                </li>
                                                <li>
                                                    <div class="collapsible-header active"><i class="material-icons">filter_6</i>邮箱
                                                        | Email
                                                    </div>
                                                    <div class="collapsible-body"><span>${user.email}</span></div>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col s12 m6 l6 avatars">
                                            <div class="row">
                                                <br>
                                                <h4>个性化设置</h4>
                                                <h5>Avatar</h5>
                                                <div class="divider"></div>
                                            </div>
                                            <div class="row">
                                                <div class="col s8">
                                                    <ul class="collapsible" data-collapsible="accordion">
                                                        <li>
                                                            <div class="collapsible-header active"><i
                                                                    class="material-icons">filter_drama</i>个性签名 | Sign
                                                            </div>
                                                            <div class="collapsible-body"><span>${user.signature}</span>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                    <a href="/user/info/edit">
                                                        <div class="col s12">
                                                            <button class="waves-effect btn waves-light" type="submit">
                                                                编辑资料
                                                            </button>
                                                        </div>
                                                    </a>
                                                </div>
                                                <div class="col s4">
                                                    <div class="row">
                                                        <div class="card z-depth-2">
                                                            <div class="card-image">
                                                                <img src="${user.imageLocation}">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col s0 m1 l1"></div>
        </div>

    </div>-->
</tmpl:overwrite>
<jsp:include page="../../template/info_center_tmpl.jsp"/>
