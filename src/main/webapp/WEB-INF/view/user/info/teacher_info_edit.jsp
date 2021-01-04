<%--@elvariable id="user" type="com.se.global.domain.Student"--%>
<%--@elvariable id="noticeTotalNum" type="int"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<tmpl:overwrite name="script">
    <script>
        function validateSign()
        {
            var ssign = document.forms["sign"]["stusign"].value;

            if ( ssign == null || ssign == ""){
                Materialize.toast('请输入个性签名', 4000)
                return false;
            }
            else if( ssign.length > 140 )
            {
                Materialize.toast('字数超过限制',4000)
                return false;
            }
            else
            {
                Materialize.toast('签名修改成功！',10000)
                return true;
            }

        }

        function validateEmail()
        {
            var semail = document.forms["email"]["stuemail"].value;

            if ( semail == null || semail == ""){
                Materialize.toast('请输入邮箱', 4000)
                return false;
            }
            else
            {
                return true;
            }

        }
    </script>
</tmpl:overwrite>
<tmpl:overwrite name="content">

    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>修改个人信息</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="/index">首页 Home</a>
                </li>
                <li>
                    <a href="/user/info">个人中心</a>
                </li>
                <li class="active">
                    <strong>修改个人信息</strong>
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
                                    <form class="form-horizontal" method="post" action="/user/info/update" onsubmit="return validateSign()">
                                        <div class="form-group"><label class="col-lg-1 control-label">修改签名</label>

                                            <div class="col-lg-11"><input type="text" placeholder="个性签名" class="form-control">

                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-lg-offset-1 col-lg-10">
                                                <button class="btn btn-w-m btn-primary" type="submit">确认修改</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</tmpl:overwrite>
<jsp:include page="../../template/info_center_tmpl.jsp" />