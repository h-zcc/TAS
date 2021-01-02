<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>教学网络辅助系统 | SEM</title>

    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!--Import materialize.css-->
    <!--<link type="text/css" rel="stylesheet" href="/css/materialize.css"  media="screen,projection"/>-->

    <!--<link type="text/css" rel="stylesheet" href="/css/style.css" />-->

    <link href="/css/css/bootstrap.min.css" rel="stylesheet">
    <link href="/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="/css/css/animate.css" rel="stylesheet">
    <link href="/css/css/style.css" rel="stylesheet">
    <!-- Sweet Alert -->
    <link href="/css/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script>
        function validateLoginForm()
        {
            var id = document.forms["loginform"]["id"].value;
            var pass = document.forms["loginform"]["password"].value;
            
            if ( id == null || id == ""){
                Materialize.toast('请输入学号或工号', 4000)
                return false;
            }
            else if ( pass == null || pass == ""){
                Materialize.toast('请输入密码', 4000)
                return false;
            }
            else
            {
                return true;
            }
        
        }
    </script>
</head>
<body class="gray-bg">
<!--<div class="row">
    <div class="col s0 m4 l4"></div>
    <div class="col s0 m4 l4">
        <div class="section"></div>
        <h3 align="center">Welcome to TAS</h3>
        <p align="center" style="color: red">${error}</p>
        <form class="col s12" name="loginform" method="post" action="/login/check" onsubmit="return validateLoginForm()">
            <div class="row">
                <div class="input-field col s12">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="id" name="id" type="text" class="validate">
                    <label for="id">学号或工号</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <i class="material-icons prefix">lock</i>
                    <input id="password" name="password" type="password" class="validate">
                    <label for="password">密码</label>
                </div>
            </div>
            <div class="row">
                <div class="col s12" align="center">
                    <button class="btn waves-effect waves-light" type="submit"><i class="material-icons right">send</i>登录</button>
                </div>
            </div>
            <div class="row">
                <div class="col s12" align="center">
                    <i class="material-icons prefix">train</i>
                    <a href="${pageContext.request.contextPath}/index">游客登录</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <i class="material-icons prefix">lock_outline</i>
                    <a href="${pageContext.request.contextPath}/user/password-reset">重置密码</a>
                </div>
            </div>
        </form>
    </div>
    <div class="col s0 m4 l4"></div>
</div>
-->

<div class="middle-box text-center loginscreen animated fadeInDown">
    <div>
        <div>

            <h1 class="logo-name">SEM</h1>

        </div>
        <h3>SEM课程辅助教学网站</h3>
        <p align="center" style="color: red">${error}</p>
        <p>本网页用于软件工程管理课程辅助教学网站，软件工程管理课程大作业
            <!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
        </p>
        <p>登录以使用更多功能</p>
        <form class="m-t" id="loginForm" name="loginform" method="post" action="/login/check" onsubmit="return validateLoginForm()">
            <div class="form-group">
                <input class="form-control" placeholder="用户名" required="" id="id" name="id">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="密码" required="" id="password" name="password">
            </div>
            <button type="submit" class="btn btn-primary block full-width m-b">登录</button>

            <a href="${pageContext.request.contextPath}/user/password-reset#"><small>忘记密码</small></a>
            <p class="text-muted text-center"><small>没有账号吗？</small></p>
            <a class="btn btn-sm btn-white btn-block" href="${pageContext.request.contextPath}/index">游客登陆</a>
        </form>

        <!--<p class="m-t"> <small>Inspinia we app framework base on Bootstrap 3 &copy; 2014</small> </p>-->
    </div>
</div>

<!-- Mainly scripts -->
<script src="/js/js/jquery-2.1.1.js"></script>
<script src="/js/js/bootstrap.min.js"></script>

<!-- Sweet alert -->
<script src="/js/js/plugins/sweetalert/sweetalert.min.js"></script>

<!--<script type="text/javascript" src="https://s3.pstatp.com/cdn/expire-1-M/jquery/3.2.1/jquery.min.js"></script>-->
<script type="text/javascript" src="/js/materialize.js"></script>
</body>
</html>
