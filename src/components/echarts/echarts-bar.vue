<template>
    <div>
        <div class="home-page">
            <router-link to="/">回echarts导航页面</router-link>
        </div>
        <div id="myChart" :style="{width: '100%', height: '400px'}"></div>
    </div>
</template>

<script>
var echarts = require('echarts/lib/echarts');
require('echarts/lib/chart/bar');
require('echarts/lib/component/tooltip');
require('echarts/lib/component/title');

export default {
    name: 'echartsBar',
    data() {
        return {
            msg: 'Welcome to Your Vue.js App'
        }
    },
    mounted() {
        this.drawLine();
    },
    methods: {
        drawLine(){
            var myChart = echarts.init(document.getElementById('myChart'));
            myChart.setOption({
                title: {
                    text: 'ECharts 入门示例'
                },
                tooltip: {},
                xAxis: {
                    data: ['衬衫', '羊毛衫', '雪纺衫', '裤子', '高跟鞋', '袜子']
                },
                yAxis: {},
                series: [{
                    name: '销量',
                    type: 'bar',
                    data: [5, 20, 36, 10, 10, 20]
                }]
            });
        }
    }
}
</script>

<style lang="stylus">
.home-page
    font-size 30px
</style>
