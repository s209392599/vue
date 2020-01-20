<template>
    <div id="">
        <div class="home-page">
            <router-link to="/">回首页</router-link>
            <br />
            <div>iframe是否在家完毕判断</div>   
        </div>
        <div>当前的时间为：{{ time }}</div>
        <!-- https://juejin.im/post/5c401de0e51d4521ef1e9231 参考文章地址 -->
        <iframe id="ifra" name="ifra" width="100%" height="500" src="http://gkme.gitee.io/boxue"></iframe>
    </div>
</template>

<script>

export default {
    name: 'iframeLoad',
    data () {
        return {
            time:new Date()
        }
    },
    mounted() {
        const self = this
        this.$nextTick(() =>{
            const iframe = document.querySelector('#ifra')
            console.log(new Date());
            if (iframe.attachEvent){
                iframe.attachEvent("onload", function(){
                    console.log(111,new Date());
                });
            } else {
                iframe.onload = function(){
                    console.log(222,new Date());
                };
            }
            // if (iframe.attachEvent) {    
            //     iframe.attachEvent("onload", function() {    
            //         const iframeNode = window.frames["ifra"].document
            //         self.getDom(iframeNode)         
            //     });    
            // } else {    
            //     iframe.onload = function() {    
            //         const iframeNode = window.frames["ifra"].document
            //         self.getDom(iframeNode)
            //     };    
            // }
        })
    }
}

</script>

<style lang="stylus">
.home-page
    font-size 30px
</style>
