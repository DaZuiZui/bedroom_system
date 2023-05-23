<template>
    <div class="hello">
        <div>
            <Top></Top>
        </div>
        
        <!-- Main content -->

        <!-- Main content -->
        <section  style="background-color:#f9f9f9">
          <br>
          <div class="container">
            <div>
                <el-upload
                class="upload-demo"
                :action="'http://127.0.0.1:4180/bed/readExcel?builderId='+builderId"
                :on-preview="handlePreview"
                :on-remove="handleRemove"
                :before-remove="beforeRemove"
                multiple
                :limit="3"
                name="file"
                :on-exceed="handleExceed"
                :file-list="fileList">
                <el-button size="small" type="primary">点击上传</el-button>
                <div slot="tip" class="el-upload__tip">只能上传excel文件</div>
            </el-upload>
              </div>
          </div>
          <div class="text-center" style="1000px" >
              <div class="row mb-5 justify-content-center text-center" >
                <svg t="1684767126255" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="5391" width="25" height="25"><path d="M0 0h1024v1024H0z" fill="#1296db" opacity=".01" p-id="5392"></path><path d="M896 85.333333h-192c-25.6 0-42.666667 17.066667-42.666667 42.666667v149.333333H512c-25.6 0-42.666667 17.066667-42.666667 42.666667V469.333333H320c-25.6 0-42.666667 17.066667-42.666667 42.666667v149.333333H128c-25.6 0-42.666667 17.066667-42.666667 42.666667V896c0 25.6 17.066667 42.666667 42.666667 42.666667h768c25.6 0 42.666667-17.066667 42.666667-42.666667V128c0-25.6-17.066667-42.666667-42.666667-42.666667z m-42.666667 768H170.666667v-106.666666h149.333333c25.6 0 42.666667-17.066667 42.666667-42.666667V554.666667H512c25.6 0 42.666667-17.066667 42.666667-42.666667V362.666667h149.333333c25.6 0 42.666667-17.066667 42.666667-42.666667V170.666667H853.333333v682.666666zM128 443.733333c25.6 0 42.666667-17.066667 42.666667-42.666666V307.2h106.666666c25.6 0 42.666667-17.066667 42.666667-42.666667s-17.066667-42.666667-42.666667-42.666666H170.666667V170.666667h106.666666c25.6 0 42.666667-17.066667 42.666667-42.666667s-17.066667-42.666667-42.666667-42.666667H128c-25.6 0-42.666667 17.066667-42.666667 42.666667v273.066667c0 21.333333 17.066667 42.666667 42.666667 42.666666z" p-id="5393" fill="#1296db"></path></svg>
                   1：
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
        fileList:[{name:'',url:''}],
        //按钮开关
        switchbutton: false,
        builderList: [],
        builderId: -1,
      }
    },
    mounted(){
        this.builderId = getQueryVariable("builderId");
        this.getBuilder();
    },

    methods: {
        async getBuilder(){
           let obj = await synRequestGet("/builder/findAllbuilder");
           if(check(obj)){
              this.builderList = obj.data;
           }
        },
        handleRemove(file, fileList) {
        console.log(file, fileList);
      },
      handlePreview(file) {
        console.log(file);
      },
      handleExceed(files, fileList) {
        this.$message.warning(`当前限制选择 3 个文件，本次选择了 ${files.length} 个文件，共选择了 ${files.length + fileList.length} 个文件`);
      },
      beforeRemove(file, fileList) {
        return this.$confirm(`确定移除 ${ file.name }？`);
      } 
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
  