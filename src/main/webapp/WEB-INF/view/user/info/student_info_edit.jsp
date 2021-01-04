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
                                        <div class="row"></div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <input id="info-username" disabled value="${user.name}" type="text"
                                                       class="black-text">
                                                <label for="info-username" class="teal-text text-darken-3" active>
                                                    姓名 | Name
                                                </label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <input id="info-userID" disabled value="${user.id}" type="text"
                                                       class="black-text">
                                                <label for="info-userID" class="teal-text text-darken-3" active>
                                                    学号 | ID
                                                </label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <input id="info-department" disabled value="${user.college}" type="text"
                                                       class="black-text">
                                                <label for="info-department" class="teal-text text-darken-3" active>
                                                    学院 | Dept
                                                </label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <input id="info-major" disabled value="${user.major}" type="text"
                                                       class="black-text">
                                                <label for="info-major" class="teal-text text-darken-3" active>
                                                    专业 | Major
                                                </label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <input id="info-grade" disabled value="${user.grade}" type="text"
                                                       class="black-text">
                                                <label for="info-grade" class="teal-text text-darken-3" active>
                                                    年级 | Grade
                                                </label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <input id="info-class" disabled value="${user.classNumber}" type="text"
                                                       class="black-text">
                                                <label for="info-class" class="teal-text text-darken-3" active>
                                                    班级 | Class
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col s12 m6 l6 avatars">
                                        <div class="row">
                                            <br>
                                            <h4>个性化设置</h4>
                                            <h5>Avatar</h5>
                                            <div class="divider"></div>
                                        </div>
                                        <form class="row" action="/user/info/update" method="post" enctype="multipart/form-data" onsubmit="return validateSign()">
                                            <div class="col s8">
                                                <div class="row">
                                                    <div class="col s12" name="sign">
                                                        <div class="row">
                                                            <div class="input-field col s12">
                                                                <textarea id="Sign" name="signature" class="materialize-textarea" data-length="140"></textarea>
                                                                <label for="Sign">个性签名 | Sign</label>
                                                            </div>
                                                            <div class="col s12">
                                                                <button class="waves-effect btn waves-light" type="submit">确认修改</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col s4">
                                                <div class="row">
                                                    <div class="card z-depth-2">
                                                        <div class="card-image">
                                                            <img src="${user.imageLocation}">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col s12"></div>
                                                        <div class="file-field input-field">
                                                            <div class="btn">
                                                                <span>Upload</span>
                                                                <input type="file" name="image">
                                                            </div>
                                                            <div class="file-path-wrapper">
                                                                <div class="row">
                                                                        <%--<input class="file-path validate" type="text" placeholder="">--%>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
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
        <div class="col s0 m1 l1"></div>
    </div>
    </div>
    -->
</tmpl:overwrite>
<jsp:include page="../../template/info_center_tmpl.jsp" />