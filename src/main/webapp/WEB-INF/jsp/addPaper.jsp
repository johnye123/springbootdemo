<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/4/7
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
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
    <title>新增用户</title>
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
                    <small>新增用户</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="" name="userForm">
        编号：<input type="text" name="id"><br><br><br>
        年龄：<input type="text" name="age"><br><br><br>
        姓名：<input type="text" name="name"><br><br><br>
        <input type="button" value="添加" onclick="addPaper()">
    </form>

    <script type="text/javascript">
        function addPaper() {
            var form = document.forms[0];
            form.action = "<%=basePath %>paper/addPaper";
            form.method = "post";
            form.submit();
        }
    </script>
</div>