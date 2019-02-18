const express=require("express");
const router=express.Router();
const pool=require("../pool");

//用户登录
router.get("/",(req,res)=>{
    //1:获取登录参数
    //var uid   = parseInt(req.query.uid);
    var name=req.query.uname;
    var pwd=req.query.upwd;
//3:创建sql
    var sql ="SELECT count(uid) as c,uid";
    sql +=" FROM maomi_user";
    sql +=" WHERE uname = ? AND upwd = ?";
    pool.query(sql,[name,pwd],(err,result)=>{
    if(err) throw err;
    var c = result[0].c;
    //console.log(req.session.uid)
    if(c == 1){
    req.session.uid = name;
        //console.log(result[0].c);
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