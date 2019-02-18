$(function(){
    $.ajax({
        url:"http://127.0.0.1:3000/header.html",
        type:"get",
        success:function(res){
            //console.log(res);
            $("<link rel='stylesheet' href='./css/header.css'/>").appendTo("head");
            $(res).replaceAll("#header")
        }
    })

    $.ajax({
        url:"http://127.0.0.1:3000/session1",
        data:{},
        type:"get",
        dataType:"json"//因为返回json字符串，所以希望自动转为对象
    }).then(function(res){
        console.log(res)
        $(".login1").css({"display":"none"})
        $(".login2").html(res.name)
        $(".login3").css({"display":"none"})
        $(".login4").css({"display":"block"})
        //$(".login2").css({"display":"block"})
    })
//console.log(11);
    $(".login4").click(function(){
        console.log(123);
        //res.name="";
        //$.res.clear();
        //console.log(res);
        var uid=1;
        $.ajax({
            url:"http://127.0.0.1:3000/session1",
            data:{uid:uid},
            type:"get",
            dataType:"json"//因为返回json字符串，所以希望自动转为对象
        }).then(function(res){
            //console.log(res+"1")
            //$(".login2").css({"display":"block"})
        })
    })

})
