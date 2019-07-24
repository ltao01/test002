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
        <form action="/reply/addreply" method="post" class="col-lg-6 offset-3">

            <input type="hidden" name="invid" value="${param.id}">

            <div class="form-group">
                <label for="">回复内容：</label>
                <textarea class="form-control" name="content" rows="5" required></textarea>
            </div>
            <div class="form-group">
                <label for="">回复昵称：</label>
                <input type="text" class="form-control" name="author" id="" aria-describedby="helpId" placeholder="" required>
                <small id="helpId" class="form-text text-muted"></small>
            </div>
            <button type="submit" class="btn btn-primary"> 提交</button>

        </form>
    </div>
    </div>
    <div class="row mt-2">
        <div class="col-lg-2 offset-5 rounded bg-success text-center">
            <h1 class="h3 text-light ">添加回复</h1>
        </div>
    </div>


</body>

</html>