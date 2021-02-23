<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
	<title>订单中心</title>
	<script type="text/javascript" src="static/js/jquery-2.2.4.min.js" ></script>
	<script type="text/javascript" src="static/js/layer/layer.js"></script>
	<script type="text/javascript" src="static/layui/layui.js"></script>
	<link rel="stylesheet" href="static/layui/css/layui.css" />
	<style type="text/css">
		tr{
			border: 1px solid #dcf1fc;
		}
		td,th{
			font-size:0.95em;
			text-align:center;
			padding:4px;
			border-collapse:collapse;
			border: 1px solid #dcf1fc;
			/*border-width:1px 0 1px 0*/
		}
		th{
			background-color:#C3E7FA;
			color:#000000
		}
		td{
			text-align: center;
			background-color: transparent;
		}
	</style>
</head>

<body>
	<input type="hidden" name="username" value="${sessionScope.admin.username}">
	<ul class="layui-nav">
	  <li class="layui-nav-item layui-this"><a href="">订单详情</a></li>
	  <li class="layui-nav-item">
	    <a><img src="static/img/admin.jpg" class="layui-nav-img">管理员(${sessionScope.admin.username})</a>
	    <dl class="layui-nav-child">
	      <dd><a onclick="changePassword()">修改密码</a></dd>
	      <dd><a onclick="logout()">退出登录</a></dd>
	    </dl>
	  </li>
	</ul>
	<table id="order" lay-filter="test"></table>
	<script>
		function changePassword(){
			var username = document.querySelector('[name="username"]').value;
			layer.prompt({
				  formType: 3,
				  value: '',
				  title: '请输入密码',
				  area: ['800px', '350px'] //自定义文本域宽高
				}, function(value, index, elem){
					layer.confirm('确定修改密码为 '+value+' 吗?', {
						  btn: ['确定','取消'] //按钮
						}, function(){
							$.ajax({
								type:"post",
								data:{
									"username":username,
									"password":value
								},
								url:"changePassword",
								dataType:"text",
								success:function(response){
									console.log(response)
									if(response=="success"){
										layer.msg('您的密码已更改为 '+value+' , 请妥善保管！', {
											  icon: 1,
											  time: 5000
											});
										layer.alert('密码已更改'+value+'，请重新登录！', {
											  skin: 'layui-layer-lan' //样式类名
											  ,closeBtn: 0
											}, function(){
											  location.href="logout";
											});
									}else{
										layer.msg('密码更改失败！', {
											  icon: 2,
											  time: 2000
											});
									}
								}
							})

						}, function(){
							
						});
					 layer.close(index);
				}); 
		}
		function logout(){
			layer.confirm('确定注销吗?', {
				  btn: ['确定','取消'] //按钮
				}, function(){
					location.href="logout";
				})
		}	
		//注意：导航 依赖 element 模块，否则无法进行功能性操作
		layui.use('element', function(){
		  var element = layui.element;

		});
		layui.use('table', function() {
		    var  table = layui.table
		    //用户表
		    table.render({
		        elem: '#order'
		        , height: 600
		        , url: 'orderRecord/orderRecordList' //数据接口
		        , title: '订单列表'
		        , totalRow: false //开启合计行
		        , cellMinWidth: 80 //全局定义常规单元格的最小宽度
		        , even: true //开启隔行背景
		        , size: 'lg' //小尺寸的表格
		        , page: true
		        , cols: [
		            [ //表头
		                {type: 'checkbox', fixed: 'left'}
		                , {field: 'orderNo', title: '订单号', align: 'center',unresize: true, width:180, sort:true}
		                , {field: 'pId', title: '商品ID', align: 'center', sort:true}
		                , {field: 'pName', title: '商品名称', align: 'center'}
		                , {field: 'size', title: '商品规格', align: 'center'}
		                , {field: 'color', title: '商品颜色', align: 'center'}
		                , {field: 'number', title: '数量', align: 'center', sort:true}
		                , {field: 'price', title: '单价', align: 'center', sort:true}
		                , {field: 'totalPrice', title:'总价', align: 'center', sort:true}
		                , {field: 'name', title: '用户姓名', align: 'center'}
		                , {field: 'phone', title: '手机号码', align: 'center'}
		                , {field: 'location', title: '所在地区', align: 'center'}
		                , {field: 'address', title: '详细地址', align: 'center'}
		                , {field: 'message', title: '留言', align: 'center'}
		                , {field: 'time', title: '付款时间', align: 'center'}
		            ]
		        ]
// 		        ,parseData: function(res){ //res 即为原始返回的数据
// 		            return {
// 		                "code": 0, //解析接口状态
// 		                "msg": res.message, //解析提示文本
// 		                "count": res.total, //解析数据长度
// 		                "data": res //解析数据列表
// 		            };
// 		        }
		    });
	
		});

	</script>


</body>
</html>
