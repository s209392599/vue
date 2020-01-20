import Vue from 'vue'
import App from './App'
import router from './router'
import VueI18n from 'vue-i18n'
import Vuex from 'Vuex'

import common from './assets/js/platform.js'
Vue.prototype.common = common;

import axios from 'axios'
Vue.prototype.axios = axios;

import './assets/css/reset.css'
import './assets/iconfont/iconfont.css'
import Element from 'element-ui';
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
Vue.use(Element, { size: 'small', zIndex: 3000 });


Vue.use(VueI18n)
const i18n = new VueI18n({
    locale: 'zh-CN',    // 语言标识
    //this.$i18n.locale // 通过切换locale的值来实现语言切换
    messages: {
        'zh-CN': require('./assets/lang/zh.js'),   // 中文语言包
        'en-US': require('./assets/lang/en.js')    // 英文语言包
    }
})

Vue.use(Vuex)
let store = new Vuex.Store({
    state:{
        totalPrice:0
    },
    getters:{
        getTotal(state){
            return state.totalPrice
        }
    },
    mutations:{
        increment(state,price){
            state.totalPrice += price
        },
        decrement(state,price){
            state.totalPrice -= price
        }
    },
    actions:{
        increase(context,price){
            //在这里面可以进行异步操作，比如请求
            context.commit('increment',price)
        }
    }
})

Vue.config.productionTip = false


new Vue({
    el: '#app',
    i18n,
    router,
    store,
    components: { App },
    template: '<App/>'
})
