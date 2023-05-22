<template>
    <div class="hello">
        <div>
            <Top></Top>
        </div>
        
        <!-- Main content -->
        <section>
            <div class="text-center" style="1000px" >
                <div class="row mb-5 justify-content-center text-center" >
                    asd 
            </div></div>
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
  .activeClass1 {
	background-color: green;
}
.activeClass2 {
	background-color: skyblue;
}

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
  