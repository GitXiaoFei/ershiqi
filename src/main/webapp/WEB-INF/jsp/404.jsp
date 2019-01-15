<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>404 - 闲言轻博客</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../res/layui/css/layui.css">
	<link rel="stylesheet" href="../res/static/css/mian.css">
</head>
<body class="lay-blog">
    <%@ include file="head.jspf"%>
		<div class="container-wrap">
			<div class="container">
				<div class="contar-wrap">
					<div style="padding: 150px 0 50px; text-align: center; font-size: 30px; color: #ccc; font-weight: 300;">
						客官慢点，忙不过来。
					</div>
				</div>
			</div>
		</div>
    <%@ include file="footer.jspf"%>
	<script src="../res/layui/layui.js"></script>
	<script>
		layui.config({
		  base: '../res/static/js/' 
		}).use('blog');	
	</script>
</body>
</html>