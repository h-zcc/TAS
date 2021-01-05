<%--@elvariable id="course" type="com.se.global.domain.Course"--%>
<%--@elvariable id="courses" type="java.util.ArrayList<com.se.global.domain.Course>"--%>
<%--@elvariable id="noticeCourseNum" type="java.util.ArrayList<Integer>"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="content1">

    <div class="gray-bg" id="page-wrapper">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary" href="#"
                       style="height: 30px;display: flex;align-items: center"><i
                            class="fa fa-bars"></i> </a>
                    <form role="search" class="navbar-form-custom" action="search_results.html"
                          style="margin: 0;padding: 0">
                        <div class="form-group">
                            <input type="text" placeholder="Search for something..." class="form-control"
                                   name="top-search" id="top-search">
                        </div>
                    </form>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li>
                        <span class="m-r-sm text-muted welcome-message">欢迎使用线上教学辅助系统</span>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" href="/notice"> <!--data-toggle="dropdown"-->
                            <i class="fa fa-bell"></i> <span class="label label-warning">${noticeTotalNum}</span>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" href="/user/info"><!--data-toggle="dropdown"-->
                            <i class="fa fa-user"></i>
                        </a>
                    </li>


                    <li>
                        <a href="/logout">
                            <i class="fa fa-sign-out"></i> Log out
                        </a>
                    </li>
                </ul>

            </nav>
        </div>
        <tmpl:block name="content"/>
    </div>
</tmpl:overwrite>
<jsp:include page="top_bar_tmpl6.jsp"/>