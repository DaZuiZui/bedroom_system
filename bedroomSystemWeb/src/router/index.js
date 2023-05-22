import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import UserLogin from  '@/components/view/user/UserLogin'
import AdminLogin from '@/components/view/admin/AdminLogin'
import AdminIndex from           '@/components/view/admin/AdminIndex'
import StudentBuilderManagement from '@/components/view/admin/StudentBuilderManagement'
import FloorManagement from '@/components/view/admin/FloorManagement'
Vue.use(Router)

export default new Router({
  mode: 'history',
  base: '/h',

  routes: [
    {
      path: '/',
      name: 'HelloWorld',
      component: UserLogin
    },
    {
      path: '/admin/login',
      name: 'AdminLogin',
      component: AdminLogin
    },
    {
      path: '/admin/index',
      name: 'AdminIndex',
      component: AdminIndex 
    },
    {
      path: '/admin/StudentBuilderManagement',
      name: 'StudentBuilderManagement',
      component: StudentBuilderManagement,
    },
    {
      path: '/admin/FloorManagement',
      name: 'FloorManagement',
      component: FloorManagement,
    }
  ]
})
