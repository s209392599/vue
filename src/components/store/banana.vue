<template>
    <div id="storeApple">
        <p>store---banana</p>
        <p>
            <button @click="addBanana">增加一把香蕉</button>
            <button @click="reduceBanana">减去一把香蕉</button>
        </p>
    </div>
</template>

<script>
export default{
    name:"storeBanana",
    data(){
        return{
            price:15
        }
    },
    methods:{
        addBanana(){
            this.$store.commit('increment',this.price)
        },
        reduceBanana(){
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