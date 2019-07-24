<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Study</title>
    <link rel="stylesheet" href="/js/bootstrap.min.css">
    <script src="/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">

    <div class="row">
        <a name="" id="" class="btn btn-primary btn-sm mt-2 ml-lg-3" href="/Study/search" role="button">返回知识点页面</a>
    </div>


    <table class="table mt-3">
        <thead class="thead-dark">
        <tr>
            <th>笔记编号</th>
            <th>笔记内容</th>
            <th>作者</th>
            <th>创建时间</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${notes}" var="item" varStatus="status">

            <tr>
            <c:choose>
                <c:when test="${status.index%2 ==0}" > table-primary </c:when>
                <c:when test="${status.index%2 ==1}" > table-info </c:when>
            </c:choose>

                <td scope="row">${item.id}</td>
                    <%--  <td scope="row">${item.studyid}</td>--%>
                <td scope="row">${item.content}</td>
                <td scope="row">${item.student}</td>
                <td scope="row"><fmt:formatDate value="${item.createdate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>
</body>
</html>
