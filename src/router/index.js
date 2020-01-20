import Vue from 'vue'
import Router from 'vue-router'
import navigation from '@/components/navigation'

import biography from '../components/biography/biography'
import bio from '../components/biography/bio'
import bioChild from '../components/biography/bioChild'
import bioChildTwo from '../components/biography/bioChildTwo'
import biomore from '../components/biography/biomore'
import biomoreOne from '../components/biography/biomoreOne'
import biomoreTwo from '../components/biography/biomoreTwo'

import storeApple from '../components/store/apple'
import iframeLoad from '../components/iframe/iframeLoad'


Vue.use(Router)
export default new Router({
    mode:'history',
    routes: [
        {
            path: '/',
            //redirect:'/iconfontVue',//重定向到iconfontVue路由
            name: 'navigation',
            component: navigation
        },
        { path: '/iconfontVue',name: 'iconfontVue',component: ()=>import('../components/iconfont/iconfont') },
        { path: '/echartsVue',name: 'echartsVue',component: ()=>import('../components/echarts/echarts') },
        { path: '/echartsBar',name: 'echartsBar',component: ()=>import('../components/echarts/echarts-bar') },
        { path: '/echartsGauge',name: 'echartsGauge',component: ()=>import('../components/echarts/echarts-gauge') },
        { path: '/i18Vue',name: 'i18Vue',component: ()=> import('../components/i18/i18') },
        { path: '/elementuiVue',name: 'elementuiVue',component: ()=>import('../components/elementui/elementui') },
        { path: '/todolist',name: 'todolist',component: ()=>import('../components/todolist/todolist') },
        {
            /* 地址栏传参：parm2为固定传参，否则不匹配页面 */
            path: '/biography/:parm1/parm2/:parm3',
            name: 'biography',
            component: biography
        },
        {
            /* 嵌套路由*/
            path: '/bio', 
            component: bio,
            children:[
                {
                    path: 'bioChild',
                    name:'bioChild',
                    component: bioChild
                },
                {
                    path: 'bioChildTwo',
                    name:'bioChildTwo',
                    component: bioChildTwo
                }
            ]
        },
        {
            path:'/biomore',
            name:'biomore',
            components:{
                default : biomore,
                left : biomoreOne,
                right : biomoreTwo
            }
        },
        {
            path:'/biomore2',
            name:'biomore2',
            components:{
                default : biomore,
                left : biomoreTwo,
                right : biomoreOne
            }
        },
        { path: '/store',name: 'store',component: ()=>import('../components/store/store') },//import store from 
        { path: '/iframeLoad',name: 'iframeLoad', component: iframeLoad },
        {path:"*", redirect: "/"}
    ]
})
