const express=require("express");
const router=express.Router();
const pool=require("../pool");

//用户登录
router.get("/",(req,res)=>{
    //1:获取登录参数
    // var uid   = parseInt(req.query.uid);
    // console.log(uid);
    var name=req.query.uname;
    console.log(name);
    var pwd=req.query.upwd;
    console.log(pwd)
//3:创建sql
    var sql ="SELECT count(uid) as c,uid";
    sql +=" FROM maomi_user";
    sql +=" WHERE uname = ? AND upwd = ?";
    pool.query(sql,[name,pwd],(err,result)=>{
    if(err) throw err;
    console.log(result);
    var c = result[0].c;
    console.log(c);
    if(c == 1){
    var k1=res.cookie("user", {username: name}, {httpOnly: true});
    console.log(k1);
    res.send({code:1,msg:"登录成功"});
    }else{
    res.send({code:-1,msg:"登录失败，请检查用户名和密码"})
        }
//console.log(1230);
//if(result[0].c==1){
//    session=name;
//    console.log(session);
//}
    });
});

module.exports=router;