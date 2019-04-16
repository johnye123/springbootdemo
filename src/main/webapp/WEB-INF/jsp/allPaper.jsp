<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
	<title>Paper列表</title>
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
					<small>显示所有用户</small>
				</h1>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4 column">
			<a class="btn btn-primary" href="${path}/paper/toAddPaper">新增</a>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table table-hover table-striped">
				<thead>
				<tr>
					<th>编号</th>
					<th>名字</th>
					<th>年龄</th>
					<th>操作</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach var="person" items="${list}" varStatus="status">
					<tr>
						<td>${person.id}</td>
						<td>${person.name}</td>
						<td>${person.age}</td>
						<td>
							<a href="${path}/paper/toUpdatePaper?id=${person.id}">更改</a> |
							<a href="<%=appPath%>/paper/del/${person.id}">删除</a>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>