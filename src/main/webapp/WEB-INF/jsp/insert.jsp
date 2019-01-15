<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>留言-闲言轻博客</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../res/layui/css/layui.css">
<link rel="stylesheet" href="../res/static/css/mian.css">
</head>
<body class="lay-blog">
    <%@ include file="head.jspf"%>
		<div class="container-wrap">
			<div class="container container-message">
				<div class="contar-wrap" id="contar-wrap">
					<form class="layui-form" action="insertBlog" lay-filter="addMessage"
						method="post" onsubmit="return checkLength()">
						<div class="layui-form-item">
							<div class="layui-input-block blog-sebox">
								<input type="text" id="title" name="title" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item layui-form-text">
							<textarea id="idea" name="content" style="display: none;"></textarea>
						</div>
						<div class="item-btn">
							<button class="layui-btn layui-btn-normal" lay-submit lay-filter="*">提交</button>
						</div>
					</form>
				</div>
			</div>
		</div>
    <%@ include file="footer.jspf"%>
    
	<script src="../res/layui/layui.js"></script>
	<script src="../res/static/js/blog.js"></script>
	<script type="text/javascript">
		function checkLength() {
            var idea = document.getElementById('idea').value;
			if (idea.length < 1) {
                layer.msg('客官，你忘写内容了！', {
                    icon : 6
                })
                return false;
            } else {
                layer.msg('提交成功，审核通过后会展示在首页！', {
                    icon : 1
                })
                return true;
            }
		}
	</script>

	<script type="text/javascript">
		layui.use('layedit', function() {
			var layedit = layui.layedit;
			layedit.build('idea'); //建立编辑器
		});
	</script>
</body>