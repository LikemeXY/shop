<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<base href=" ${pageContext.request.contextPath }/">
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
		<title>购物车结算 - 一生有你服饰</title>
		<script type="text/javascript" src="static/js/jquery-2.2.4.min.js"></script>
		<script type="text/javascript" src="static/js/pay.js"></script>
		<script type="text/javascript" src="static/layui/extend/city-picker/city-picker.data.js"></script>
		<script type="text/javascript" src="static/layui/layui.js"></script>
		<link rel="stylesheet" type="text/css" href="static/layui/extend/city-picker/city-picker.css">
		<link rel="stylesheet" href="static/layui/css/layui.css" />
		<link rel="stylesheet" href="static/css/index.css" />
		<link rel="stylesheet" href="static/css/iconfont.css" />
	</head>

	<body>
		<style type="text/css">
			body {
				background: #DDDDDD;
			}
			
			h2 {
				border-color: #FF0000;
			}
			
			.orderbtn {
				background: #FF0000;
			}
			
			.shopcart dl {
				height: auto;
				overflow: hidden;
				margin-bottom: 10px;
				padding: 5px;
				background: #F8F8F8;
				border: 1px solid #E6E6E6;
			}
			
			.shopcart dl dt {
				float: left;
				margin-right: 10px;
				width: 100px;
				height: 100px;
			}
			
			.shopcart dl dt img {
				width: 100px;
				height: 100px;
			}
			
			.shopcart dl dd.a {
				margin-bottom: 8px;
				line-height: 1.7em;
			}
			
			.shopcart dl dd.b {
				margin-bottom: 8px;
				line-height: 1.5em;
			}
			
			.shopcart dl dd.b span {
				margin-right: 6px;
				padding: 0 5px;
				color: #FFF;
				background: #CCC;
			}
			
			.shopcart dl .c {
				margin-right: 10px;
				font: 16px Arial;
				color: #F40;
				line-height: 22px;
			}
			
			.cartTotal {
				margin-bottom: 8px;
				height: 40px;
				font-size: 14px;
				line-height: 40px;
				text-align: right;
				vertical-align: middle;
			}
			
			.cartTotal em {
				color: #F40;
				vertical-align: middle;
			}
			
			.cartTotal em.a {
				font: 16px Arial;
				font-weight: 600;
			}
			
			.cartTotal em.b {
				font: 20px Arial;
				font-weight: 400;
			}
			
			.cartTotal em.c {
				font: 24px Tahoma;
				font-weight: 600;
			}
		</style>
		</head>

		<body>
			<div class="wrapper">
				<h2 id="buy">确认订购商品</h2>
				<div class="shopcart pay">
				<c:forEach items="${requestScope.payList}" var="payP">
					<dl>
						<dt><a href="product/productDetail?pId=${payP.pId}"><img src="static/img/main/${payP.imgIndex }.jpg"></a></dt>
						<dd><input type="hidden" class="pId" name="pId" value="${payP.pId}"></dd>
						<dd><input type="hidden" class="dPrice" name="dPrice" value="${payP.dPrice}"></dd>
						<dd class="a">
							<a class="pName" href="product/productDetail?pId=${payP.pId}">${payP.pName}</a>
						</dd>
						<dd class="b">
						<c:if test="${payP.status!=3&&payP.status!=4}">
	                		<span class="size">${payP.size}</span>
	               		</c:if>
	                	<c:if test="${payP.status!=2&&payP.status!=4}">
	                		<span class="color">${payP.color}</span>
	                	</c:if>
							× <p class="itemNum" style="display: inline-block;">${payP.number}</p> </dd>
						<dd class="c">￥<p class="itemPrice" style="display: inline-block;">${payP.price}</p></dd>
					</dl>
				</c:forEach>
				</div>
				<div class="cartTotal">共 <em class="a totalNum"></em> 件商品，价格总计：<em class="b">&yen;</em> <em class="c totalPrice"></em></div>
				<h2 id="buy">填写订单信息</h2>
				<form id="wfform" class="layui-form">
					<div class="layui-form-item">
						<label class="layui-form-label">姓名</label>
						<div class="layui-input-block">
							<input type="text" name="name" required lay-verify="required" placeholder="请填写姓名（必填）" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">手机号码</label>
						<div class="layui-input-block"> 
							<input type="tel" name="phone" required lay-verify="phone" id="mob" lay-verify="phone" placeholder="请填写手机号码（必填）" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item layui-col-md8">
						<label class="layui-form-label">所在地区</label>
						<div class="layui-input-block">
							<input type="text" autocomplete="on" required lay-verify="required" class="layui-input" id="address" name="location" readonly="readonly" data-toggle="city-picker" placeholder="请选择">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">详细地址</label>
						<div class="layui-input-block">
							<input type="text" name="address" required lay-verify="required" placeholder="请填写详细地址（必填）" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">留言</label>
						<div class="layui-input-block">
							<textarea name="message" placeholder="请填写留言" class="layui-textarea" style="min-height:80px;"></textarea>
						</div>
					</div>
					<div class="layui-form-item">
						<button class="layui-btn orderbtn" lay-submit lay-filter="payForm" >立即提交订单</button>
					</div>
				</form>
				<div class="copyright">
					Copyright © 2019~2020 一生有你 All Rights Reserved </div>
			</div>
			<div class="h50"></div>
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
						<a href="cart/cartList">
							<span></span>
							<i class="iconfont icon-gouwuche"></i>
							<br />
							购物车
						</a>
					</li>
				</ul>
			</div>
			
		
		<script type="text/javascript">	
			var totalPrice = 0;
			var totalNum = 0;
			$("dl").each(function(){
				var itemNum = parseInt($(this).find($(".itemNum")).text());
				totalNum += itemNum;
				
				var itemPrice = parseInt($(this).find($(".itemPrice")).text());
				totalPrice += itemPrice;
			})
			$(".totalNum").text(totalNum)
			$(".totalPrice").text(totalPrice+".00")
		</script>
		<script type="text/javascript">
			layui.extend({
				citypicker:'{/}./static/layui/extend/city-picker/city-picker'
			}).use(['jquery','citypicker','form'],function(){
				var $ = layui.$,
				form = layui.form,
				citypicker = layui.citypicker;
		
				var cityPicker = new citypicker("#address",{
					provincename:"provinceId",
					cityname:"cityId",
					districtname: "districtId",
					level: 'districtId',// 级别
				})
				//监听提交
				form.on('submit(payForm)', function(data){
// 				  layer.alert(JSON.stringify(data.field));
					var payList = [];
					var userInfo = [];
					$(".pay dl").each(function(){
						var pId = $(this).find(".pId").val();
						var pName = $(this).find(".pName").text();
						var size = $(this).find(".size").text();
						var color = $(this).find(".color").text();
						var itemNum = $(this).find(".itemNum").text();
						var itemPrice = $(this).find(".itemPrice").text();
						var dPrice = $(this).find(".dPrice").text();
						var a= {};
						a.pId=pId;
						a.pName=pName;
						a.size=size;
						a.color=color;
						a.price=itemPrice;
						a.dPrice=dPrice;
						a.number=itemNum;
						payList.push(a);
					})
					console.log(payList)
					var b={}
					b.name=data.field.name
					b.phone=data.field.phone
					b.location=data.field.location
					b.address=data.field.address
					b.message=data.field.message
					userInfo.push(b)
					console.log(userInfo)
					
					$.ajax({
						type : "post",
						url : 'pay/payOnCart',
						data : {
							"payList":JSON.stringify(payList),
							"userInfo":JSON.stringify(userInfo),
						},
						success : function(data) {
							console.log(data)
							window.location.href=data;
						}
					});
					return false;
				});
			});
		</script>
	</body>
</html>