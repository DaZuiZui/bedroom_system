import Vue from 'vue'
import Router from 'vue-router'
import UserLogin from  '@/components/view/user/UserLogin'
import AdminLogin from '@/components/view/admin/AdminLogin'
import AdminIndex from '@/components/view/admin/AdminIndex'
import StudentBuilderManagement from '@/components/view/admin/StudentBuilderManagement'
import FloorManagement from '@/components/view/admin/FloorManagement'
import UserFloor from '@/components/view/user/UserFloor'
import UserBuilder from '@/components/view/user/UserBuilder'
import UserChooseBed from '@/components/view/user/ChooseBed'
import UserInfo from '@/components/view/user/MyInfo'
import Help from '@/components/view/user/Help'
import CheckRoom from '@/components/view/admin/CheckRoom'
Vue.use(Router)

export default new Router({
  mode: 'history',
  base: '/h',

  routes: [
    {
      path: '/user/CheckRoom',
      name: 'CheckRoom',
      component: CheckRoom
    },
    {
      path: '/user/help',
      name: 'help',
      component: Help
    },
    {
      path: '/user/myinfo',
      name: 'myinfo',
      component: UserInfo
    },
    {
      path: '/user/UserChooseBed',
      name: 'UserChooseBed',
      component: UserChooseBed,
    },
    {
      path: '/user/choosebuilder',
      name: 'choosebuilder',
      component: UserBuilder,
    },
    {
      path: '/user/chooseroom',
      name: 'UserFloor',
      component: UserFloor,
    },
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
