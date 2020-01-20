<template>
    <div>
       <p>总价格是：{{ totalPrice }}</p>
       <p>总价格是：{{ totalPrice }}</p>
       <br /> 
       <storeApple></storeApple>
       <br />
       <storeBanan></storeBanan>
    </div>
</template>

<script>
import storeApple from './apple'
import storeBanan from './banana'
export default{
    name:"store",
    components:{
        storeApple,
        storeBanan
    },
    data(){
        return{
            
        }
    },
    computed:{
        totalPrice(){
            return this.$store.state.totalPrice
        },
        totP(){
            return this.$store.getters.getTotal
        }
    }
}    
</script>

<style scoped>
    
</style>