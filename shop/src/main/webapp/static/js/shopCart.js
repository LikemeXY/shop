$(document).ready(function(){	
	$.ajax({
		type:"get",
		url:"cart/isCookie",
		dataType:"text",
		success:function(response){
			if(response=="yes"){
				$(".layui-badge-dot").show();
			}else{
				$(".layui-badge-dot").hide();
			}
		}
	});

})

function delGoods(){
	$(".shopcart").unbind();
	$('.shopcart').on('click', ".delete", function () {
		var tr = $(this).parent().parent();
		var showprice = parseInt($(".showprice",tr).text());
		var totalPrice = parseInt($(".total-price").text());
		var lastPrice = parseInt(totalPrice-showprice);
		
		if(lastPrice<0) $(".total-price").text(0.00);
		else $(".total-price").text(lastPrice+".00");
		
		var num = parseInt($(".total0",tr).val());
		var cartNum = parseInt($(".cartNum").text());
		var lastNum = cartNum-num;
		if(lastNum<0) $(".cartNum").text(0);
		if(lastNum>0) $(".cartNum").text(cartNum-num);

	 	$(this).closest('dl').remove();
	
		var tr1 = $(this).parent().parent().parent();
		var pId = $(".pId",tr1).val();
		var num = parseInt(num)
		var size = $(".size",tr1).val();
		var color = $(".color",tr1).val();
		$.ajax({
			type:"post",
			url:"cart/delete",
			data:{
				"pId":pId,
				"num":num,
				"size":size,
				"color":color
			},
			success:function(){
			}
		})
	 	
	 	if(!lastPrice) location.href="shopChat"
    });

}

function gopay(){
	location.href="cart/payList"
}