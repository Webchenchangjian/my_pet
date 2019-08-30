//使用express构建web服务器 --11:25
const express = require('express');
const bodyParser = require('body-parser');
//引入cors
const cors=require("cors");
/*引入路由模块*/
const index=require("./routes/index_router");
const details=require("./routes/details_router");
const products=require("./routes/products_router");
const register=require("./routes/register");
const login=require("./routes/login");
const existsName=require("./routes/existsName");
const session1=require("./routes/session");
// 百度编辑器
const ueditor= require('ueditor');
const routes=require('./routes/index');
const list=require('./routes/list')
const path=require('path');
var app = express();
var server = app.listen(3000);
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
// 获取验证码
const svgCaptcha = require('svg-captcha');
// 生成二维码
const qr_image=require("qr-image");
// 将页面转化为pdf格式
var phantom = require('phantom');
// 使用cookie
const cookieParase = require('cookie-parser');
app.use(cookieParase());


//3.加载第三方模块express-session
// const session = require("express-session");
// //4:对模块配置
// app.use(session({
//     secret:"128位随机字符串",   //安全令牌
//     resave:false,              //请求保存
//     saveUninitialized:true,    //初始化
//     cookie:{                   //sessionid保存时
//         maxAge:1000*60*60*24     //间1天 cookie
//     }
// }));

//托管静态资源到maomi目录下
app.use(express.static('maomi'));
app.use(cors({
    origin:"http://127.0.0.1:5500"
}))
// 百度编辑器
// 设置静态目录
app.use(express.static(path.join(__dirname,'public')));

app.use("/libs/ueditor/ue", ueditor(path.join(__dirname, 'public'), function (req, res, next) {
    //客户端上传文件设置
    var imgDir = '/images/'
    var ActionType = req.query.action;
    if (ActionType === 'uploadimage' || ActionType === 'uploadfile' || ActionType === 'uploadvideo') {
        var file_url = imgDir;//默认图片上传地址
        /*其他上传格式的地址*/
        if (ActionType === 'uploadfile') {
            file_url = '/file/'; //附件
        }
        if (ActionType === 'uploadvideo') {
            file_url = '/video/'; //视频
        }
        res.ue_up(file_url); //你只要输入要保存的地址 。保存操作交给ueditor来做
        res.setHeader('Content-Type', 'text/html');
    }
    //  客户端发起图片列表请求
    else if (req.query.action === 'listimage') {
        var dir_url = imgDir;
        res.ue_list(dir_url); // 客户端会列出 dir_url 目录下的所有图片
    }
    // 客户端发起其它请求
    else {
        console.log('config.json')
        res.setHeader('Content-Type', 'application/json');
        res.redirect('/libs/ueditor/nodejs/config.json');
    }
}));
// 获取验证码
// 获取验证码
app.use('/api/getCaptcha', function(req, res, next) {
    var captcha = svgCaptcha.create({ 
            // 翻转颜色 
            inverse: false, 
            // 字体大小 
            fontSize: 36, 
            // 噪声线条数 
            noise: 2, 
            // 宽度 
            width: 80, 
            // 高度 
            height: 30, 
           }); 
           // 保存到session,忽略大小写 
           req.session = captcha.text.toLowerCase(); 
           console.log(req.session); //0xtg 生成的验证码
           //保存到cookie 方便前端调用验证
           res.cookie('captcha', req.session); 
           res.setHeader('Content-Type', 'image/svg+xml');
           res.write(String(captcha.data));
           res.end();
   })
// 生成二维码图片
app.get("/qrcode/txt", async (req, res, next) => {
    const temp_qrcode = qr_image.image(req.query.text);
    res.type("png");
    temp_qrcode.pipe(res);
});
// 将页面转化为pdf格式
phantom.create().then(function(ph) {
    ph.createPage().then(function(page) {
        page.open("http://baidu.com").then(function(status) {
            page.property('viewportSize',{width: 10000, height: 500});
            page.render('./baidu.pdf').then(function(){
                console.log('Page rendered');
                ph.exit();
            });
        });
    });
});
// 退出登录
app.use('/logout',function(req,res,next){
    res.clearCookie('user');
    if(req.cookies.user !== null){
        res.send({code:-1,msg:'删除失败'});
      }else{
        res.send({code:1,msg:'删除成功'});
      }
})
/*使用路由器来管理路由*/
app.use("/index",index);
app.use("/details",details);
app.use("/products",products);
app.use("/register",register);
app.use("/login",login);
app.use("/existsName",existsName);
app.use("/session1",session1);
app.use('/ueditor', routes);
app.use('/list',list)
