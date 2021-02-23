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
