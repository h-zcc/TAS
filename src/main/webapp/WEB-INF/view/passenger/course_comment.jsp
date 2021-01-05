<%--@elvariable id="comment" type="com.se.courses.comment.domain.Comment"--%>
<%--@elvariable id="comments" type="java.util.ArrayList<Comment>"--%>
<%--@elvariable id="courseId" type="int"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="content">

    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>留言板</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="/index">首页 Home</a>
                </li>
                <li class="active">
                    <strong>留言板</strong>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">

        </div>
    </div>
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-lg-12">
                <c:forEach var="comment" items="${comments}" varStatus="status">
                    <div class="contact-box">
                        <a href="#">
                            <div class="col-sm-2">
                                <div class="text-center">
                                    <img alt="image" class="img-circle m-t-xs img-responsive"
                                         src="${comment.user.imageLocation}">
                                    <div class="m-t-xs font-bold"></div>
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <h3><strong>${comment.user.name}</strong></h3>
                                <p><i class="fa fa-clock-o"></i> ${comment.date}</p>
                                <address>
                                    <p>${comment.content}</p>
                                </address>
                            </div>
                            <div class="clearfix"></div>
                        </a>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>我要留言</h5>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal" method="post" action="/course/${courseId}/comment/submit"
                              onsubmit="return validateComment()">
                            <p>留言请遵守相关法律</p>
                            <div class="form-group"><label class="col-lg-1 control-label">留言</label>

                                <div class="col-lg-11"><input type="text" placeholder="留言内容" class="form-control" name="content">

                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-offset-1 col-lg-10">
                                    <button class="btn btn-outline btn-primary" type="submit" name="action">留言</button>
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
            <div class="col s1 m1 l1"></div>
            <div class="col s11 m10 l10">
                <div class="section"></div>
                <h4>留言板</h4>
                <h5>Comment</h5>
                <div class="divider"></div>
                <div class="row">
                    <div class="col s12">
                        <c:forEach var="comment" items="${comments}" varStatus="status">
                            <div class="section">
                                <div class="row">
                                    <div class="col s2 m1 l1">
                                        <img class="materialboxed" width="100%" height="50" src="${comment.user.imageLocation}">
                                        <p>${comment.user.name}</p>
                                    </div>
                                    <div class="col s9 m10 l10">
                                        <p>${comment.date}</p>
                                        <br/>
                                            ${comment.content}
                                    </div>
                                </div>
                            </div>
                            <div class="divider"></div>
                        </c:forEach>
                    </div>
                </div>
                <form class="row" name="commentform" method="post"
                      action="/passenger/${courseId}/comment/submit" onsubmit="return validateComment()">
                    <div class="row">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">mode_edit</i>
                            <textarea id="icon_prefix2" class="materialize-textarea" name="content" required></textarea>
                            <label for="icon_prefix2">留言内容</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12" align="center">
                            <button class="waves-effect waves-light btn gradient-45deg-light-blue-cyan box-shadow"
                                    name="action" style="float:right;" type="submit">
                                <i class="material-icons right">send</i>
                                留言
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col s0 m1 l1"></div>
        </div>
    </div>-->
</tmpl:overwrite>
<jsp:include page="../template/passenger_course_tmpl.jsp"/>