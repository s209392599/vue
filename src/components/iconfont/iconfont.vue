<template>
    <div>
        <div class="home-page">
            <router-link to="/">回首页</router-link>
        </div>
        <div class="iconfont-con">
            <i class="iconfont icon-yuncai"></i>
            <i class="iconfont icon-fangfa"></i>
            <i class="iconfont icon-xiezuo"></i>
            <i class="iconfont icon-kongzhi"></i>
            <i class="iconfont icon-kanjian"></i>
            <i class="iconfont icon-goutong"></i>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'iconfontVue'
    }
</script>

<style lang="stylus" scoped>
.home-page
    font-size 30px
.iconfont-con .iconfont
    font-size 50px
    color red
</style>
