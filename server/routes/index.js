var express = require('express');
var router = express.Router();
var connection  = require('../db/sql.js');

/*
app.get('/user/:id', function (req, res, next) {
    console.log('ID:', req.params.id)
    next()
},function (req, res, next) {
    res.send('User Info')
})
console.log("req.query",req.query);
console.log("req.url",req.url);
console.log("req.path",req.path);

删
delete from yulu where idex = '1'
delete from yulu where idex in ('1','2')  等于
delete from yulu where idex not in ('1','2') 不等于1和2
delete from yulu where idex <> '1'  不等于1
delete from yulu where idex = '1' or idex = '2' 等于1或2
delete from yulu where (idex = '1' or idex = '2') and word='1'  
改
update yulu set word='' where word=''
update yulu set word='修改后第三条数据',type='1' where uuid='3'
update yulu set word='修改后第三条数据',type='1' where uuid in ('4','5')

查
select uuid from yulu where id = '1'
select uuid,word from yulu where id = '1'
select uuid,word from yulu order by id desc  降序
select uuid,word from yulu order by id asc   升序
'select cast(time as signed) as date from  yulu' [{date: 20191117232544},{date: 20191117232545}]
select uuid,word from yulu order by cast(word as signed) asc  [{"uuid":"","word":""},{"uuid":"","word":""}]
*/

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/list', function(req, res, next) {
    connection.query('select * from yulu', function (error,results,fields) {
        if (error) throw error;
        //console.log(results);
        res.json(results)
    });
});
//增加一条数据
router.get('/mysqlInsert', function(req, res, next) {
    var newval = '"'+req.query.word+'",'+req.query.type+',"'+req.query.time+'","'+req.query.uuid+'"';
    //INSERT INTO yulu (word, type,time,uuid) VALUE ('测试',0,'2019-11-03 18:32:29','2cdf84b4a457970e1572777149500')
    connection.query('INSERT INTO yulu (word,type,time,uuid) value ('+newval+')', function (error,results,fields) {
        if (error) throw error;
        res.json(results);
    });
});
//增加两条数据
router.get('/mysqlInsertTwo', function(req, res, next) {
    var list = JSON.parse(req.query.list);
    var len = list.length;
    if(len){
        var str = '';
        for (var i = 0; i < len; i++) {
            if(i == len-1){
                str+= '("'+list[i].word+'",'+list[i].type+',"'+list[i].time+'","'+list[i].uuid+'")';
            }else{
                str+= '("'+list[i].word+'",'+list[i].type+',"'+list[i].time+'","'+list[i].uuid+'"),';
            }
        };
        connection.query('INSERT INTO yulu (word, type,time,uuid) values '+str, function (error,results,fields) {
            if (error) throw error;
            res.json({})
        });
    }else{
        var emptyMsg = {
            success:false,
            msg:"传入的数据有误或者没有传入正确的格式"
        };
        res.json(emptyMsg);
    }
});
//删除一条数据
router.get('/mysqlDelete', function(req, res, next) {
    var index = 9;
    connection.query("delete from yulu where id = '"+ index +"'", function (error,results,fields) {
        if (error) throw error;
        //console.log(results);
        res.json(results)
    });
});
//删除两条数据  delete from yulu where word='111'
router.get('/mysqlDeleteTwo', function(req, res, next) {
    connection.query("delete from yulu where id in ('1','2')", function (error,results,fields) {
        if (error) throw error;
        res.json(results)
    });
});
//修改一条数据
router.get('/mysqlUpdate', function(req, res, next) {
    connection.query("update yulu set word='修改后第三条数据',type='1' where uuid='3'", function (error,results,fields) {
        if (error) throw error;
        //console.log(results);
        res.json(results)
    });
});
//修改两条数据
router.get('/mysqlUpdateTwo', function(req, res, next) {
    connection.query("update yulu set word='修改后第三条数据',type='1' where uuid in ('4','5')", function (error,results,fields) {
        if (error) throw error;
        //console.log(results);
        res.json(results)
    });
});
//查询一条数据
router.get('/mysqlSelect', function(req, res, next){
    connection.query("select uuid,word from yulu where id = '3'", function (error,results,fields) {
        if (error) throw error;
        //console.log(results);
        res.json(results)
    });
});
//查询多条数据
router.get('/mysqlSelectTwo', function(req, res, next) {
    connection.query('select uuid,word from yulu order by cast(word as signed) asc', function (error,results,fields) {
    //connection.query('select cast(time as signed) as date from  yulu', function (error,results,fields) {
        if (error) throw error;
        //console.log(results);
        res.json(results)
    });
});

//查询多条数据
router.get('/carouselImgList', function(req, res, next) {
    connection.query("select * from img where source = 'jd' order by id asc", function (error,results,fields) {
        if (error) throw error;
        res.json(results)
    });
});

module.exports = router;


