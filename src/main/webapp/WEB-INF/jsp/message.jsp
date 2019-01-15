<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
					<form class="layui-form" action="addMessage" lay-filter="addMessage" method="post" onsubmit="return checkLength()">
						<div class="layui-form-item layui-form-text">
							<textarea class="layui-textarea" id="LAY-msg-content"  name="content" style="resize:none"></textarea>
						</div>
	                    <div class="item-btn">
	                        <button class="layui-btn layui-btn-normal" lay-submit lay-filter="*">提交</button>
	                    </div>
					</form>
					
					<div id="LAY-msg-box">
						<div class="info-box">
							<div class="info-item">
							<div class="info-img">
								<img class="" src="../res/static/images/info-img.png" alt="">
							</div>
								<div class="info-text">
									<p class="title count">
										<span class="name">一片空白</span>
										<span class="info-img like"><i class="layui-icon layui-icon-praise"></i>5.8万</span>
									</p>
									<p class="info-intr">生活不可能像你想象得那么好，但也不会像你想象得那么糟。我觉得人的脆弱和坚强都超乎自己的想象。有时，我可能脆弱得一句话就泪流满面；有时，也发现自己咬着牙走了很长的路。</p>
								</div>
							</div>
						</div>
					</div>

					<div id="test1" class="paging"></div>
				</div>
			</div>
		</div>
    <%@ include file="footer.jspf"%>
	<script src="../res/layui/layui.js"></script>
	<script src="../res/static/js/blog.js"></script>
	<script type="text/javascript">
     function checkLength(){
         var name=document.getElementById('LAY-msg-content').value;
         if(name.length < 1){
             layer.msg('客官，不要皮，好好写留言！', {
                 icon: 6
             })
             return false;
         }else{
             layer.msg('留言已提交，蟹蟹！', {
                 icon: 1
             })
             return true;
         }
     }
    </script>

	<script id="LAY-msg-tpl" type="text/html">
		<div class="info-box">
			<div class="info-item">
				<img class="info-img" src="{{ d.avatar }}" alt="">
			  <div class="info-text">
					<p class="title">
					  <span class="name">{{ d.username }}</span>
					  <span class="info-img">
					  	<i class="layui-icon layui-icon-praise"></i>
					  	{{ d.praise }}
					 	</span>
					</p>
					<p class="info-intr">
						{{ d.content }}
					</p>
			  </div>
			</div>
		</div>
	</script>
</body>
