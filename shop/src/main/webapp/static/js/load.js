/*endlesspage.js*/
var gPageSize = 2;
var i = 1; //设置当前页数，全局变量
$(function () {
    //根据页数读取数据
    function getData(pagenumber) {
        i++; //页码自动增加，保证下次调用时为新的一页。
        $.get("/ajax/Handler.ashx", { pagesize: gPageSize, pagenumber: pagenumber }, function (data) {
            if (data.length > 0) {
                var jsonObj = JSON.parse(data);
                insertDiv(jsonObj);
            }
        });
        $.ajax({
            type: "post",
            url: "/ajax/Handler.ashx",
            data: { pagesize: gPageSize, pagenumber: pagenumber },
            dataType: "json",
            success: function (data) {
                $(".loaddiv").hide();
                if (data.length > 0) {
                    var jsonObj = JSON.parse(data);
                    insertDiv(jsonObj);
                }
            },
            beforeSend: function () {
                $(".loaddiv").show();
            },
            error: function () {
                $(".loaddiv").hide();
            }
        });
    }
    //初始化加载第一页数据
    getData(1);
 
    //生成数据html,append到div中
    function insertDiv(json) {
        var $goodsList = $("#goodsList");
        var html = '';
        for (var i = 0; i < json.length; i++) {
            html += '<dt><a href="/item/'+item.id+'.html" title="'+item.goods_name+'"><img src="'+item.goods_img+'" alt="'+item.goods_name+'"></a></dt>';
            html += '<dd class="proname"><a href="/ysyn-4/index.php/home/index/goodsinfo.html?id='+item.id+'" title="'+item.goods_name+'">'+item.goods_name+'</a></dd>';
            html += '<dd class="price"><em>&yen;</em>'+item.sale_price+'<span>'+item.buy_count+'人购买</span></dd>';
            html += '</dl>';
        }
        $goodsList.append(html);
    }
 
    //==============核心代码=============
    var winH = $(window).height(); //页面可视区域高度 
 
    var scrollHandler = function () {
        var pageH = $(document.body).height();
        var scrollT = $(window).scrollTop(); //滚动条top 
        var aa = (pageH - winH - scrollT) / winH;
        if (aa < 0.02) {//0.02是个参数
            if (i % 10 === 0) {//每10页做一次停顿！
                getData(i);
                $(window).unbind('scroll');
                $("#btn_Page").show();
            } else {
                getData(i);
                $("#btn_Page").hide();
            }
        }
    }
    //定义鼠标滚动事件
    $(window).scroll(scrollHandler);
    //==============核心代码=============
 
    //继续加载按钮事件
    $("#btn_Page").click(function () {
        getData(i);
        $(window).scroll(scrollHandler);
    });
});