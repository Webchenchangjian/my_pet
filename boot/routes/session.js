const express=require("express");
const router=express.Router();
const pool=require("../pool");
router.get("/",(req,res)=>{
    if(req.cookies.user !== null){
        req.user=req.cookies.user;
        res.send(req.user);
        // console.log(22);
      }
	// console.log(req.session.uid)
    // var uid = req.query.uid
    // console.log(uid)
// if(!req.session.uid){
//     var name=req.session.uid
//     res.send(name)
//     console.log(1)
// }else if(uid == 1){
//     req.session.uid = ""
//     res.send(name)
// }else{
//     var name=req.session.uid
//     res.send({name})
//     console.log(3)
// }
})
module.exports=router;