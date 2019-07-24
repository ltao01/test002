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
            <h1 class="h3 text-light">贴吧管理系统</h1>
        </div>
    </div>
    <c:if test="${not empty addStatus}">

        <div class="row text-center">
            <c:choose>
                <c:when test="${addStatus ==1}">

                    <div class="alert alert-success">
                        <strong>成功!</strong> 添加笔记成功
                    </div>
                </c:when>

                <c:otherwise>
                    <div class="alert alert-danger">
                        <strong>错误!</strong> 失败的操作
                    </div>
                </c:otherwise>

            </c:choose>
        </div>
    </c:if>

    <div class="row mt-5">
        <<!-- Latest compiled and minified JS -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


            <form action="/inv/search" method="get" id="searhForm" role="form" class="form-inline">

            <label  class="ml-1">讨论版区：</label>
            <input type="text"  name="title" aria-describedby="helpId"
                   placeholder="搜索">

            <input type="hidden" name="pageNum" value="1">
            <button type="submit" class="btn btn-primary ml-1">查询</button>
        </form>



</div>
    <a href="/inv/add" >发帖</a>
    <table class="table table-light table-hover ">
        <thead class="thead-dark">
        <tr>
            <th>编号</th>
            <th>标题</th>
            <th>内容摘要</th>
            <th>作者</th>
            <th>发布时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach items="${pageInfo.list}" var="item" varStatus="status">
            <tr class="<c:choose>
                <c:when test="${status.index%2 ==0}" > table-primary </c:when>
                <c:when test="${status.index%2 ==1}" > table-info </c:when>
            </c:choose>">
                <td scope="row">${item.id} </td>
                <td scope="row">${item.title}</td>
                <td scope="row">${item.summary}</td>
                <td scope="row">${item.author}</td>
                <td scope="row"><fmt:formatDate value="${item.createdate}" pattern="yyyy-MM-dd"/></td>
                <td>

                    <a href="/reply/seeId/${item.id}"> 查看回复 </a>
                    <a href="/reply/deeId?id=${item.id}"> 删除回复 </a>
                </td>

            </tr>
        </c:forEach>
        </tbody>
    </table>


    <nav aria-label="Page navigation">
        <ul class="pagination">

            <li class="page-item <c:if test="${!pageInfo.hasPreviousPage}">disabled</c:if>">
                <a class="page-link" href="javascript:goPage(${pageInfo.prePage})" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                </a>
            </li>

            <c:forEach begin="${pageInfo.navigateFirstPage}" end="${pageInfo.navigateLastPage}" var="i" step="1">
                <li class="page-item <c:if test="${pageInfo.pageNum==i}">

                </c:if>"><a class="page-link" href="javascript:goPage(${i})">${i}</a></li>
            </c:forEach>

            <li class="page-item <c:if test="${!pageInfo.hasNextPage}">disabled</c:if>">
                <a class="page-link" href="javascript:goPage(${pageInfo.nextPage})" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
            </li>
            <li class="page-item <c:if test="${!pageInfo.hasNextPage}">disabled</c:if>">
                <a class="page-link" href="javascript:goPage(${i})">${i}</a>
            </li>
            <td>
                <a href="javascript:toPage()">跳转</a>到第<input type="text" id="go" value="${pageInfo.pageNum}" size="2">页
            </td>

        </ul>
    </nav>
</div>
</body>

<script>
    function goPage(pageNum) {

        $(":input[name='pageNum']").val(pageNum);
        $("#searhForm").submit();
    }
    function toPage() {
        var page=$("#go").val();
        goPage(page)
    }

</script>
</html>
