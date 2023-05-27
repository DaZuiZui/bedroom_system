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
                action="http://127.0.0.1:4180/user/readExcel"
                :on-preview="handlePreview"
                :on-remove="handleRemove"
                :before-remove="beforeRemove"
                :on-success="fileOK"
                multiple
                :limit="300"
                name="file"
                :on-exceed="handleExceed"
                :file-list="fileList">
                <el-button size="small" type="primary">点击上传用户信息</el-button>
                <div slot="tip" class="el-upload__tip">只能上传excel文件</div>
            </el-upload> 

            <el-button @click="drawer = true" type="primary" style="margin-left: 16px;">
              缴费管理
            </el-button>
            <br>   <br>    
            <br>   
 
            
            <el-drawer
              title="我是标题"
              :visible.sync="drawer"
              direction="btt"
              :with-header="false">
              <div>
                <el-input v-model="username" placeholder="请输入内容"></el-input>
                <el-button-group>
                  <el-button type="primary" icon="el-icon-check" @click="check(1)">缴费</el-button>
                  <el-button type="primary" @click="check(0)">取消缴费<i class="el-icon-close"></i></el-button>
                </el-button-group>
              </div>
            </el-drawer>

            <table class="table">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">姓名</th>
                    <th scope="col">身份证</th>
                    <th scope="col">状态</th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="obj in list">
                    <th scope="row">1</th>
                    <td>{{obj.name}}</td>
                    <td>{{obj.username}}</td>
                    <td>
                        <div v-if="obj.status == 1">
                            以缴费
                        </div>
                        <div v-else>
                            未缴费
                        </div>
                    </td>
                  </tr>
                 
                </tbody>
            </table>
                 <!--分页部分-->
                 <el-pagination
                    :page-size="50"
                    :pager-count="11"
                    @current-change="getPaginationInfo"
                    layout="prev, pager, next"
      
                    :total="count">
                </el-pagination>

            <br>   
            <br>   
            <br>   
            <br>                           
            <br>   <br>    
            <br>   
            <br>   
        
            
              </div>
          </div>
          <div  style="500px" >
              <div class="row mb-5 justify-content-center text-center"   v-for="(obj,index) in roomList" :key="index">
                <div class="container">
                                     
                    
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
        fileList:[],
        //按钮开关
        switchbutton: false,
        roomList: [],
        builderId: -1,

        getPaginationInfoBo: {
            token: "",
            start: 0,
            number: 50
        },
        username: "",
        
        drawer: false,
        count: 0,
        list: [],
      }
    },
    mounted(){
        this.builderId = getQueryVariable("builderId");
        this.getPaginationInfo(1);
    },

    methods: {
        async check(status){
          let obj = await synRequestPost("/user/updateStatusByUsername?username="+this.username+"&status="+status); 
          if(check(obj)){
             alert("修改成功");
          }
        },


        async fileOK(response, file, fileList){
            alert("上传成功");
            this.getPaginationInfo(1);
        },

      async getPaginationInfo(val){
        this.getPaginationInfoBo.start = (val -1) * 50;

        let obj = await synRequestPost("/user/GetPaginationInfoBo",this.getPaginationInfoBo);
        if(check(obj)){
             this.count = obj.data.count;
             this.list =  obj.data.list;
        }
      },
    
      toChooseBed(builderName,floorId,roomId){
        this.$router.push("/user/CheckRoom?builderName="+builderName+"&floor="+floorId+"&roomId="+roomId);
      },

      handleRemove(file, fileList) {
        console.log(file, fileList);
      },
      handlePreview(file) {
        console.log(file);
      },
      handleExceed(files, fileList) {
        this.$message.warning(`当前限制选择 300 个文件，本次选择了 ${files.length} 个文件，共选择了 ${files.length + fileList.length} 个文件`);
      },
      beforeRemove(file, fileList) {
        return this.$confirm(`确定移除 ${ file.name }？`);
      } ,


      async getRoom(){
           let obj = await synRequestGet("/floor/getFloorList?builderId="+getQueryVariable("builderId"));
            if(check(obj)){
              this.roomList = obj.data;
            }
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
  