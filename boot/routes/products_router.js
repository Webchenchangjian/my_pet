const express=require("express");
const router=express.Router();
const pool=require("../pool");
//http://localhost:3000/products
router.get("/",(req,res)=>{
  //var  cls = req.query.cls
  //var title=req.query.title
var pno=req.query.pno;
var cl=req.query.cl;
if(pno===undefined) pno=0;
if(cl>=10){
var sql="SELECT * FROM `maomi_product_1_product` WHERE kind LIKE '%布偶%'"
pool.query(sql,(err,result)=>{
  //console.log(result);
  if(err) console.log(err);
var count=result.length;
var pageCount=Math.ceil(count/24);
var products=result.slice(pno*24,pno*24+24);
var output={pno,count,pageCount,products}
res.send(output);
  })
//var sql="select * ,(select md from maomi_laptop_pic) as md from maomi_laptop WHERE price LIKE '%��ż%'"
//pool.query(sql,[],(err,result)=>{
//  if(err) console.log(err);
//var count=result.length;
//var pageCount=Math.ceil(count/5)
//var products=result.slice(pno*5,pno*5+5)
////0
////9
////18
//var output={pno,count,pageCount,products}
//res.send(output);
//})
}else if(cl>=20){
  var sql="SELECT * FROM `maomi_product_1_product` WHERE kind LIKE '%加菲%'"
  pool.query(sql,(err,result)=>{
    //console.log(result);
    if(err) console.log(err);
  var count=result.length;
  var pageCount=Math.ceil(count/24);
  var products=result.slice(pno*24,pno*24+24);
  var output={pno,count,pageCount,products}
  res.send(output);
})
}

})

module.exports=router;