<template>
    <div id="app">
        <div class="home-page">
            <router-link to="/echartsVue">回echarts导航页面</router-link>
        </div>
        <div id="myChart" :style="{width: '100%', height: '400px'}"></div>
    </div>
</template>

<script>
var echarts = require('echarts/lib/echarts');
require('echarts/lib/chart/gauge');
require('echarts/lib/component/tooltip');
require('echarts/lib/component/title');
require('echarts/lib/component/toolbox');

export default {
    name: 'echartsGauge',
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
            var option = {
                tooltip : {
                    formatter: "{a} <br/>{b} : {c}%"
                },
                title : {
                    show:true,
                    text:"这是一个仪表盘",
                    subtext:"这是一个仪表盘",
                    x:"center"
                },
                toolbox: {
                    feature: {
                        restore: {},
                        saveAsImage: {}
                    }
                },
                series: [
                    {
                        name: '业务指标',
                        type: 'gauge',
                        detail: {formatter:'{value}%'},
                        data: [{value: 50, name: '完成率'}]
                    }
                ]
            };
            myChart.setOption(option, true);
            setInterval(function () {
                option.series[0].data[0].value = (Math.random() * 100).toFixed(2) - 0;
                myChart.setOption(option, true);
            },2000);
        }
    }
}
</script>

<style lang="stylus">
.home-page
    font-size 30px
</style>
