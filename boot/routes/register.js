const express=require("express");
const router=express.Router();
const pool=require("../pool");


//用户注册
router.get("/",(req,res)=>{
    //1：参数 name,pwd
    var uname = req.query.uname;
    var upwd = req.query.upwd;
    var email=req.query.email;
    var phone=req.query.phone;
    //1.1:验证
    var reg = /^[a-z0-9_]{5,12}$/;
    if(!reg.test(uname)){
        res.send({code:-1,msg:"用户名格式不正确"});
        return;
    }
    var sql = "INSERT INTO `maomi_user`(`uname`, `upwd`, `email`, `phone`) VALUES (?,?,?,?)";
    pool.query(sql,[uname,upwd,email,phone],(err,result)=>{
        if(err)throw err;
    if(result.affectedRows>0){
        res.send({code:1,msg:"注册成功"})
    }else{
        res.send({code:-1,msg:"注册失败"});
    }
    })
//    var sql ="SELECT count(uid) as c FROM maomi_user WHERE uname = ?";
//    pool.query(sql,[name],(err,result)=>{
//    if(err) throw err;
//    //[{c:0}]
//    if(result[0].c >0){
//    res.send({code:-1,msg:"用户已存在，请更换"})
//}else{
//    res.send({code:1,msg:"可以使用"});
//}
//})

    });

module.exports=router;