$(function(){
    var name=this.uname;
    var pwd=this.upwd;
    var p2=this.pwd2;
    var phone=this.phone;
    var email=this.email;
    var name1;
    //var isSumit=this.isSumit
    $("#login").blur(function(){
        var name=$("#reg div:nth-child(1) input")[0].value
        $.ajax({
            url:"http://127.0.0.1:3000/existsName?uname="+name,
            data:{name},
            type:"get",
            async:false,
            //async:false,
            dataType:"json"
        }).then(result=>{
              name1 = result.code
            //console.log(result.code)
            if(result.code<0){
            alert("该用户名已存在");
            return false; //result.code=-1;
        }
    })
    //console.log(name1)
})
$(".btn").click(function(e){
    e.preventDefault();
    var captcha = document.cookie.split('=')[1]
    console.log(captcha);
    var name=$("#reg div:nth-child(1) input")[0].value
    var pwd=$("#reg div:nth-child(2) input")[0].value
    var p2=$("#reg div:nth-child(3) input")[0].value
    var phone=$("#reg div:nth-child(4) input")[0].value
    var email=$("#reg div:nth-child(5) input")[0].value
    var yzm=$("#yz").val();
    console.log(yzm);
    var reg=/^[a-z0-9]{5,12}$/i
    var reg1=/^1[34578]\d{9}$/i
    var reg2=/^[a-z0-9_.-]+@[a-z0-9-]+(\.[a-z0-9-]+)*\.[a-z0-9]{2,6}$/i
    if(!reg.test(name)){
        alert("用户名格式不正确")
        return;
    }
    if(!reg.test(pwd)){
        alert("密码格式不正确");
        return;
    }
    if(pwd != p2){
        alert("两次密码不一致，请修改");
        return;
    }

    if(!reg1.test(phone)){
        alert("手机号格式不正确，请修改")
        return;
    }
    if(!reg2.test(email)){
        alert("邮箱格式不正确")
        return;
    }
    if(yzm != captcha){
        alert('验证码错误')
        return;
    }
    $.ajax({
        url:"http://127.0.0.1:3000/register?uname="+name+"&upwd="+pwd,
        data:{name,pwd,phone,email,name1},
       //console.log(data.name);
        type:"get",
        dataType:"json"
    }).then(result=>{
        if(name1==-1){
        console.log(123);
        alert("用户名已存在，请修改")
        return false;
    }
        //console.log(result.data);
        //alert(result.msg);
    //if(result.code > 0){
    //    alert("欢迎使用!")
    //    this.isSumit = true;
    //}else{
    //    alert("该用户名己存在!")
    //    this.isSumit = false;
    //}
        //console.log($(this).exis);
        if(result.code == 1){
       alert("注册成功，请登录")
       location.href="/login.html"}else
    {
       alert("注册失败，请重试")
    }

    })
})

    //显示条框
    $(".click").click(function(){
        $(".heimu").css("display","block");
    })
    $(".agree").click(function(){
        $(".heimu").css("display","none");
    })
    $(":text").blur(function(){
        vali($(this),5,12,"用户名必须介于5~12之间！")
    })
    function vali($txt,minlen,maxlen,errMsg){
        var value=$txt.val();
        var $span=$txt.next();
        if(value.length>=minlen&&value.length<=maxlen){
            $span.html("")
            return true;
        }else{
            $span.html(`${errMsg}`);
            return false
        }
    }
    $(":password").blur(function(){
        vali($(this),5,12,"密码必须介于5~12之间！")
    })

})











