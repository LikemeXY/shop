<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<base href=" ${pageContext.request.contextPath }/">
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
		<title>详情 - 一生有你服饰</title>
		<script type="text/javascript" src="static/js/jquery-2.2.4.min.js" ></script>
		<script type="text/javascript" src="static/js/detail.js" ></script>
		<script type="text/javascript" src="static/js/jquery.SuperSlide.2.1.1.js" ></script>
		<script type="text/javascript" src="static/layui/extend/city-picker/city-picker.data.js"></script>
		<script type="text/javascript" src="static/layui/layui.js"></script>
		<link rel="stylesheet" type="text/css" href="static/layui/extend/city-picker/city-picker.css">
		<link rel="stylesheet" href="static/layui/css/layui.css" />
		<link rel="stylesheet" href="static/css/index.css" />
		<link rel="stylesheet" href="static/css/iconfont.css" />
		<style type="text/css">
	        body{background:#DDDDDD;}
	        .saleprice,.gotobtn,.orderbtn,.querybtn{background:#FF00CC;}
	        h2{border-color:#FF00CC;}
	        .li-click{
	          border:2px solid #F90;
	          color:#FF9900;
	         }
			.error{
	        	border: 2px solid red;
	        	
	        }
    	</style>
	</head>
	<body>
		<div id="layslide" class="wrapper">
			<div class="layui-carousel" style="width: 100%; height: 750px;">
				<div class="focusBox">
					<ul class="pic">
					<c:forEach items="${requestScope.images}" var="images">
						<li>
							<a><img src="static/img/main/${images.imgName }.jpg" /></a>
						</li>
					</c:forEach>
					</ul>
				</div>
				<div class="layui-carousel-ind">
					<ul class="hd">
					<c:forEach items="${requestScope.images}" var="images">
						<li></li>
					</c:forEach>
					</ul>
				</div>
			</div>
			
			<div class="pricediv">
				<div class="saleprice">
					<strong>
						<em>￥</em>${product.price}
					</strong>
					<span>
						<p style="text-decoration: line-through;">
							<em>￥</em>${product.oriPrice}
						</p>
						<p>已售出${product.soldNum}件</p>
					</span>
				</div>
			</div>
			<div class="title">
				 ${product.pName}
			</div>
			<div class="service">
				<ul>
					<li>
						<i class="iconfont icon-guanfang2 i-ser"></i>官方直营
					</li>
					<li>
						<i class="iconfont icon-express-model i-ser"></i>极速发货
					</li>
					<li>
						<i class="iconfont icon-zhengque i-ser"></i>正品保证
					</li>
					<li>
						<i class="iconfont icon-swticonkuaidi2 i-ser"></i>全场包邮
					</li>
				</ul>
			</div>
			<div class="subbtn">
				<button onclick="qianggou()" class="layui-btn gotobtn">
					<img src="static/img/time.png" class="time" />立即抢购
				</button>
			</div>		
			<h2 id="buy">在线订购</h2>
			<form action="pay/payOneNow" class="layui-form" method="post">
				<div class="layui-form-item">
					<input type="hidden" name="pId" value="${product.pId}">
					<input type="hidden" name="pName" value="${product.pName}">
					<input type="hidden" name="price" value="${product.price}">
					<input type="hidden" id="size" lay-verify="size" name="size" value="">
					<input type="hidden" id="color" lay-verify="color" name="color" value="">
					<input type="hidden" name="payMethod" value="1">
					<input type="hidden" id="hasSize" name="hasSize" value="${msg_size}">
					<input type="hidden" id="hasColor" name="hasColor" value="${msg_color}">
					<input type="hidden" id="category" name="category" value="${product.category}">
				</div>
				<c:if test="${msg_size!=0&&msg_tc!=1}">
				<div class="layui-form-item canshu">
					<label class="layui-form-label">尺码</label>
					<div class="layui-input-block">
						<ul class="goods-size frame">
						<c:forEach items="${requestScope.sizes}" var="sizes">
							<li style="cursor: pointer;" id="size">
								<a href="javascript:;" class="txta">${sizes.sizeName}</a>
							</li>
						</c:forEach>
						</ul>
					</div>
				</div>
				</c:if>
				<c:if test="${msg_tc==1}">
				<div class="layui-form-item canshu">
					<label class="layui-form-label">套餐</label>
					<div class="layui-input-block">
						<ul class="goods-size1 frame">
						<c:forEach items="${requestScope.sizes}" var="sizes">
							<li style="cursor: pointer;" id="size">
								<a href="javascript:;" class="txta">${sizes.sizeName}</a>
							</li>
						</c:forEach>
						</ul>
					</div>
				</div>
				</c:if>
				<c:if test="${msg_color!=0}">
				<div class="layui-form-item color">
					<label class="layui-form-label">颜色</label>
					<div class="layui-input-block">
						<ul class="goods-color frame">
						<c:forEach items="${requestScope.colors}" var="colors">
							<li style="cursor: pointer;" id="color">
								<a href="javascript:;" class="txta">${colors.colorName}</a>
							</li>
						</c:forEach>
						</ul>
					</div>
				</div>
				</c:if>
				<div class="layui-form-item">
					<label class="layui-form-label">数量</label>
					<div class="layui-input-block">
						<div class="total">
							<a onclick="numDec()" title="减1" class="dec">
								—
							</a>
							<input class="layui-input total-input" type="text" id="total" value="1" name="number" onchange="setTotal()" onkeyup="value=value.replace(/^(0+)|[^\d]+/g,'')" />
							<a onclick="numInc()" title="加1" class="inc">
								+
							</a>
						</div>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">价格</label>
					<div class="layui-input-block">
						<div class="price">
							<strong>
								<em class="rmb">￥</em>
								<p class="showprice" name="totalPrice">${product.price}</p>
								<p id="showinfo" class="showinfo">222</p>
							</strong>
						</div>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">姓名</label>
					<div class="layui-input-block">
						<input type="text" name="name" placeholder="请填写姓名（必填）" class="layui-input" lay-verify="required">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">手机号码</label>
					<div class="layui-input-block">
						<input type="tel" name="phone" placeholder="请填写手机号码（必填）" class="layui-input" lay-verify="phone">
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
						<input type="text" name="address" lay-verify="required" placeholder="请填写详细地址（必填）" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">留言</label>
					<div class="layui-input-block">
						<textarea placeholder="请填写留言" name="message" class="layui-textarea" style="min-height:60px;"></textarea>
					</div>
				</div>
				<div class="layui-form-item">
					<button class="layui-btn orderbtn" lay-submit lay-filter="formOrder">立即提交订单</button>
				</div>
			</form>
			<div class="copyright">Copyright © 2019~2020 一生有你 All Rights Reserved</div>
			
		</div>
		
		<div class="gotop" >
			<a href="javascript:scrollTo(0,0)">
				<img src="static/img/gotop.png" width="38">
			</a>
		</div>
		<div class="orderbar">
			<ul>
				<li class="a">
					<a href="index.jsp">
						<i class="iconfont icon-fenlei"></i>
						<br />
						分类
					</a>
				</li>
				<li class="b">
					<a href="cart/cartList" class="gouwuche">
						<span class="layui-badge-dot" style="display: none;"></span>
						<i class="iconfont icon-gouwuche" ></i>
						<br />
						购物车
					</a>
				</li>
				<li class="c">
					<a href="javascript:;" onclick="addShopCart(${product.pId})">加入购物车</a>
				</li>
				<li class="d">
					<a href="#buy">在线订购</a>
				</li>
			</ul>
		</div>
		
		<script type="text/javascript">
			jQuery(".layui-carousel").slide({
				mainCell: ".pic",
				effect: "left",
				autoPlay: true,
				delayTime: 250
			});
			
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
	
			$(".canshu").find("li").each(function(){
				$(this).click(function(){
					$(".canshu").find("li").removeClass("li-click");
					$(this).addClass("li-click");
					console.log($(this).children().text());
					$("#size").attr("value",$(this).children().text());
				})
	 		})
			$(".color").find("li").each(function(){
				$(this).click(function(){
					$(".color").find("li").removeClass("li-click");
					$(this).addClass("li-click");
					console.log($(this).children().text());
					$("#color").attr("value",$(this).children().text());
				})
			})
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
				var status = true;
				//自定义验证规则
				form.verify({
				    size: function(value){
				    	var hasSize = $("#hasSize").val();
				    	if(hasSize!="0"){
							var category = $("#category").val();
							if(category!="4"){
								status = true
								if(!value){ layer.msg('请选择尺码', {icon: 5}); status=false;};
							}else{
								status = true
								if(!value){ layer.msg('请选择套餐', {icon: 5}); status=false;};
							}
							
						}
				    }
				    ,color: function(value){
				    	var hasColor = $("#hasColor").val();
						if(hasColor!="0"){
							status = true
							if(!value){ layer.msg('请选择颜色', {icon: 5}); status=false;};
						}
				    }
				  });
				//监听提交
				form.on('submit(formOrder)', function(data){
					if(!status){
						return false;
					}
				});
			});
		</script>

	</body>
</html>
