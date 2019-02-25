'use strict'

let successState = 0 // 表示成功
let fialState = 1 // 表示失败
let domain = 'http://www.youngonest.com:4000'


exports.getlunbo= (req, res) => {
 let resObj = {status: successState, message: [{
            url: 'http://www.baidu.com',
            img: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1549734531622&di=76972372cbdc86c130d7904f995153c4&imgtype=0&src=http%3A%2F%2Fwww.deyu.ln.cn%2Fimages%2Fomzc43dwnjzs4y3pnuxgg3q%2Fuploads%2Fpc%2Fplace2%2F2015-10-09%2F437add69-3920-4428-9f59-090b7cbe2ff3.jpg'
          }, {
            url: 'http://www.baidu.com',
            img: 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3276392354,4192216114&fm=26&gp=0.jpg'
          },{
            url: 'http://www.baidu.com',
            img: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1549735845429&di=f9d1d73dfe99c8137d446df912071323&imgtype=0&src=http%3A%2F%2Fpic.rmb.bdstatic.com%2F389156fbef530ce516eaec1bd5b0e51b.jpeg'
          },{
            url: 'http://www.baidu.com',
            img: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1549735713007&di=93f9113fe12b3dd8b2dc34958a09e811&imgtype=0&src=http%3A%2F%2Fabc.2008php.com%2F2013_Website_appreciate%2F2013-04-11%2F20130411233130.jpg'
          },{
            url: 'http://www.baidu.com',
            img: 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1074151642,3437690064&fm=26&gp=0.jpg'
          }]}

     res.end(JSON.stringify(resObj))

}


exports.getpizzalist = (req, res) => {

  let resObj = {status: successState, message: ''}

  let sql = " SELECT id,name,price,sale_count,concat('" + domain + "',img_url) as img_url FROM dt_food where img_url > '' and channel_id = 6 limit 0,10 "
  req.db.driver.execQuery(sql, (err, datas) => {
      if (err)    {
         resObj.status = fialState
         resObj.message = err.message
         res.end(JSON.stringify(resObj))
         return
      }

      resObj.message = datas
      res.end(JSON.stringify(resObj))
  })
}

exports.geticelist = (req, res) => {

  let resObj = {status: successState, message: ''}

  let sql = " SELECT id,name,price,sale_count,concat('" + domain + "',img_url) as img_url FROM dt_food where img_url > '' and channel_id = 7 limit 0,10 "
  req.db.driver.execQuery(sql, (err, datas) => {
      if (err)    {
         resObj.status = fialState
         resObj.message = err.message
         res.end(JSON.stringify(resObj))
         return
      }

      resObj.message = datas
      res.end(JSON.stringify(resObj))
  })
}

exports.getdetail = (req, res) => {

  let resObj = {status: successState, message: ''}

  let id = req.params.id

  let sql = "SELECT id,name,price,description,sale_count,concat('" + domain + "',img_url) as img_url FROM dt_food where img_url > '' and id= " + id 
  req.db.driver.execQuery(sql, (err, data) => {
      if (err)    {
         resObj.status = fialState
         resObj.message = err.message
         res.end(JSON.stringify(resObj))
         return
      }
      resObj.message = data
      res.end(JSON.stringify(resObj))
  })
}


exports.getgoods = (req, res) => {
   // 代表返回的数据结构
  let resObj = {status: successState, message: ''}
  let pageindex = req.query.pageindex
  if(!pageindex){
    pageindex =1;
  }
  let pagesize = 10
  let skipcount = (pageindex - 1) * pagesize

 
  let sql = `SELECT a.id,a.name,concat('${domain}',a.img_url) as img_url,b.sell_price,b.market_price,b.stock_quantity FROM dt_food as a,dt_attribute b where a.id = b.article_id and a.channel_id = 10 limit ${skipcount},${pagesize} `
  req.db.driver.execQuery(sql, (err, datas) => {
    if (err) {
      resObj.status = fialState
      resObj.message = err.message
      res.end(JSON.stringify(resObj))
      return
    }

    resObj.message = datas
    res.end(JSON.stringify(resObj))
  })
}

exports.getdrinks = (req, res) => {
   // 代表返回的数据结构
  let resObj = {status: successState, message: ''}
  let pageindex = req.query.pageindex
  if(!pageindex){
    pageindex =1;
  }
  let pagesize = 10
  let skipcount = (pageindex - 1) * pagesize

 
  let sql = `SELECT a.id,a.name,concat('${domain}',a.img_url) as img_url,b.sell_price,b.market_price,b.stock_quantity FROM dt_food as a,dt_attribute b where a.id = b.article_id and a.channel_id = 11 limit ${skipcount},${pagesize} `
  req.db.driver.execQuery(sql, (err, datas) => {
    if (err) {
      resObj.status = fialState
      resObj.message = err.message
      res.end(JSON.stringify(resObj))
      return
    }

    resObj.message = datas
    res.end(JSON.stringify(resObj))
  })
}

exports.getcartlist = (req, res) => {
   // 代表返回的数据结构
  let resObj = {status: successState, message: ''}
  let ids = req.params.ids
  let sql = `
  			  SELECT count(distinct tb1.id) as cou, tb1.* FROM (
				SELECT  da.id,da.name,da.price,alb.original_path
				  FROM dt_food da 
				  LEFT JOIN dt_attribute daa ON (da.id = daa.article_id)
				  LEFT JOIN dt_albums alb ON (da.id = alb.article_id)
				WHERE  da.id IN(${ids}) ) AS tb1 GROUP BY tb1.id
  `
  req.db.driver.execQuery(sql, (err, data) => {
      if (err)    {
         resObj.status = fialState
         resObj.message = err.message
         res.end(JSON.stringify(resObj))
         return
      }
      resObj.message = data
      res.end(JSON.stringify(resObj))
  })
}



exports.getuserdetail = (req,res)=>{
   let resObj = {status: successState, message: ''}

   let username = req.params.name

  let sql = ` select user_name,sex,birthday,hobby,mobile from dt_users where user_name= '${username}' `

  req.db.driver.execQuery(sql, (err, datas) => {
    if (err) {
      resObj.status = fialState
      resObj.message = err.message
      res.end(JSON.stringify(resObj))
      return
    }
    resObj.message = datas
    res.end(JSON.stringify(resObj))
  })
}

exports.getfood = (req, res) => {
   // 代表返回的数据结构
  let resObj = {status: successState, message: ''}

  let cateid = req.params.cateid - 0

  let sql = ' select id,name,img_url,description from dt_food where channel_id = 9 and category_id=' + cateid

  if (cateid <= 0) {
    sql = ' select * from dt_food where channel_id = 9 '
  }

  req.db.driver.execQuery(sql, (err, datas) => {
    if (err) {
      resObj.status = fialState
      resObj.message = err.message
      res.end(JSON.stringify(resObj))
      return
    }
    resObj.message = datas
    res.end(JSON.stringify(resObj))
  })
}

exports.getmainfood = (req, res) => {
   // 代表返回的数据结构
  let resObj = {status: successState, message: ''}

  let cateid = req.params.cateid - 0

  let sql = ' select id,name,img_url,description from dt_food where channel_id = 8 and category_id=' + cateid

  if (cateid <= 0) {
    sql = ' select * from dt_food where channel_id = 8 '
  }

  req.db.driver.execQuery(sql, (err, datas) => {
    if (err) {
      resObj.status = fialState
      resObj.message = err.message
      res.end(JSON.stringify(resObj))
      return
    }
    resObj.message = datas
    res.end(JSON.stringify(resObj))
  })
}

exports.getallfood = (req, res) => {
   // 代表返回的数据结构
  let resObj = {status: successState, message: ''}

  let cateid = req.params.cateid - 0
  let sql = ' select id,name,original_path,description,price from dt_food where channel_id=' + cateid

  if (cateid <= 0) {
    sql = ' select * from dt_food '
  }

  req.db.driver.execQuery(sql, (err, datas) => {
    if (err) {
      resObj.status = fialState
      resObj.message = err.message
      res.end(JSON.stringify(resObj))
      return
    }
    resObj.message = datas
    res.end(JSON.stringify(resObj))
  })
}

exports.getcategory = (req, res) => {
   // 代表返回的数据结构
  let resObj = {status: successState, message: ''}
  let sql = ' select title,id from quickorder.dt_category where channel_id = 9 '
  req.db.driver.execQuery(sql, (err, datas) => {
 
    if (err) {
      resObj.status = fialState
      resObj.message = err.message
      res.end(JSON.stringify(resObj))
      return
    }

    resObj.message = datas
    res.end(JSON.stringify(resObj))
  })
}

exports.getmaincategory = (req, res) => {
   // 代表返回的数据结构
  let resObj = {status: successState, message: ''}
  let sql = ' select title,id from quickorder.dt_category where channel_id = 8 '
  req.db.driver.execQuery(sql, (err, datas) => {
 
    if (err) {
      resObj.status = fialState
      resObj.message = err.message
      res.end(JSON.stringify(resObj))
      return
    }

    resObj.message = datas
    res.end(JSON.stringify(resObj))
  })
}

exports.getallcategory = (req, res) => {
   // 代表返回的数据结构
  let resObj = {status: successState, message: ''}
  let sql = ' select title,id from quickorder.dt_channel '
  req.db.driver.execQuery(sql, (err, datas) => {
 
    if (err) {
      resObj.status = fialState
      resObj.message = err.message
      res.end(JSON.stringify(resObj))
      return
    }

    resObj.message = datas
    res.end(JSON.stringify(resObj))
  })
}



exports.edituserinfo = (req,res) => {
  let resObj = {status: successState, message: ''}
  let uname = req.params.uname
  req.on('data',(chunk)=>{
    let editTxt = chunk.toString();
    const qs=   require('querystring');
    let editObj = qs.parse(editTxt);

  let sql = `UPDATE dt_users SET user_name = '${editObj.username}',sex = '${editObj.sex}',birthday = '${editObj.birthday}',mobile='${editObj.mobile}',hobby = '${editObj.hobby}' WHERE user_name = '${uname}' ` 
  req.db.driver.execQuery(sql, (err, datas) => {
 
    if (err) {
      resObj.status = fialState
      resObj.message = err.message
      res.end(JSON.stringify(resObj))
      return
    }

    resObj.message = datas
    res.end(JSON.stringify(resObj))
  })
})
}

exports.getcomments = (req, res) => {
   // 代表返回的数据结构
  let resObj = {status: successState, message: ''}

  let artid = req.params.artid
  let pageindex = req.query.pageindex
  let pagesize = 10;
  let skipCount = (pageindex - 1) * pagesize

  let sql = `select user_name,add_time,content from dt_comment where article_id = ${artid} order by add_time desc limit ${skipCount},${pagesize}`
  req.db.driver.execQuery(sql, (err, data) => {
      if (err)    {
         resObj.status = fialState
         resObj.message = err.message
         res.end(JSON.stringify(resObj))
         return
      }

      resObj.message = data
      res.end(JSON.stringify(resObj))
  })
}

//插入
exports.postcomment = (req, res) => {

  let resObj = {status: successState, message: ''}

  let artid = req.params.artid
  req.on('data',(chunk)=>{
    let commentTxt = chunk.toString();
    const qs=   require('querystring');
    let commentObj = qs.parse(commentTxt);

      let sql = `insert into  dt_comment(channel_id,article_id,parent_id,user_id,user_name,user_ip,
                                content,is_lock,add_time,is_reply,reply_content,reply_time)
                  values (7,${artid},0,0,'匿名用户','127.0.0.1','${commentObj.content}',0,NOW(),0,'',NOW())`
      req.db.driver.execQuery(sql, (err, data) => {
          if (err)    {
             resObj.status = fialState
             resObj.message = err.message
             res.end(JSON.stringify(resObj))
             return
          }
          resObj.message = '评论提交成功'
          res.end(JSON.stringify(resObj))
      })


  })
}

exports.register = (req,res) => {
  let resObj = {status: successState, message: ''}
  req.on('data',(chunk)=>{
    let registerTxt = chunk.toString();
    const qs= require('querystring');
    let registerObj = qs.parse(registerTxt);
  
  let sql = `insert into  dt_users(user_name,password)
                  values ('${registerObj.name}','${registerObj.password}') ` 
  req.db.driver.execQuery(sql, (err, datas) => {
 
    if (err) {
      resObj.status = fialState
      resObj.message = err.message
      res.end(JSON.stringify(resObj))
      return
    }

    resObj.message = datas
    res.end(JSON.stringify(resObj))
  })
  })
}

exports.getusername = (req,res) => {
  let resObj = {status: successState, message: ''}
   req.on('data',(chunk)=>{
    let loginTxt = chunk.toString();
    const qs= require('querystring');
    let loginObj = qs.parse(loginTxt);
  let sql = ` select user_name,password from dt_users where user_name = '${loginObj.username}'` 
  req.db.driver.execQuery(sql, (err, datas) => {
 
    if (err) {
      resObj.status = fialState
      resObj.message = err.message
      res.end(JSON.stringify(resObj))
      return
    }

    resObj.message = datas
    res.end(JSON.stringify(resObj))
  })
  })
}


/*exports.addcart = (req,res) => {
  let resObj = {status: successState, message: ''}
 req.on('data',(chunk)=>{
    let cartTxt = chunk.toString();
    const qs= require('querystring');
    let cartObj = qs.parse(cartTxt);
  let sql = `insert into  dt_cart(id,count,price,selected)
                  values (${cartObj.id},${cartObj.count},${cartObj.price},'${cartObj.password}')` 
  req.db.driver.execQuery(sql, (err, datas) => {
 
    if (err) {
      resObj.status = fialState
      resObj.message = err.message
      res.end(JSON.stringify(resObj))
      return
    }

    resObj.message = datas
    res.end(JSON.stringify(resObj))
  })
  })
}
*/
exports.changepwd = (req,res) => {
  let resObj = {status: successState, message: ''}
 req.on('data',(chunk)=>{
    let changeTxt = chunk.toString();
    const qs= require('querystring');
    let changeObj = qs.parse(changeTxt);
  let sql = `UPDATE dt_users SET password = '${changeObj.password}' WHERE user_name = '${changeObj.name}'` 
  req.db.driver.execQuery(sql, (err, datas) => {
 
    if (err) {
      resObj.status = fialState
      resObj.message = err.message
      res.end(JSON.stringify(resObj))
      return
    }

    resObj.message = datas
    res.end(JSON.stringify(resObj))
  })
  })
}
