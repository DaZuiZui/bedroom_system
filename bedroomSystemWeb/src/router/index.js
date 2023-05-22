import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import UserLogin from  '@/components/view/user/UserLogin'
Vue.use(Router)

export default new Router({
  mode: 'history',
  base: '/h',

  routes: [
    {
      path: '/',
      name: 'HelloWorld',
      component: UserLogin
    }
  ]
})
