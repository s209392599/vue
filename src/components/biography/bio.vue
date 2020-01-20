<template>
    <div>
        <div class="home-page">
            <router-link to="/">回首页</router-link>
        </div>
        <router-link :to="{name:'bioChild'}">H1页面</router-link>
        <router-link :to="{name:'bioChildTwo'}">H2页面</router-link>
        <router-view></router-view>
    </div>
</template>

<script>

export default {
    name: 'bio',
    data() {
        return {
            
        }
    },
    methods: {
        
    }
}
</script>

<style lang="stylus">
.home-page
    font-size 30px
</style>
