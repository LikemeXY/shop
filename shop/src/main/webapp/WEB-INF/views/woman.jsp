<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<base href=" ${pageContext.request.contextPath }/">
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
		<title>所有商品 - 一生有你服饰</title>
		<script type="text/javascript" src="static/js/jquery-2.2.4.min.js" ></script>
		<script type="text/javascript" src="static/js/index.js" ></script>
		<link rel="stylesheet" href="static/css/layui.css" />
		<link rel="stylesheet" href="static/css/index.css" />
		<link rel="stylesheet" href="static/css/iconfont.css" />
		<style type="text/css">
       		body{background:#DDDDDD;}
    	</style>
	</head>
	<body>
		<div class="wrapper">
			<div class="search">
				<form action="" method="get">
					<input type="text" name="kwd" placeholder="请输入关键词搜索商品" />
					<button><i class="iconfont icon-ziyuan"></i></button>
				</form>
			</div>
			<div class="layui-tab layui-tab-card goodscat">
				<ul class="layui-tab-title">
					<li>
						<a href="product/all">全部</a>
					</li>
					<li>
						<a href="product/woman" style="color: #F03;">女士内衣</a>
					</li>
					<li>
						<a href="product/man">男士内裤</a>
					</li>
					<li>
						<a href="product/watch">手表</a>
					</li>
					<li>
						<a href="product/lipstick">口红</a>
					</li>
				</ul>
			</div>
			<div class="h90"></div>
			<div id="goodsList" class="goodslist all">
			<c:forEach items="${requestScope.product}" var="product">
				<dl>
					<dt>
						<a href="product/productDetail?pId=${product.pId}" title="${product.pName}">
							<img src="static/img/main/${product.imgIndex}.jpg" alt="${product.pName}" />
						</a>
					</dt>
					<dd class="proname">
						<a href="product/productDetail?pId=${product.pId}" title="${product.pName}">${product.pName}</a>
					</dd>
					<dd class="price">
						<em>￥</em>
						${product.price}
						<span>${product.soldNum}人购买</span>
					</dd>
				</dl>	
				</c:forEach>
			</div>
		</div>	
		<div class="gotop" >
			<a href="javascript:scrollTo(0,0)">
				<img src="static/img/gotop.png" width="38">
			</a>
		</div>
		<div class="toolbar">
			<ul>
				<li>
					<a href="" style="color: #F03;">
						<i class="iconfont icon-fenlei"></i>
						<br />
						分类
					</a>
				</li>
				<li class="b">
					<a href="cart/cartList">
						<span class="layui-badge-dot" style="display: none;"></span>
						<i class="iconfont icon-gouwuche"></i>
						<br />
						购物车
					</a>
				</li>
				<li>
					<a href="" id="kefuBtn">
						<i class="iconfont icon-weixinliaotian"></i>
						<br />
						客服
					</a>
				</li>
			</ul>
		</div>
		
		<script type="text/javascript">
			$(function(){
				$(".gotop").hide();
				$(window).bind("scroll",function(){
					var sTop = $(window).scrollTop();
					var sTop = parseInt(sTop);
					if(sTop > 300){
						$(".gotop").show();
					}else{
						$(".gotop").hide();
					}
				})
			})
		</script>
	</body>
</html>
