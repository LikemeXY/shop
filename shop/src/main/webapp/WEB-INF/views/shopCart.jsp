<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<base href=" ${pageContext.request.contextPath }/">
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
		<title>所有商品 - 一生有你服饰</title>
		<script type="text/javascript" src="static/js/jquery-2.2.4.min.js" ></script>
		<script type="text/javascript" src="static/js/shopCart.js" ></script>
		<script type="text/javascript" src="static/js/layer/layer.js"></script>
		<script type="text/javascript" src="static/layui/layui.js"></script>
		<link rel="stylesheet" href="static/layui/css/layui.css" />
		<link rel="stylesheet" href="static/css/index.css" />
		<link rel="stylesheet" href="static/css/iconfont.css" />
		
		<style type="text/css">
       		
        body{background:#DDDDDD;}  
        /*float:left;margin-right:10px;font:16px Arial;color:#F40;line-height:22px;*/
        .shopcart dl dd strong {
        	float: left;
        	margin-right:10px;
		    height: 22px;
		    font:16px Arial;
		    font-weight: 600;
		    line-height:22px;
		    color: #F40;
		}
		.shopcart dl dd strong .showprice{
			display: inline-block;
		}
		.shopcart dl dd strong .showinfo {   
		    display: none;
		}      
        .shopcart dl{height:auto;overflow:hidden;margin-bottom:10px;padding:5px;background:#F8F8F8;border:1px solid #E6E6E6;}
        .shopcart dl dt{float:left;margin-right:10px;width:100px;height:100px;}
        .shopcart dl dt img{width:100px;height:100px;}
        .shopcart dl dd.a{margin-bottom:8px;line-height:1.7em;}
        .shopcart dl dd.b{margin-bottom:8px;line-height:1.5em;}
        .shopcart dl dd.b span{margin-right:6px;padding:0 5px;color:#FFF;background:#CCC;}
        .shopcart dl dd.c span.a{float:left;margin-right:10px;font:16px Arial;color:#F40;line-height:22px;}
        .shopcart dl dd.c span.b a{display:block;float:left;width:20px;height:20px;text-align:center;border:1px solid #E6E6E6;cursor:pointer;}
        .shopcart dl dd.c span.b input{float:left;width:30px;height:20px;line-height:20px;text-align:center;outline:none;-webkit-appearance:none;border:1px solid #E6E6E6;border-width:1px 0;border-radius:0;}
        .shopcart dl dd.c span.c{float:right;}
        .discount{padding:20px 0;text-align:right;}
        .discount p.a{margin-bottom:10px;font-size:20px;}
        .discount p.b{margin-bottom:6px;font-size:14px;}
        .carttotal{position:fixed;right:0;bottom:51px;z-index:101;width:100%;height:45px;line-height:45px;text-align:right;vertical-align:middle;background:#F2F2F2;}
        .carttotal em{color:#F40;vertical-align:middle;}
        .carttotal em.a{font:20px Arial;font-weight:400;}
        .carttotal .b{font:24px Tahoma;font-weight:600;color:#F40;vertical-align:middle;}
        .carttotal a{display:block;float:right;width:120px;height:45px;margin-left:20px;text-align:center;background:#F63;}
        .carttotal a:link,.carttotal a:visited{color:#FFF;text-decoration:none;}
        @media screen and (max-width:350px){.shopcart dl dd.c span.c{display:block;float:left;margin-top:8px;width:100%;}}
    
    	</style>
	</head>
	<body>
		<div class="wrapper">
			<h1>购物车</h1>
			<div class="shopcart">
				<c:forEach items="${requestScope.cartList}" var="cart">
				<dl class="shopcart-item">
	                <dt><a href="product/productDetail?pId=${cart.pId}"><img src="static/img/main/${cart.imgIndex }.jpg"></a></dt>
	                <dd><input type="hidden" class="pId" name="pId" value="${cart.pId}"></dd>
	                <dd><input type="hidden" class="size" name="size" value="${cart.size}"></dd>
	                <dd><input type="hidden" class="color" name="color" value="${cart.color}"></dd>
	                <dd class="a"><a href="product/productDetail?pId=${cart.pId}">${cart.pName}</a></dd>
	                <dd class="b">
	                <c:if test="${cart.status!=3&&cart.status!=4}">
	                	<span>${cart.size}</span>
	                </c:if>
	                <c:if test="${cart.status!=2&&cart.status!=4}">
	                	<span>${cart.color}</span>
	                </c:if>
	                </dd>
	                <dd class="c">
	                	<strong>
	                		<em class="rmb">￥</em>
	                		<span class="showprice">${cart.price }</span>
	                    	<span id="showinfo" style="display: none;" class="showinfo">${cart.dPrice}</span>
	                	</strong>
	                    
	                    <span class="b">
	                        <a  title="减1" class="dec">
	                        	-
	                        </a>
	                        <input class="total0" type="text" value="${cart.number }" onchange="setTotal0()" onkeyup="value=value.replace(/^(0+)|[^\d]+/g,'')"  />
	                        <a title="加1" class="inc">
	                        	+
	                        </a>
	                    </span>
	                    <span class="c">
	                    	<button onclick="delGoods()" class="delete layui-btn layui-btn-xs layui-btn-danger">
	                    		<img src="static/img/del.png" width="12px"  height="12px" style="margin-right:3px; margin-top: -3px;" />删除
	                    	</button>
	                    </span>
	                </dd>
	            </dl>
				</c:forEach>
			</div>
			<div class="carttotal">价格总计：
				<em class="a">￥</em>
				<p class="b total-price" style="display: inline-block;"></p>
				<a href="javascript:;" onclick="gopay()">去结算(<p style="display: inline-block;" class="cartNum">1件</p>)</a>
			</div>
			<div class="copyright">Copyright © 2019~2020 一生有你 All Rights Reserved        </div>
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
			var num = $(".shopcart").children("dl").length;
			$(".cartNum").text(num);
			var totalPrice = 0;
			$("dl").each(function(){
				var all = parseInt($(this).find($(".showinfo")).text()*$(this).find($(".total0")).val());
				totalPrice += all;
			})
			$(".total-price").text(totalPrice+".00");
			
			$(".shopcart").on('click', ".inc", function (){
				var tr = $(this).parent().parent();
				var value = $(".total0",tr).val();
				var num = parseInt(value)+1;
				if(num==0) return;
				
				$(".total0",tr).val(num);
				
				var showinfo = $(".showinfo",tr).text();
				/* $(".showprice",tr).hide(); */
				
				var num = $(".total0",tr).val();
				var total = showinfo * num + ".00";
				$(".showprice",tr).text(total);
				/* $(".showinfo",tr).css("display","inline-block"); */
				
				var totalPrice = parseInt($(".total-price").text());
				totalPrice += parseInt(showinfo);
				$(".total-price").text(totalPrice+".00");
				
				var cartNum = parseInt($(".cartNum").text());
				$(".cartNum").text(cartNum+1);
				var tr1 = $(this).parent().parent().parent();
				var pId = $(".pId",tr1).val();
				var num = parseInt(num)
				var size = $(".size",tr1).val();
				var color = $(".color",tr1).val();
				$.ajax({
					type:"post",
					url:"cart/update",
					data:{
						"pId":pId,
						"num":num,
						"size":size,
						"color":color
					},
					success:function(){
					}
				})
			})
			$(".shopcart").on('click', ".dec", function (){
				var tr = $(this).parent().parent();
				var value = $(".total0",tr).val();
				var num = parseInt(value)-1;
				if(num==0) {
					layer.msg('不能少于一件');
					return;
				}
				
				$(".total0",tr).val(num);
				
				var showinfo = $(".showinfo",tr).text();
				/* $(".showprice",tr).hide(); */
				
				var num = $(".total0",tr).val();
				var total = showinfo * num + ".00";
				$(".showprice",tr).text(total);
				/* $(".showinfo",tr).css("display","inline-block"); */
				
				var totalPrice = parseInt($(".total-price").text());
				totalPrice -= parseInt(showinfo);
				$(".total-price").text(totalPrice+".00");
				
				var cartNum = parseInt($(".cartNum").text());
				$(".cartNum").text(cartNum-1);
				var tr1 = $(this).parent().parent().parent();
				var pId = $(".pId",tr1).val();
				var num = parseInt(num)
				var size = $(".size",tr1).val();
				var color = $(".color",tr1).val();
				$.ajax({
					type:"post",
					url:"cart/update",
					data:{
						"pId":pId,
						"num":num,
						"size":size,
						"color":color
					},
					success:function(){
					}
				})
			})
		</script>
	</body>
</html>
