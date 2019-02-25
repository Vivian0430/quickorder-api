'use strict'

const express = require('express')

let route = express.Router()

const apiCtrl = require('../controllers/apiController.js')


route.get('/api/getlunbo', apiCtrl.getlunbo)


route.get('/api/getpizzalist', apiCtrl.getpizzalist)

route.get('/api/geticelist', apiCtrl.geticelist)

route.get('/api/getdetail/:id', apiCtrl.getdetail)


route.get('/api/getfood/:cateid', apiCtrl.getfood)
route.get('/api/getmainfood/:cateid', apiCtrl.getmainfood)
route.get('/api/getallfood/:cateid', apiCtrl.getallfood)

route.get('/api/getcategory', apiCtrl.getcategory)
route.get('/api/getmaincategory',apiCtrl.getmaincategory)
route.get('/api/getallcategory',apiCtrl.getallcategory)


route.get('/api/getcomments/:artid', apiCtrl.getcomments)
route.post('/api/postcomment/:artid', apiCtrl.postcomment)

route.get('/api/getgoods', apiCtrl.getgoods)
route.get('/api/getdrinks', apiCtrl.getdrinks)
route.get('/api/goods/getcartlist/:ids', apiCtrl.getcartlist)

route.post('/api/edituserinfo/:uname', apiCtrl.edituserinfo)
/*route.post('/api/addcart', apiCtrl.addcart)*/


route.get('/api/getuserdetail/:name', apiCtrl.getuserdetail)
route.post('/api/login',apiCtrl.getusername)
route.post('/api/register',apiCtrl.register)
route.post('/api/changepwd',apiCtrl.changepwd)

route.post('/api/post',(req,res)=>{
	var obj = {message:'post 请求 ok'};
	res.end(JSON.stringify(obj));

});

route.all('/api/jsonp',(req,res)=>{

	var callbackFn =  req.query.callback;

	var obj = {message:'jsonp 请求 ok'};
	var jsonStr = JSON.stringify(obj);


	res.end(`${callbackFn}('${jsonStr}')`);

});

module.exports = route

