<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<base href=" ${pageContext.request.contextPath }/">
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
		<title title="支付失败"></title>
		<link rel="stylesheet" href="static/css/index.css" />
		<script type="text/javascript" src="static/js/jquery-2.2.4.min.js" ></script>
		<style type="text/css">
       		body{background:#DDDDDD;}
       		
       		.pay-img{
       			width: 200px;
       			margin: 20px 0 0 270px;
       		}
       		.back{
       			border: 3px solid #EB7350;
       			text-align: center;
       			width: 100px;
       			height: 30px;
       			margin: 10px auto;
       			line-height: 28px;
       			font-weight: bold;
       			border-radius: 10%;
       			cursor: pointer;
       		}
       		.back:hover{
       			color: #9F9F9F;
       		}
    	</style>
	</head>
	<body>
		<div class="wrapper">
			<img class="pay-img" src="static/img/pay-lost.PNG" />
			<div class="back">返回购物车</div>
		</div>
		
		<script type="text/javascript" src="static/js/backStageInfer.js" ></script>
		<script type="text/javascript">
			$(".back").click(function(){
				location.href="cart/cartList"
			})
		</script>
	</body>
</html>
