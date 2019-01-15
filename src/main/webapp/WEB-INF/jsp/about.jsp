<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>关于-闲言轻博客</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body class="lay-blog">
    <%@ include file="head.jspf"%>
        <!-- <div class="header">
            <div class="header-wrap">
                <h1 class="logo pull-left">
                    <a href="index.html">
                        <img src="../res/static/images/logo.png" alt="" class="logo-img">
                        <img src="../res/static/images/logo-text.png" alt="" class="logo-text">
                    </a>
                </h1>
                <form class="layui-form blog-seach pull-left" action="">
                    <div class="layui-form-item blog-sewrap">
                        <div class="layui-input-block blog-sebox">
                          <i class="layui-icon layui-icon-search"></i>
                          <input type="text" name="title" lay-verify="title" autocomplete="off"  class="layui-input">
                        </div>
                    </div>
                </form>
                <div class="blog-nav pull-right">
                    <ul class="layui-nav pull-left">
                      <li class="layui-nav-item"><a href="/blog/index">首页</a></li>
                      <li class="layui-nav-item"><a href="/blog/message">留言</a></li>
                      <li class="layui-nav-item  layui-this"><a href="/blog/about.html">关于</a></li>
                      <li class="layui-nav-item"><a href="/login/login.html">登录</a></li>
                    </ul>
                    <a href="#" class="personal pull-left">
                        <i class="layui-icon layui-icon-username"></i>
                    </a>
                </div>
                <div class="mobile-nav pull-right" id="mobile-nav">
                    <a href="javascript:;">
                        <i class="layui-icon layui-icon-more"></i>
                    </a>
                </div>
            </div>
            <ul class="pop-nav" id="pop-nav">
                <li><a href="/blog/index">首页</a></li>
                <li><a href="/blog/message.html">留言</a></li>
                <li><a href="/blog/about.html">关于</a></li>
            </ul>
        </div> -->
        <div class="container-wrap">
            <div class="container container-message container-details container-about">
                    <div class="contar-wrap">
                        <div class="item">
                            <div class="item-box">
                                <h3>JAVA工程师</h3>
                                <p>工作：(2016-10-01~至今)</p>
                                <p>别自制压力，我们没有必要跟着时间走，</p>
                                <p>只需跟着心态和能力走 随缘 尽力</p>
                                <p>问心无愧，其他的，交给天。</p>
                                <p> </p>
                                <p>联系我：QQ：961463643  电话：15071506306(微信号)</p>
                                <div class="count layui-clear">
                                    <span class="pull-left">阅读 <em>100000+</em></span>
                                    <span class="pull-right like"><i class="layui-icon layui-icon-praise"></i><em>999</em></span>
                                </div>
                            </div>
                        </div>          
                    </div>
            </div>
        </div>
        <!-- <div class="footer">
            <p>
                <span>&copy; 2018</span>
                <span><a href="index.html" target="_blank">layui.com</a></span> 
                <span>MIT license</span>
            </p>
            <p><span>人生就是一场修行</span></p>
        </div> -->
    <%@ include file="footer.jspf"%>
    <script src="../res/layui/layui.js">

    </script>
    <script>
        layui.config({
          base: '../res/static/js/' 
        }).use('blog');
    </script>
</body>
</html>