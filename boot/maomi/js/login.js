$(function(){
    var name=this.uname;
    var pwd=this.upwd;
    $(".btn").click(function(){
        //alert("teng");
        var name=$("#reg div:nth-child(1) input")[0].value
        var pwd=$("#reg div:nth-child(2) input")[0].value
        var reg = /^[a-z0-9_]{5,12}$/i;
        if(!reg.test(name)){
            alert("用户名不正确");
            return;
        }
        if(!reg.test(pwd)){
            alert("密码不正确");
            return;
        }
        $.ajax({
            url:"http://127.0.0.1:3000/login?uname="+name+"&upwd="+pwd,
            data:{name,pwd},
            //console.log(data.name);
            type:"get",
            dataType:"json"
        }).then(result=>{
            //console.log(result.data);
            //alert(result.msg);
            if(result.code == 1){
            alert("登录成功")
        window.location.href="/index.html"

        }else
        {
            alert("用户名或密码不匹配")
        }
        //session["name"]='name';
        //console.log("name");
    })

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



























/*
$(":text").blur(function(){
    vali($(this),3,12,"用户名必须介于3~12之间！")
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
    vali($(this),6,8,"密码必须介于6~8之间！")
})

$("#yz").blur(function(){
    vali($(this),1,4,"验证码不能为空",$(this),4,10,"验证码不正确")
})

$(".denglu").button(function(e){
    if(!vali($(":text"),3,9,"用户名必须介于3~9之间！"))
        e.preventDefault();
    else if(!vali($(":password"),6,8,"密码必须介于6~8之间！"))
        e.preventDefault();
})
*/