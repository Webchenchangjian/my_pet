const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
  var list = req.query.s1;
  console.log(list);
  var sql = "INSERT INTO `ueditor`(`list`) VALUES (?)";
    pool.query(sql,[list],(err,result)=>{
    if(err)throw err;
    console.log(result);
    if(result.affectedRows>0){
        res.send({code:1,msg:"插入成功"})
    }else{
        res.send({code:-1,msg:"插入失败"});
    }
    })
});



module.exports=router;