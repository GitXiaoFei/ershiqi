<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>评论-闲言轻博客</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../res/layui/css/layui.css">
	<link rel="stylesheet" href="../res/static/css/mian.css">
</head>
<body class="lay-blog">
    <%@ include file="head.jspf"%>v>
		<div class="container-wrap">
			<div class="container container-message container-details">
					<div class="contar-wrap">
						<div class="item">
							<div class="item-box  layer-photos-demo1 layer-photos-demo">
								<h3><a href="details.html">Host is not allowed to connect to this MySQL server解决方法</a></h3>
								<h5>发布于：<span>刚刚</span></h5>
                                <p>先说说这个错误，其实就是我们的MySQL不允许远程登录，所以远程登录失败了，解决方法如下：</p>
                                <p>  1. 在装有MySQL的机器上登录MySQL mysql -u root -p密码</p>
                                <p>  2. 执行use mysql;</p>
                                <p>  3. 执行update user set host = '%' where user = 'root';这一句执行完可能会报错，不用管它。</p>
                                <p>  4. 执行FLUSH PRIVILEGES;</p>
                                <p>经过上面4步，就可以解决这个问题了。 </p>
                                <p>注: 第四步是刷新MySQL的权限相关表，一定不要忘了，我第一次的时候没有执行第四步，结果一直不成功，最后才找到这个原因。</p>
                                <img src="../res/static/images/item.png" alt="">
								<div class="count layui-clear">
									<span class="pull-left">阅读 <em>100000+</em></span>
									<span class="pull-right like"><i class="layui-icon layui-icon-praise"></i><em>999</em></span>
								</div>
							</div>
						</div>	
						<a name="comment"> </a>
						<div class="comt layui-clear">
							<a href="javascript:;" class="pull-left">评论</a>
							<a href="comment.html" class="pull-right">写评论</a>
						</div>
						<div id="LAY-msg-box">
							<div class="info-item">
                            <div class="info-img">
                                <img class="" src="../res/static/images/info-img.png" alt="">
                            </div>
								<div class="info-text">
									<p class="title count">
										<span class="name">一片空白</span>
										<span class="info-img like"><i class="layui-icon layui-icon-praise"></i>5.8万</span>
									</p>
									<p class="info-intr">有人说，爱上一座城，是因为城中住着某个喜欢的人。其实不然，爱上一座城，也许是为城里的一道生动风景，为一段青梅往事，为一座熟悉老宅。或许，仅仅为的只是这座城。就像爱上一个人，有时候不需要任何理由，没有前因，无关风月，只是爱了。 —林徽因</p>
								</div>
							</div>	
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