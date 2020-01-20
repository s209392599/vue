<template>
    <div>
        <div class="home-page">
            <router-link to="/">回首页</router-link>
        </div>
        <p>地址栏传参</p>
        <p>地址栏传的参数一：{{ $route.params.parm1 }}</p>
        <p>地址栏传的参数三：{{ $route.params.parm3 }}地址栏传的参数三：{{ $route.params.parm3 }}</p>
        <button @click="getParms">获取地址栏传参</button>
        <br />
        <p>下面是嵌套路由页面</p>
        <p class="items"><router-link to="/biography1/bioChild">嵌套子路由</router-link></p>
    </div>
</template>

<script>

export default {
    name: 'biography',
    data() {
        return {
            msg: "ceshi"
        }
    },
    methods: {
        getParms(){
            console.log("地址栏传参是：",this.$route.params);
        }
    }
}
</script>

<style lang="stylus">
.home-page
    font-size 30px
</style>
