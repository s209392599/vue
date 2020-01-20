//生成UUID
function S4(){
    return (((1+Math.random())*0x10000)|0).toString(16).substring(1);
}

export default {
    getuuid:function(){//uuid的生成方法
       return (S4()+S4()+S4()+S4()+new Date().getTime()); 
    },
    dateFtt:function(date,fmt) {//转换时间 dateFtt(1565059668200,"yyyy-MM-dd hh:mm:ss") dateFtt(1565059668200,"yyyy-MM-dd")
        if(date != null && date != "" && date != undefined){
            if(typeof date == "string"){
                date = date.replace(/-/g,"/");
            }
            var date = new Date(date);
            var o = {
                "M+" : date.getMonth()+1,"d+" : date.getDate(),"h+" : date.getHours(),
                "m+" : date.getMinutes(),"s+" : date.getSeconds(),"q+" : Math.floor((date.getMonth()+3)/3), //季度
                "S" : date.getMilliseconds() //毫秒
            };
            if(o.S < 100){if(o.S < 10){o.S = "00"+o.S;}else{o.S = "0"+o.S;}}
            if(/(y+)/.test(fmt))
                fmt=fmt.replace(RegExp.$1, (date.getFullYear()+"").substr(4 - RegExp.$1.length));
            for(var k in o)
                if(new RegExp("("+ k +")").test(fmt))
                fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
        }else{fmt = "";}
        return fmt;
    }
}