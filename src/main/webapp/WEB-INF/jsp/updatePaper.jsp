<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>修改用户信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    用户信息管理
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改用户信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="" name="userForm">
        <input type="hidden" name="id" value="${paper.id}"/>
        年龄：<input type="text" name="age" value="${paper.age}"/>
        姓名：<input type="text" name="name" value="${paper.name}"/>
        <input type="button" value="提交" onclick="updatePaper()"/>
        <input type="button" value="返回" onclick="reBack()"/>
    </form>
    <script type="text/javascript">
        function updatePaper() {
            var form = document.forms[0];
            form.action = "<%=basePath %>paper/updatePaper";
            form.method = "post";
            form.submit();
        }
        function reBack() {
            var form = document.forms[0];
            form.action = "<%=basePath %>paper/reBack";
            form.method = "post";
            form.submit();
        }
    </script>
</div>