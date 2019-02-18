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
var app = express();
var server = app.listen(3000);
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));


//3.加载第三方模块express-session
const session = require("express-session");
//4:对模块配置
app.use(session({
    secret:"128位随机字符串",   //安全令牌
    resave:false,              //请求保存
    saveUninitialized:true,    //初始化
    cookie:{                   //sessionid保存时
        maxAge:1000*60*60*24     //间1天 cookie
    }
}));

//托管静态资源到maomi目录下
app.use(express.static('maomi'));
app.use(cors({
    origin:"http://127.0.0.1:5500"
}))
/*使用路由器来管理路由*/
app.use("/index",index);
app.use("/details",details);
app.use("/products",products);
app.use("/register",register);
app.use("/login",login);
app.use("/existsName",existsName);
app.use("/session1",session1);
