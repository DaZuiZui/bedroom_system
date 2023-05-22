<template>
    <div class="hello">
        <div>
            <Top></Top>
        </div>
        
        <!-- Main content -->
        <section >
            <div class="container">
                <!-- Title -->
                <!-- Section title -->
                <div class="row mb-5 justify-content-center text-center">
                    <div class="col-lg-6">
                       
                        <h2 class=" mt-4">登入您的管理员账户</h2>
                        <div class="mt-2">
                            <p class="lead lh-180">Login Your Admin Account</p>
                        </div>
                       
                        <div>
                                <div class="form-group">
                                  <label for="exampleInputEmail1">输入您的账号 Enter your username</label>
                                  <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" v-model="user.username">
                                  <small id="emailHelp" class="form-text text-muted">我们绝对不会泄漏您的信息. We'll never share your information with anyone else.</small>
                                </div>
                                <div class="form-group">
                                  <label for="exampleInputPassword1">Password</label>
                                  <input type="password" class="form-control" id="exampleInputPassword1" v-model="user.password">
                                  <small id="emailHelp" class="form-text text-muted">我们会保障您的信息安全. We will protect your information security.</small>
                                </div>
                                <div class="form-group form-check">
                                    请注意所有的操作时间以 <a href="#">哈尔滨广厦学院服务器北京时间</a>为标准。
                                </div>
                                <button  class="btn btn-primary" style="width:100%" @click="submit()"   :disabled="switchbutton">登入 Login</button>
                           
                        </div>
                    </div>
                </div>
              
            </div>
        </section>
 
        <footer class="position-relative" id="footer-main">
            <Foot></Foot>
        </footer>
    </div>
  </template>
  
  <script>
  import Foot from '../../frame/Foot.vue';
  import Top  from '../../frame/Top.vue'
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
        //提交登入
        async submit(){
            this.switchbutton = true;
            let obj = await synRequestPost("/user/admin/userlogin",this.user);
 
            console.log(obj.data);
            if(check(obj)){
                setCookie("token",obj.data);
                
                this.$router.push("/admin/index");
            }

            this.switchbutton = false;
        },
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
  