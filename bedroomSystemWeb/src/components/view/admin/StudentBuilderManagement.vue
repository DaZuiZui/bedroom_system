<template>
    <div class="hello">
        <div>
            <Top></Top>
        </div>
        
        <!-- Main content -->

        <!-- Main content -->
        <section  style="background-color:#f9f9f9">
          <br>
        
          <div class="text-center" style="1000px" >
              <div style="height: 40px;">请选择您要操作的寝室楼</div>
              <div class="row mb-5 justify-content-center text-center" >
                      <div v-for="obj in builderList">
                        <div style="width:200px;float:left;margin-left:20px">
                          <div>
                            <svg t="1684755289140" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4461" width="200" height="200"><path d="M960 938.666667H426.666667V89.18l415.853333 69.333333a63.8 63.8 0 0 1 53.48 63.106667V874.666667a21.333333 21.333333 0 0 0 42.666667 0V221.62a106.666667 106.666667 0 0 0-89.133334-105.213333l-440.666666-73.446667A21.333333 21.333333 0 0 0 384 64v111.906667l-221.333333 63.233333a106.666667 106.666667 0 0 0-77.333334 102.56V938.666667H64a21.333333 21.333333 0 0 0 0 42.666666h896a21.333333 21.333333 0 0 0 0-42.666666z m-576 0H128V341.7a64.28 64.28 0 0 1 46.42-61.54L384 220.28z m213.333333-597.333334h-42.666666V256h42.666666z m85.333334 0h-42.666667V256h42.666667z m0 128h-42.666667V384h42.666667z m0 128h-42.666667V512h42.666667z m0 128h-42.666667V640h42.666667z m-42.666667 42.666667h42.666667v85.333333h-42.666667z m-42.666667-298.666667h-42.666666V384h42.666666z m0 128h-42.666666V512h42.666666z m0 128h-42.666666V640h42.666666z m-42.666666 42.666667h42.666666v85.333333h-42.666666z m213.333333-426.666667h-42.666667V256h42.666667z m0 128h-42.666667V384h42.666667z m0 128h-42.666667V512h42.666667z m0 128h-42.666667V640h42.666667z m-42.666667 42.666667h42.666667v85.333333h-42.666667zM256 469.333333h-42.666667V384h42.666667z m0 128h-42.666667V512h42.666667z m0 128h-42.666667V640h42.666667z m0 128h-42.666667v-85.333333h42.666667z" fill="#1296db" p-id="4462"></path></svg>
                          </div>   
                          <div @click="goFloorManagement(obj.name)">
                            <el-link :underline="false">{{obj.name}} - {{obj.sex}}</el-link>
                          </div>
                        </div>
                        <br>
                     </div>
              </div>    
            &nbsp;
           
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
        builderList: [],
      }
    },
    mounted(){
        this.getBuilder();
        console.log(this.builderList);
    },

    methods: {
        async getBuilder(){
           let obj = await synRequestGet("/builder/findAllbuilder");
           if(check(obj)){
              this.builderList = obj.data;
           }
        },
        //前往寝室选择页面
        goFloorManagement(id){
            this.$router.push("/admin/FloorManagement?builderId="+id);
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
  