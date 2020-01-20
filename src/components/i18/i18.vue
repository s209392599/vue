<template>
    <div>
        <div class="home-page fontSize">
            <router-link to="/">回首页</router-link>
        </div>
        <div class="fontSize">
            <button @click="switchLang">中英文切换</button>
        </div>

        <div class="fontSize">
            <div>{{$t("m.global.view")}}</div>
            <div>{{$t("m.global.configList")}}</div>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'i18',
        data () {
            return {

            }
        },
        methods:{
            switchLang:function(){
                if( this.$i18n.locale = 'zh-CN' ){
                    this.$i18n.locale = 'en-US';
                }else {
                    this.$i18n.locale = 'zh-CN';
                }
            }
        }
    }
</script>

<style lang="stylus" scoped>
.fontSize
    font-size 50px
    color red
</style>
