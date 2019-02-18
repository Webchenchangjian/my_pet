const express=require("express");
const router=express.Router();
const pool=require("../pool");
const login = require("./login.js");
router.get("/",(req,res)=>{
	console.log(req.session.uid)
    var uid = req.query.uid
    console.log(uid)
if(!req.session.uid){
    var name=req.session.uid
    res.send(name)
    console.log(1)
}else if(uid == 1){
    req.session.uid = ""
    res.send(name)
}else{
    var name=req.session.uid
    res.send({name})
    console.log(3)
}
})
module.exports=router;