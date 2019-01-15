<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>二十七</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../res/layui/css/layui.css">
    <link rel="stylesheet" href="../res/static/css/mian.css">
</head>
<body class="lay-blog">
        <div class="header">
            <div class="header-wrap">
                <h1 class="logo pull-left">
                    <a href="/blog/index.html">
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
                      <li class="layui-nav-item layui-this"><a href="/blog/index">首页</a></li>
                      <li class="layui-nav-item"><a href="/blog/message">留言</a></li>
                      <li class="layui-nav-item"><a href="/blog/about">关于</a></li>
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
                <li><a href="/blog/message">留言</a></li>
                <li><a href="/blog/about">关于</a></li>
            </ul>
        </div>
        <div class="container-wrap">
            <div class="container">
                    <div class="contar-wrap">
                        <h4 class="item-title">
                            <p><i class="layui-icon layui-icon-speaker"></i>公告：<span>欢迎来到我的轻博客</span></p>
                        </h4>
                        <div class="item">
                            <div class="item-box  layer-photos-demo1 layer-photos-demo">
                                <h3><a href="/blog/details.html">Host is not allowed to connect to this MySQL server解决方法</a></h3>
                                <h5>发布于：<span>刚刚</span></h5>
                                <p>先说说这个错误，其实就是我们的MySQL不允许远程登录，所以远程登录失败了，解决方法如下：</p>
                                <p>  1. 在装有MySQL的机器上登录MySQL mysql -u root -p密码</p>
                                <p>  2. 执行use mysql;</p>
                                <p>  3. 执行update user set host = '%' where user = 'root';这一句执行完可能会报错，不用管它。</p>
                                <p>  4. 执行FLUSH PRIVILEGES;</p>
                                <p>经过上面4步，就可以解决这个问题了。 </p>
                                <p>注: 第四步是刷新MySQL的权限相关表，一定不要忘了，我第一次的时候没有执行第四步，结果一直不成功，最后才找到这个原因。</p>
                                <img src="../res/static/images/item.png" alt="">
                            </div>
                            <div class="comment count">
                                <a href="/blog/details#comment">评论</a>
                                <a href="javascript:;" class="like">点赞</a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="item-box  layer-photos-demo2 layer-photos-demo">
                                <h3><a href="blog/details.html">Ubuntu mysql 彻底删除</a></h3>
                                <h5>发布于：<span>刚刚</span></h5>
                                <p>1、使用以下命令查看当前安装mysql情况，查找以前是否装有mysql</p>
                                <p>  rpm -qa|grep -i mysql</p>
                                <p>2、停止mysql服务、删除之前安装的mysql</p>
                                <p>  rpm -e –nodeps 包名</p>
                                <p>3、查找之前老版本mysql的目录、并且删除老版本mysql的文件和库</p>
                                <p>  find / -name mysql</p>
                                <p>4、删除对应的mysql目录</p>
                                <p>  rm -rf /var/lib/mysql rm -rf /var/lib/mysql rm -rf /usr/lib64/mysql rm -rf /etc/my.cnf</p>
                                <p>5、再次查找机器是否安装mysql</p>
                                <p>  rpm -qa|grep -i mysql</p>
                                <img src="../res/static/images/item.png" alt="">
                            </div>
                            <div class="comment count">
                                <a href="/blog/details#comment">评论</a>
                                <a href="javascript:;" class="like">点赞</a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="item-box  layer-photos-demo3 layer-photos-demo">
                                <h3><a href="/blog/details.html">分布式与集群有什么区别</a></h3>
                                <h5>发布于：<span>刚刚</span></h5>
                                <p>1：分布式是指将不同的业务分布在不同的地方。 而集群指的是将几台服务器集中在一起，实现同一业务。</p>
                                <p> 分布式中的每一个节点，都可以做集群。 而集群并不一定就是分布式的。</p>
                                <p>2：简单说，分布式是以缩短单个任务的执行时间来提升效率的，而集群则是通过提高单位时间内执行的任务数来提升效率。</p>
                                <p>====================================</p>
                                <p>分布式 强调 机器间的协作，其重点是任务可拆分， 如 某个任务需要一个机器运行10个小时， 将该该任务用10台机器的分布式跑，可能2个小时就跑完了。（子任务之间有依赖关系）。</p>
                                <p>集群偏重干同一样一件事的 一组机器。 如 某个任务需要一个机器运行10个小时，那任务放到 处理该任务的集群上 还是需要10个小时。 假如有10个这样的任务， 放到同一个集群上， 仍然需要10个小时。</p>
                                <img src="../res/static/images/item.png" alt="">
                            </div>
                            <div class="comment count">
                                <a href="/blog/details#comment">评论</a>
                                <a href="javascript:;" class="like">点赞</a>
                            </div>
                        </div>
                    </div>
                    <div class="item-btn">
                        <button class="layui-btn layui-btn-normal">下一页</button>
                    </div>
            </div>
        </div>
        <div class="footer">
            <p>
                <span>&copy; 2018</span>
                <span><a href="/blog/index.html" target="_blank">layui.com</a></span> 
                <span>MIT license</span>
            </p>
            <p><span>人生就是一场修行</span></p>
        </div>
    <script src="../res/layui/layui.js"></script>
    <script>
        layui.config({
          base: '../res/static/js/' 
        }).use('blog'); 
    </script>
</body>
</html>