<template>
    <div class="top">
        <div class="modal fade" tabindex="-1" role="dialog" id="modal-cookies" data-backdrop="false" aria-labelledby="modal-cookies" aria-hidden="true">
            <div class="modal-dialog modal-dialog-aside left-4 right-4 bottom-4">
                <div class="modal-content bg-dark-dark">
                    <div class="modal-body">
                        <!-- Text -->
                        <p class="text-sm text-white mb-3">
                            We use cookies so that our themes work for you. By using our website, you agree to our use of cookies.
                        </p>
                        <!-- Buttons -->
                        <a   class="btn btn-sm btn-white" target="_blank">Learn more</a>
                        <button type="button" class="btn btn-sm btn-primary mr-2" data-dismiss="modal">OK</button>
                    </div>
                </div>
            </div>
        </div>
        <a   class="btn btn-block btn-dark text-truncate rounded-0 py-2 d-none d-lg-block" style="z-index: 1000;color:aliceblue" target="_blank">
            <strong>哈尔滨广厦学院床位选择系统  </strong>  我们必须使用您的浏览器Cookie权限
        </a>

        <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-white">
                <div class="container">
                    <!-- Brand -->
                    <a class="navbar-brand"  href="/h">
                        <img alt="Image placeholder" style="height:3.4rem" src="http://www.gsxy.cn//lib/template/scheme/images/gs_xy_logo.png" id="navbar-logo">
                    </a>
                    <!-- Toggler -->
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <!-- Collapse -->
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <ul class="navbar-nav mt-4 mt-lg-0 ml-auto">
                            <li class="nav-item ">
                                <a class="nav-link"  href="#"  >操作指南 </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" @click="goIndex()"  >主页</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" >我的</a>
                            </li>
                  
 
 
                        </ul>

 
           
                        <!-- Mobile button -->
                        <div class="d-lg-none text-center">
                            <a class="btn btn-block btn-sm btn-warning">我的个人资料</a>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </div>
  </template>
  
  <script>
import { synRequestGet } from '../../../static/request';

  export default {
    name: 'Foot',
    data () {
      return {
        user: {
            username: "",
            name: "",
            headPortrait: "",
            role: -1
        },
   
      }
    },
    async mounted(){
    
    },
    methods: {
        goIndex(){
            this.$router.push("/user/choosebuilder");
        }
    }
  }
  </script>
  
  
  