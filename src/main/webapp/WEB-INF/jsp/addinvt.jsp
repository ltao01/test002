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
        <table border="1" align="center" bgcolor="aqua">
            <h1 align="center">添加帖子</h1>
            <tr><td>
                <form action="/inv/adddate" method="post" >
                    标题：<input type="text" name="title" value=""><br>
                    内容：<input type="text" name="summary" value=""><br>
                    作者：<input type="text" name="author" value=""><br>
                    <input type="submit" value="提交">
                </form>
            </td></tr>

        </table>
    </div>
    </div>
</body>

</html>