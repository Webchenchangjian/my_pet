const express=require("express");
const router=express.Router();
const pool=require("../pool");

//用户名验证
router.get("/",(req,res)=>{
    //1:参数
    //var c=parseInt(req.query.c);
    //var c="";
    var name=req.query.uname;
//2:sql
var sql ="SELECT count(uid) as c FROM maomi_user WHERE uname = ?";
pool.query(sql,[name],(err,result)=>{
    if(err) throw err;
//[{c:0}]
if(result[0].c >0){
    res.send({code:-1,msg:"用户已存在，请更换"})
}else{
    res.send({code:1,msg:"可以使用"});
}
})
//3:json
});



module.exports=router;
