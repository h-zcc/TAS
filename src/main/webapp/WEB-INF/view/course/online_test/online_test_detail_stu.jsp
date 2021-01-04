<%--@elvariable id="announcement" type="com.se.courses.announcement.domain.Announcement"--%>
<%--@elvariable id="courseId" type="int"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tmpl" uri="/WEB-INF/mytag.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmpl:overwrite name="script">
</tmpl:overwrite>
<tmpl:overwrite name="content">

    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>测试详情</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="/index">首页 Home</a>
                </li>
                <li>
                    <a href="/course/${courseId}/onlineTest/list">在线测试</a>
                </li>
                <li class="active">
                    <strong>测试详情</strong>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">

        </div>
    </div>
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-lg-12">
                <div class="contact-box">
                    <div class="col-sm-8">
                        <h2><strong>${onlineTest.title}</strong></h2>
                        <h3><i class="fa fa-clock-o"></i> 截止日期：${onlineTest.ddl_date}</h3>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <c:forEach var="choiceQuestion" items="${choiceQuestions}" varStatus="status">
            <div class="row" style="display: flex; justify-content: center">
                <div class="col-lg-12">
                    <div class="contact-box">
                        <div class="row">
                            <div class="col-sm-8">
                                <h3>第${status.index+1}题.【${choiceQuestion.score}分】${choiceQuestion.title}</h3>
                                <address style="margin-bottom: 0;">
                                    <form action="#">
                                        <div class="i-checks">
                                            <label>
                                                <input type="radio" value="option1" name="${status.index}">
                                                <i style="margin-left: 10px;"></i> ${choiceQuestion.choice_a}
                                            </label>
                                        </div>
                                        <div class="i-checks">
                                            <label>
                                                <input type="radio" value="option1" name="${status.index}">
                                                <i style="margin-left: 10px;"></i> ${choiceQuestion.choice_b}
                                            </label>
                                        </div>
                                        <div class="i-checks">
                                            <label>
                                                <input type="radio" value="option1" name="${status.index}">
                                                <i style="margin-left: 10px;"></i> ${choiceQuestion.choice_c}
                                            </label>
                                        </div>
                                        <div class="i-checks">
                                            <label>
                                                <input type="radio" value="option1" name="${status.index}">
                                                <i style="margin-left: 10px;"></i> ${choiceQuestion.choice_d}
                                            </label>
                                        </div>
                                    </form>
                                    <br>
                                </address>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-1">
                                <button class="btn btn-primary btn-block" type="submit" name="action">提交答案</button>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </c:forEach>

        <c:forEach var="fillQuestion" items="${fillQuestions}" varStatus="status">
            <div class="row" style="display: flex; justify-content: center">
                <div class="col-lg-12">
                    <div class="contact-box">
                        <div class="row">
                            <div class="col-sm-8">
                                <h3>第${status.index+1}题.【${fillQuestion.score}分】${fillQuestion.title}</h3>
                                <address>
                                    <div class="form-group"><label class="col-lg-1 control-label">回答内容</label>

                                        <div class="col-lg-11"><input type="text" placeholder="请填写回答内容"
                                                                      class="form-control">

                                        </div>
                                    </div>
                                </address>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 20px;">
                            <div class="col-sm-1">
                                <button class="btn btn-primary btn-block" type="submit">提交答案</button>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    <script>
        $(document).ready(function () {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
    </script>
    <!--
    <div class="container">
    <div class="row">
    <div class="col s0 m1 l1"></div>
    <div class="col s12 m10 l10">
    <div class="section"></div>
    <h3>${onlineTest.title}</h3>
    <div class="divider"></div>
    <form action="#">
    <div class="row">
    <div class="input-field col s6">
    <i class="material-icons prefix">date_range</i>
    <input id="hw_ddl" name="hw_ddl" type="text" class="datepicker" disabled="disabled">
    <label for="hw_ddl">${onlineTest.ddl_date}</label>
    </div>
    </div>
    <div class="section">
    <c:forEach var="choiceQuestion" items="${choiceQuestions}" varStatus="status">
        <p>第${status.index+1}题.${choiceQuestion.title}</p>
        <p>${choiceQuestion.score}分</p>
        <form action="#">
        <p>
        <input name="group1" type="radio" id="option1"/>
        <label for="option1">${choiceQuestion.choice_a}</label>
        </p>
        <p>
        <input name="group1" type="radio" id="option2"/>
        <label for="option2">${choiceQuestion.choice_b}</label>
        </p>
        <p>
        <input name="group1" type="radio" id="option3"/>
        <label for="option3">${choiceQuestion.choice_c}</label>
        </p>
        <p>
        <input name="group1" type="radio" id="option4"/>
        <label for="option4">${choiceQuestion.choice_d}</label>
        </p>
        </form>
        <button class="btn waves-effect waves-light" type="submit" name="action"
        style="float:right;">
        提交答案
        </button>
        <br>
    </c:forEach>
    </div>
    <br><br>
    <div class="divider"></div>
    <div class="section">
    <c:forEach var="fillQuestion" items="${fillQuestions}" varStatus="status">
        <p>第${status.index+1}题.${fillQuestion.title}</p>
        <p>${fillQuestion.score}分</p>
        <div class="row">
        <div class="input-field col s12">
        <textarea id="question_content" class="materialize-textarea"></textarea>
        <label for="question_content">简答题回答</label>
        </div>
        </div>
        <button class="btn waves-effect waves-light" type="submit" name="action"
        style="float:right;">
        提交答案
        </button>
        <br>
    </c:forEach>
    </div>
    </form>
    <div class="col s0 m1 l1"></div>
    </div>
    </div>
    </div>-->
</tmpl:overwrite>..
<jsp:include page="../../template/student_course_tmpl.jsp"/>