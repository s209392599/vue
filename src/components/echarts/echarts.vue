<template>
    <div id="app">
        <div class="home-page">
            <router-link to="/">回首页</router-link>
            <br />
            <br />
            <router-link to="/echartsBar">echarts-bar -- 柱状图示例页面</router-link><br />  
            <router-link to="/echartsGauge">echarts-gauge -- 仪表盘示例页面</router-link>
        </div>

    </div>
</template>

<script>

export default {
    name: 'echarts',
}
</script>

<style lang="stylus">
.home-page
    font-size 30px
</style>
