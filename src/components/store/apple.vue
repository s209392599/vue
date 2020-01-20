<template>
    <div id="storeApple">
        <p>store---apple</p>
        <p>
            <button @click="addApple">增加一个苹果</button>
            <button @click="reduceApple">减去一个苹果</button>
        </p>
    </div>
</template>

<script>
export default{
    name:"storeApple",
    data(){
        return{
            price:5
        }
    },
    methods:{//不能进行网络数据请求，下面方法只能同步进行
        addApple(){
            this.$store.dispatch('increase',this.price)
        },
        reduceApple(){
            this.$store.commit('decrement',this.price)
        }
    }
}    
</script>

<style scoped lang="stylus">
#storeApple
    font-size:25px
    color:red
    font-weight:700
</style>