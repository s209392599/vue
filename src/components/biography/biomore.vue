<template>
    <div>
        <div class="home-page">
            <router-link to="/">回首页</router-link>
            <p>单页面多路由区操作</p>
        </div>
        <router-link :to="{name:'biomore'}"><h1>H1</h1></router-link>
        <router-link :to="{name:'biomore2'}"><h1>H2</h1></router-link>
        
        <router-view></router-view>
        <router-view name="left"></router-view>
        <router-view name="right"></router-view>
    </div>
</template>

<script>
export default {
    name: 'biomore',
}
</script>

<style lang="stylus">
.home-page
    font-size 30px
</style>
