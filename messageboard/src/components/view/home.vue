<template>
<div class="home">
  <div class="menu">
<ul>
  <li><router-link to="/board" tag="a">Board</router-link></li>
  <li><a href="#about">About</a></li>
</ul>
  </div>


   <div class="background">
     <img class="bgpic" src="./images/1.jpg" width="100%" alt=""> 
     <h3 class="title">留言板</h3>
     <h3 class="title2">留下你的想法</h3>
        <input type="button" value="点击进入" onclick="javascript:window.location.href='/board'"  style="width:200px;;border:solid 1px ;border-radius:100px; height:80px;color:#ffffff;background-image: linear-gradient(to top, #a3bded 0%, #6991c7 100%);

font-size:28px;left: 850px;
    right: 0;
    top: 500px;position:absolute
    "/>

     <img class="downicon" src="./images/s1.jpg" alt="">
   </div>

      <div class="background2">

        <div class="videos">
             <span>
             Imagine your face <br>
             <br>
             Say hello to me   <br>    
             <br>                       
             Then all the bad days <br>
             <br>                  
             They’re nothing to me  <br>      
             <br>     
             With you </span>
           
             <video width="800" controls id="video" class="vid" preload="auto" height="100%"  loop="loop" type="video/mp4" src="./images/V.mp4"></video>

            </div>
             
      </div>  

          <div class="music">
          <audio autoplay="autoplay" id="audio" loop="loop">
                <source src="./images/V,Peakboy - Snow Flower.mp3" type="audio/MP3">
               
          </audio>
          <img class="music_img" src="./images/s2.png" alt="" @click="closePlay()">
          </div>

            






    
   

</div>
</template>



<script>
import axios from "axios";
import swal from "sweetalert";
import url from '../../common/api';


export default {
  data(){
    return{
 flag:false
    }
   
  },
  methods:{
    closePlay(){
                  var myAuto = document.getElementById('audio');

        if(!this.flag){

myAuto.pause();
this.flag=true;
        }else{
          console.log("222");
          myAuto.play();
          this.flag=false;
        }
            
           
        

    }
  }
}

</script>


















<style scoped>

.home {
    height: 100%;

}

.background {
    perspective: 340px;
    width: 100%;
    position: relative;
}

.title {
    position: absolute;
    display: flex;
    justify-content: center;
    left: 0;
    right: 0;
    top: 300px;
    margin: auto;
    bottom: 0;
    color: #fff;
    font-size: 80px;
    font-weight: 500;
}

.title2 {
    position: absolute;
    display: flex;
    justify-content: center;
    left: 0;
    right: 0;
    top: 420px;
    margin: auto;
    bottom: 0;
    color: #fff;
    font-size: 25px;
    font-weight: 500;
}

.downicon {
    width: 15px;
    height: 15px;
    padding: 5px;
    border: 2px solid #fff;
    border-radius: 100%;
    position: absolute;
    left: 49%;
    bottom: 50px;
    animation: downs 2s linear infinite;
}

/*向下滑动的动画*/
@keyframes downs {
   /* from {  */
        /*transform: translatey(0px);*/
        0% {top:950px;}
        50%{top:1080px}
        100%{top:1120px}
        
        /*opacity: .1; */
    }
   /* to {
      /*  transform: translatey(30px); 
        opacity: .9;
    }   
}  */

/* 会遮挡
.background2 {
    perspective: 340px;
    width: 100%;
    position: relative;
}  */



/*顶层菜单水平导航栏 */
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: rgb(212, 217, 240);
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
/*鼠标移动到上面的时候把bg的颜色改变 */
li a:hover {
  background-color: rgb(80, 76, 76);
}

/*播放音乐*/
audio {
    position: fixed;
    bottom: 50px;
    right: 0;
}

/*转动放歌图片 */
.music_img {
    position: fixed;
    bottom: 50px;
    right: 50px;
    width: 40px;
    height: 30px;
    animation: muscis 5s linear infinite;
}

@keyframes muscis {
    from {
        transform: rotate (0deg);
        opacity: .6;
    }
    to {
        transform: rotate(360deg);
        opacity: .8;
    }
}

/*第二页字和视频*/
.videos {
    display: flex;
    padding-bottom: 200px;
   /* z-index: 1;*/
    margin-top: -20px;
}

.videos span {
    width: 400px;
    margin-right: 100px;
    margin-left: 300px;
    margin-top:220px;
    color: #ffffff;
    font-size: 24px;
}

.background2{
  
  background-image: url(images/2.jpg);

}
.vid{
  margin-left: -100px;
  margin-top: 200px;
}
</style>
