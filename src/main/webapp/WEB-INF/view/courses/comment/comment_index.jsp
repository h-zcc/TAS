<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/course/comment/comment_index.css">
</head>
<body>
<h4>${error}</h4>
<c:forEach var="comment" items="${comments}" varStatus="status">
    <div>
        <img class="img-circle" src="${comment.user.imageLocation}" height="42" width="42"/>
        <h4>${comment.user.name}</h4>
        <p>${comment.content}</p>
        <h6>${comment.date}</h6>
        <c:if test="${user.type == 2}">
            <a href="/course/${courseId}/comment/remove?comment_index=${status.index}">删除</a>
        </c:if>
    </div>
</c:forEach>
<form action="/course/${courseId}/comment/submit" method="post">
    留言：
    <input type="text" name="content" />
    <input type="submit" value="submit">
</form>
</body>
</html>
