<template>
    <div>
        <div>
            <button @click="switchLanguage">中英文切换</button>
        </div>
        <div>{{$t("m.global.view")}}</div>
        <div>{{$t("m.global.configList")}}</div>
        <!-- 
        <router-link to="iconfontVue" tag="li">阿里巴巴图标库使用</router-link>  渲染成li标签 
        <router-link :to="{name:'iconfontVue'}">阿里巴巴图标库使用</router-link> 命名式导航 这里必须用:to
        -->

        <p class="items"><router-link to="iconfontVue">阿里巴巴图标库使用</router-link></p>
        <p class="items"><router-link to="echartsVue">echarts图表集合</router-link></p>
        <p class="items"><router-link to="i18Vue">i18--中英文切换</router-link></p>
        <p class="items"><router-link to="elementuiVue">elementui基本示例</router-link></p>
        <p class="items"><router-link to="todolist">官网todolist</router-link></p>

        <p class="items"><router-link to="biography/参数一/parm2/参数三">地址栏传参</router-link></p>
        <p class="items"><router-link to="bio">嵌套子路由</router-link></p>
        <p class="items"><router-link :to="{name:'biomore'}">单页面多路由区域操作</router-link></p>

        <p class="items"><router-link to="store">store</router-link></p>
        <p class="items"><router-link to="iframeLoad">iframe加载完毕的确定事件</router-link></p>
        
        <br />
        <input v-model="quotations" style="border:1px solid #000;"><span>需要在vue/server文件夹下开启npm start</span>
        <br />
        <button @click="mysqlInsert">增加一条数据</button>
        <button @click="mysqlInsertTwo">增加两条数据</button>
        <button @click="mysqlDelete">删除一条数据</button>
        <button @click="mysqlDeleteTwo">删除两条数据</button>

        <button @click="mysqlUpdate">修改一条数据</button>
        <button @click="mysqlUpdateTwo">修改两条数据</button>
        <button @click="mysqlSelect">查询一条数据</button>
        <button @click="mysqlSelectTwo">查询两条数据</button>

        <br />
        <ul>
            <li v-for="item in imgList">
                <img :src="item.address">
            </li> 
        </ul>

    </div>
</template>

<script>
export default {
    name: 'navigator',
    data () {
        return {
            message:this.$t('m.global.configList'),
            quotations:"",
            imgList:[],//图片集合
        }
    },
    methods:{
        switchLanguage(){
            if( this.$i18n.locale = 'zh-CN' ){
                this.$i18n.locale = 'en-US';
            }else{
                this.$i18n.locale = 'zh-CN';
            }
        },
        mysqlInsert(){//增加一条数据
            var uuid = this.common.getuuid();
            var time = this.common.dateFtt(new Date(),"yyyy-MM-dd hh:mm:ss");
            this.axios.get("api/mysqlInsert",{
                params:{word:this.quotations,type:0,uuid:uuid,time:time}
            }).then(res=>{
                console.log(this.quotations+"插入到数据库中的id是："+res.data.insertId);
                this.quotations = "";
            })
        },
        mysqlInsertTwo(){//增加两条数据
            var parameterArr = [];
            parameterArr.push({word:'测试第一条数据',type:0,uuid:this.common.getuuid(),
                time:this.common.dateFtt(new Date(),"yyyy-MM-dd hh:mm:ss")
            });
            parameterArr.push({word:'测试第二条数据',type:0,uuid:this.common.getuuid(),
                time:this.common.dateFtt(new Date(),"yyyy-MM-dd hh:mm:ss")
            });
            parameterArr.push({word:'测试第三条数据',type:0,uuid:this.common.getuuid(),
                time:this.common.dateFtt(new Date(),"yyyy-MM-dd hh:mm:ss")
            });
            var newLIstanbul = JSON.stringify(parameterArr);
            console.log(newLIstanbul);
            this.axios.get("api/mysqlInsertTwo",{
                params:{
                    list:newLIstanbul
                }
            }).then(res=>{
                console.log(res);
                console.log(res.data);
            })
        },
        mysqlDelete(){//删除一条数据
            console.log("删除一条数据");
            this.axios.get("api/mysqlDelete").then(res=>{
                console.log(res.data);
            })
        },
        mysqlDeleteTwo(){//删除两条数据
            console.log("删除两条数据");
            this.axios.get("api/mysqlDeleteTwo").then(res=>{
                console.log(res.data);
            })
        },
        mysqlUpdate(){//修改一条数据
            console.log("修改一条数据");
            this.axios.get("api/mysqlUpdate").then(res=>{
                console.log(res.data);
            })
        },
        mysqlUpdateTwo(){//修改两条数据
            console.log("修改两条数据");
            this.axios.get("api/mysqlUpdateTwo").then(res=>{
                console.log(res.data);
            })
        },
        mysqlSelect(){//查询一条数据
            console.log("查询一条数据");
            this.axios.get("api/mysqlSelect").then(res=>{
                console.log(res.data);
            })
        },
        mysqlSelectTwo(){//查询两条数据
            console.log("查询两条数据");
            this.axios.get("api/mysqlSelectTwo").then(res=>{
                console.log(res.data);
                console.log(JSON.stringify(res.data));
            })
        }
    },
    mounted(){
        // this.axios.get("api/list").then(res=>{
        //     console.log(res.data);
        // })
        this.axios.get("api/carouselImgList").then(res=>{
            console.log(142,JSON.stringify(res.data));
            if(res.data.length){
                this.imgList = res.data
            }
        })
    }
}
</script>


<style lang="stylus" scoped>
.items
    height:20px
    line-height:20px
    font-size:16px
    padding-left:10px

</style>
