function test(){
	console.log("111")
	//声明list  
	var payList = [];  	//创建两个user对象  
	var a= {};  
	a.pId="1";
	a.pName="哈哈哈";  
	a.size="70A";
	a.color="红色"
	a.price="123.00";
	a.number=22;
	var b = {};  
	b.pId="2";
	b.pName="嘻嘻嘻";  
	b.size="80A";
	b.color="白色"
	b.price="12553.00";
	b.number=22;

	payList.push(a);  
	payList.push(b);  
	
	var userInfo = [];
	var c={};
	c.name="小米";
	c.phone="123456";
	c.location="广东省"
	c.address="惠来县"
	c.message="尽快发货"
	c.payMethod="1"
	userInfo.push(c)
	$.ajax({  
	    url : '/pay/payOnCart',
	    data : "payList="+JSON.stringify(payList)+"userInfo="+JSON.stringify(userInfo),
	    type : "POST",
	    success : function(data) {  
	        alert(data);
	    }  
	}); 
}