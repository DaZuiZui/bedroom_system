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
  