<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Invitation表</title>
    <link rel="stylesheet" href="/js/bootstrap.min.css">
    <script src="/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <div class="row mt-2">
        <div class="col-lg-3 offset-4 rounded bg-success text-center">
            <h1 class="h3 text-light">课工场贴吧管理系统</h1>

    <table class="table table-light table-hover ">
        <thead class="thead-dark">
        <tr>
            <th>回复内容</th>
            <th>回复作者</th>
            <th>发布时间</th>
            <th>操作</th>

        <c:forEach items="${replies}" var="item" varStatus="status">
            <tr class="<c:choose>
                <c:when test="${status.index%2 ==0}" > table-primary </c:when>
                <c:when test="${status.index%2 ==1}" > table-info </c:when>
            </c:choose>">
                <td scope="row">${item.content} </td>
                <td scope="row">${item.author}</td>
                <td scope="row"><fmt:formatDate value="${item.createdate}" pattern="yyyy-MM-dd"/>
                </td></tr>
        </c:forEach>

            <tr>
                <td>
                    <a href="/reply/addll?id=${param.aa}">添加回复</a>
                </td>
                <td>
                    <a href="/inv/search">返回帖子首页</a>
                </td>
            </tr>

            </table>
        </div>
    </div>
</div>
</body>
</html>
