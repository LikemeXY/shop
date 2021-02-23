$(document).ready(function(){
	$.ajax({
		type:"get",
		url:"cart/isCookie",
		dataType:"text",
		success:function(response){
			if(response=="yes"){
				$(".layui-badge-dot").show();
			}
		}
	});
})

function setTotal(){
	var showprice = $(".showprice").text();
	$(".showprice").hide();
	
	var num = $(".total-input").val();
	var total = showprice * num + ".00";
	$(".showinfo").text(total);
	$(".showinfo").css("display","inline-block");
}

function numInc(){
	var value = $(".total-input").val();
	var num = parseInt(value)+1;
	if(num==0) return;
	$(".total-input").val(num);
	setTotal();
}
function numDec(){
	var value = $(".total-input").val();
	var num = parseInt(value)-1;
	if(num==0) return;
	$(".total-input").val(num);
	setTotal();
}

function setTotal0(){
	var showprice = $(".showprice").text();
	$(".showprice").hide();
	
	var num = $(".total0").val();
	var total = showprice * num + ".00";
	$(".showinfo").text(total);
	$(".showinfo").css("display","inline-block");
}

function qianggou(){
	url = window.location.href;
	if(url.indexOf("#") == -1){
		location.href=url+'#buy'
	}else{
		url=url.replace("#buy","");
		location.href=url+'#buy'
	}
}

function addShopCart(pId){
	var hasSize = $("#hasSize").val();
	var hasColor = $("#hasColor").val();
	var size = $("#size").val();
	var color = $("#color").val();
	if(hasSize!="0"){
		var category = $("#category").val();
		if(category!="4"){
			if(!size){ layer.msg('请选择尺码', {icon: 5}); return false;};
		}else{
			if(!size){ layer.msg('请选择套餐', {icon: 5}); return false;};
		}
	}
	if(hasColor!="0"){
		if(!color){ layer.msg('请选择颜色', {icon: 5}); return false;};
	}
	var num = $("#total").val();
	$.ajax({
		type:"post",
		url:"cart/add",
		data:{
			"pId":pId,
			"num":num,
			"size":size,
			"color":color
		},
		success:function(){
			layer.msg('添加成功，在购物车等亲！');
			$(".layui-badge-dot").show();
		}
	});
}

