<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<base href=" ${pageContext.request.contextPath }/">
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
		<title>购物车 - 一生有你服饰</title>
		<script type="text/javascript" src="static/js/index.js" ></script>
		<script type="text/javascript" src="static/js/jquery-2.2.4.min.js" ></script>
		<link rel="stylesheet" href="static/css/layui.css" />
		<link rel="stylesheet" href="static/css/index.css" />
		<link rel="stylesheet" href="static/css/iconfont.css" />
		<style type="text/css">
       		body{background:#DDDDDD;}
    	</style>
	</head>
	<body>
		<div class="wrapper">
			<div class="noresult">
				<p>
					<i class="iconfont icon-gouwuche" style="font-size: 100px; color: #DDD;"></i>
				</p>
				<p class="red">购物车竟然是空的</p>
			</div>
			<div class="divide">
				<hr>
				<strong>店主推荐</strong>
			</div>
			<div class="recpro"></div>
			<div class="copyright"> Copyright © 2019~2020 一生有你 All Rights Reserved</div>
			
		</div>
		<div class="toolbar">
			<ul>
				<li>
					<a href="product/all">
						<i class="iconfont icon-fenlei"></i>
						<br />
						分类
					</a>
				</li>
				<li class="b">
					<a href="javascript:;" style="color: #F03;">
						<span class="layui-badge-dot" style="display: none;"></span>
						<i class="iconfont icon-gouwuche"></i>
						<br />
						购物车
					</a>
				</li>
				
			</ul>
		</div>
	</body>
</html>
