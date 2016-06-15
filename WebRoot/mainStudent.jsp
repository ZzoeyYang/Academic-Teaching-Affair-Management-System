<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title> 教学管理系统首页 </title>
     <meta http-equiv="Conten-Type" content="text/html;charset=gb2312"/>
     <style type="text/css"> 
     body{margin:0 auto;padding: 0px;font-size: 12px;white-space:nowrap; width:1500px;height:700px;}
     #container{margin: 0px auto ; width:100%;height: 100%;text-align: left;}
     #banner{margin: 0px;padding: 0px;height: 103px;width: 100%;background: url("images/logo.jpg");color：white;white-space:nowrap;}
	 #banner ul{ margin: 0px 0px 50px 0px  ;padding: 20px 50px 20px 50px;height:50px;color：white;}
	 #banner ul li{display: block;background: #227700;opacity: 0.45;font-size: 65px;text-align:center;color：white;}
     #global{margin: 10px 0px 0px 0px;padding: 0px;width:100%;height: 50px;background:#CD853F;white-space:nowrap;}
     #global ul{list-style-type: none;padding: 0px;margin: 0px 0px 0px 40px;font-size: 15px;text-decoration:none;}
     #global ul li{float: left;text-align: center;color:white;text-decoration:none;font-size: 25px;}
     #global ul li  a{display: block;padding: 9px 150px 0px 6px;margin: 0px;color:white;text-decoration:none;}
	 #global a:link ,#global a:visited{color: white;}
	 #global a:hover{color: #A5A552;}
     #left{width: 400px;height:570px;margin:10px 0px 0px 5px auto;padding: 0px 0px 0px 20px;color: red;float: left;background:#FFAD86;white-space:nowrap;position:absolute;}
	 #left h3 span{color:white;font-size: 25px;}
	 #weather{margin: 0px ;}
	 #today li a{}
	 #weather ul{ist-style-type: none;padding: 0px;margin: 0px 0px 40px 0px;font-size: 20px}
	 #weather ul li{color:white;padding: 0px 0px 0px 20px;margin: 0px 0px 10px 40px;}
     #weather h3{font-size: 25px;padding: 22px 0px 0px 78px;color:white;margin:0px;}
	 #today {margin: 0px 5px;}
	 #today ul{list-style-type: none;padding: 0px;margin: 0px;}
	 #today ul li{text-align:center;}
	 #today h3{color:white;font-size:20px;padding:4px 0px 5px 15px;}
     #middle{width: 1100px;height: 570px;margin: 0px 0px 0px 0px;padding:0px 0px 0px 0px; float: right;background:url("images/back.jpg"); background-size:1100px 570px;
     opacity:0.55;}
     #foot{width: 100%;height: 50px;background: #00CACA;margin: 0px;padding: 0px;float:left;}
	 #foot p{text-align:center;font-size: 20px}
     </style>
  </head>
  <body>
    <!--整体外层容器-->
    <div id="container">

    <!--banner-->
      <div id="banner">
	   <ul>
           
       </ul>
     
      </div>

     
       <!--global-->
       <div id="global">
         <ul>
          <li><a href="ViewStudents.action">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;显示学生信息</a></li>
           <li><a href="ViewCourses.action">显示课程信息</a></li>
           <li><a href="ViewMyCourses.action">显示选课信息</a></li>
           <li><a href="ViewGrade.action">显示成绩信息</a></li>
         </ul>
       </div>

       <!--left-->
      <div id="left">
         <div id="weather">
         <h3><span>天气</span></h3>
           <ul>
             <li>长沙&nbsp;&nbsp;&nbsp;晴 25C-30C</li>
			 </br>
			 </br>
			 
           </ul>
         </div>
		 <hr/>
         <div id="today">
           <h3><span>湖大新闻(点击链接)</span></h3>
           <li><a href="http://www.hnu.cn"><img src="images/m.jpg" height="250px" width="300px" ></a></li>
         </div>
       </div>

        <!--middle-->
       <div id="middle">
         
       </div>


        <!--foot-->
       <div id="foot">
         <p>copyright by Group No.3</p>
       </div>
    </div>
  </body>
</html>