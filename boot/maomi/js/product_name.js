
window.onload=function(){
    var lid=location.search.split("=")[1];
    axios.get("http://127.0.0.1:3000/details",
        {
            params:{lid}//"lid="+lid,
        })//open(output)
        //        ↓
        .then((res)=>{
        var output = res.data;
    var {product,specs,pics}=output;
    new Vue({
        el: "#details",
        data: {
            lid,product,specs,pics
        }
    })

    $("img.my-smalll").click(function(){
        var $img=$(this);
        var src=$img.attr("data-target");
        $(".my-big").attr({src});
    })
//鼠标移入下拉
    $("[data-target]").mousemove(function(){
        var $img=$(this);
        var src=$img.attr("data-target");
        $(".my-big").attr({src});
    })
//单击按钮显示联系我们
    $(".tel").click(function(){
        $(".heimu").css("display","block");
    })
    $(".close").click(function(){
        $(".heimu").css("display","none");
    })
    $(".weixin").click(function(){
        $(".heimu_1").css("display","block");
    })
    $(".close").click(function(){
        $(".heimu_1").css("display","none");
    })


})

}



