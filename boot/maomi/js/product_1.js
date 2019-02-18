
$(function(){
    console.log(123);
    function loadPage(pno=0){
        console.log(pno);
        var lid=location.search.split("=")[1];
$.ajax({
    url:"http://127.0.0.1:3000/products?cl=11",
    type:"get",
    data:{pno},
    dataType:"json",
    success:function(output){
        console.log(output);
        var {products,pageCount}=output;
        var html="";
        for(var p of products){
            var {lid,pic,price,title,city,name}=p;
        //复制23~41行到此
        html+=`<div class="col-3">
            <a href="">
            <div class="card">
            <div class="img">
            <img src="${pic}" alt=""/></div>
            <p class="pl-2 my_small text-dark">${title}</p>
            <div class="pl-2 price pt-3">
            <span class="text-dark my_small">价格：</span>
            <span class="text-warning">${price.toFixed(2)}元/只</span>
            <span class="text-muted pl-5 my_small">地区</span>
            <span class="text-dark my_small">${city}</span>
            </div>
            <div class="pl-2 my_small pt-3 pb-2">
            <span class="text-muted">${name}</span>
            <img class="pl-4" src="./picture/maomi_vip.jpg" alt=""/>
            <span class="heat text-dark pl-5">热度:</span>
            <span class="number">41</span>
            </div>
            </div>
            </a>
            </div>`;
    
}
$("#plist").html(html);

    html=`<li class="page-item fenye_2">
        <a class="page-link">上一页</a>
        </li>`;
    for(var i=0;i<pageCount;i++){
        html+=i!=pno?`<li class="page-item fenye_2"><a class="page-link">${i+1}</a></li>`:`<li class="page-item active fenye_2"><a  class="page-link">${i+1}</a></li>`;
    }
      html+=`<li class="page-item fenye_2">
        <a class="page-link">下一页</a></li>`;

        $(".p-2 h6 ul").html(html);
        var $firstLi=$(".p-2 h6 ul>li:first");
        if(pno==0)//如果pno=0
                  //第一个禁用
            $firstLi.addClass("disabled");
        //否则 第一个启用
        var $lastLi=$(".p-2 h6 ul>li:last");
        //如果pno=pageCount-1
        if(pno==pageCount-1)
        //最后一个禁用
            $lastLi.addClass("disabled")
       //否则 最后一个启用
      }
    })//live server运行details.html，
  }  //手动添加?kwords=i5
    loadPage();
    $(".p-2 h6 ul").on("click","a",function(e){
        //alert("疼！");
        e.preventDefault();
        var pno;
        if($(this).html()=="上一页"){
            //找到现在处于active的li下a的内容数字
            var i=parseInt(
                $(".p-2 h6 ul>li.active>a").html()
            );
            pno=i-2;//内容数字本来就比当前pno大1,所以前一页，需要-2
        }else if($(this).html()=="下一页"){
            //找到现在处于active的li下a的内容数字
            var i=parseInt(
                $(".p-2 h6 ul>li.active>a").html()
            );
            pno=i;//内容数字本来就比当前pno大1,所以下一页，不需要再+1
        }else
            pno=$(this).html()-1;
        loadPage(pno);
        })

  })

