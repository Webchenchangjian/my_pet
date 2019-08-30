$(function(){
    // 轮播图
    var swiper = new Swiper('#index_tab_tu .swiper-container', {
        pagination: {
            el: '#index_tab_tu .swiper-pagination',
            dynamicBullets: true,
            clickable: true
        },
        // autoplay: true,
        loop: true,
        keyboard: {
            enabled: true,
        },
        navigation: {
            nextEl: '#index_tab_tu .swiper-button-next',
            prevEl: '#index_tab_tu .swiper-button-prev'
        }
    });

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
    $(".login4").click(function(){
        //console.log(123);
        //res.name="";
        //$.res.clear();
        //console.log(res);
        $.ajax({
            url:"http://127.0.0.1:3000/logout",
            data:{},
            type:"get",
            dataType:"json"//因为返回json字符串，所以希望自动转为对象
        }).then(function(res){
            console.log(res)
            //$(".login2").css({"display":"block"})
        })
    })

    $.ajax({
        url:"http://127.0.0.1:3000/index",
        type:"get",
        dataType:"json"
    }).then(function(products) {
    console.log(products);
        setTimeout(function () {
            new Vue({
                el: "#main",
                data: {
                    products: products/*[
                     { title, href, pic, details, price},
                     { title, href, pic, details, price},
                     { title, href, pic, details, price},
                     { title, href, pic, details, price},
                     { title, href, pic, details, price},
                     { title, href, pic, details, price},
                     ]*/
                }
            })
        }, 100)
    })


})
