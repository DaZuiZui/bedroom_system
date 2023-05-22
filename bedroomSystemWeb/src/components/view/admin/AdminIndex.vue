<template>
    <div class="hello">
        <div>
            <Top></Top>
        </div>
        
        <!-- Main content -->
        <section>
            <div class="container">
                
                &nbsp;&nbsp;&nbsp;&nbsp;欢迎使用管理员操作面板。在这个面板上，您可以执行各种管理操作，并且我们将记录您的每一步操作。这个面板提供了一个安全的环境，确保您对系统进行管理的同时，也能跟踪您的操作历史。
                <br>
                通过管理员操作面板，您可以：
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;用户管理：创建、编辑和删除用户账户，设置用户权限和角色。
                &nbsp;&nbsp;&nbsp;&nbsp;内容管理：审核、编辑和删除用户提交的内容，确保平台上的信息质量。
                &nbsp;&nbsp;&nbsp;&nbsp;安全管理：监控系统的安全性，处理安全事件和漏洞，确保系统的稳定和安全运行。
                我们重视您的隐私和数据安全，并且会按照适用的隐私法律和政策来处理您的数据。
            </div>
        </section>
 
        <footer class="position-relative" id="footer-main">
            <Foot></Foot>
        </footer>
    </div>
  </template>
  
  <script>
  import Foot from '../../frame/Foot.vue';
  import Top  from '../../frame/AdminTop.vue'
  import {synRequestPost,synRequestGet} from "../../../../static/request"
import { Checkbox } from 'element-ui';
  export default {
    name: 'HelloWorld',
    components: {
           Foot,Top
      },
    data () {
      return {
        user: {
            username: "",
            password: "",
        },
        //按钮开关
        switchbutton: false,
      }
    },
    mounted(){
    
    },

    methods: {
        
    }
}
  </script>
  
  <!-- Add "scoped" attribute to limit CSS to this component only -->
  <style scoped>
  h1, h2 {
    font-weight: normal;
  }
  ul {
    list-style-type: none;
    padding: 0;
  }
  li {
    display: inline-block;
    margin: 0 10px;
  }
  a {
    color: #42b983;
  }
  </style>
  