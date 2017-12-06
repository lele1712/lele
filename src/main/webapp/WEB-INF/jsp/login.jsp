<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<style> 

.clock{position: relative; width:200px; height: 200px; border: 5px solid #fff; border-radius: 200px; background:-webkit-radial-gradient(center center,circle,#fff,#bbb); box-shadow: 1px 1px 30px rgba(0, 0, 0, 0.8); aligin:right;} 
.clock .clock-xin{position: absolute; top: 50%; right:100%; width:10px; height: 10px; border-radius: 15px; background: #eee;margin:-15px 0 0 -15px;} 
.clock .clock-xin2{position: absolute; top: 50%; left: 50%; width:12px; height: 12px; border-radius: 6px; background: #f00; z-index: 100; margin:-6px 0 0 -6px;} 
.clock .date{position: absolute; z-index: 3; top: 120px; left: 65px; font-size: 10px; color: #000; text-shadow: 1px 1px white; } 
.clock .hour{position: absolute; z-index: 3; top: 50%; left: 50%; width:70px; height: 4px; border-radius:5px; background: #000; -webkit-transform-origin: 10px 50%; margin:-3px 0 0 -10px;} 
.clock .min{position: absolute; z-index: 4;top: 50%; left: 50%; width:90px; height: 3px; border-radius:5px; background: #333; -webkit-transform-origin: 10px 50%; margin:-2px 0 0 -10px;} 
.clock .sec{position: absolute; z-index: 5; top: 50%; left: 50%; width:105px; height: 2px; background: #f00; -webkit-transform-origin: 30px 50%; margin:-1px 0 0 -30px;} 
.clock em{display: block; width: 2px; height: 5px; background: #000; position: absolute; top: 0; left: 0; -webkit-transform-origin: 50% 0; margin-left: -1px;} 
.clock em.ishour{width: 6px; height: 10px; margin-left: -3px;} 
.clock em.ishour i{font-size: 15px; color: #000; position: absolute; top: 12px; left: -7px;text-shadow: 1px 1px white; } 
</style> 
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery-easyui-1.5.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery-easyui-1.5.1/jquery.cookie.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/jquery-easyui-1.5.1/themes/icon.css">
<%
  String easyuiThemName="default";
   Cookie[] cookies=request.getCookies();
   
   if(cookies!=null&&cookies.length>0){
	   for(int i=0;i<cookies.length;i++){
		   if(cookies[i].getName().equals("easyuiThemName")){
			   easyuiThemName=cookies[i].getValue();
			   break;
		   }
	   }
	   
   }

%>
<link id="easyuiTheme" rel="stylesheet" href="${pageContext.request.contextPath }/jquery-easyui-1.5.1/themes/<%=easyuiThemName %>/easyui.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery-easyui-1.5.1/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery-easyui-1.5.1/llUtils.js"></script>

</head>
<body>




    <!-- <div id="login" title="用户登录" style="width:250px;height:200px;">  
    <form id="loginForm" method="post">
      <table>
    
     <tr>
       <th>用户名</th>
        <td><input type="text" name="username" class="easyui-validatebox" required="true"></td>
     </tr>
     <tr>
       <th>密码</th>
        <td><input type="password" name="password" class="easyui-validatebox" required="true" ></td>
     </tr>
   
   </table>
   </form>
   </div> -->
   <div id="cc" class="easyui-layout" fit="true">   
    <div data-options="region:'north',title:'North Title',split:false" style="height:295px;">
     <center><font color="black" face="黑体" size="20px">欢迎进入后台管理</font></center>
    <div class="clock" id="clock"> 
    <div class="clock-xin"></div> 
<div class="clock-xin2"></div> 
<div id="date" class="date"></div> 
<div id="hour" class="hour"></div> 
<div id="min" class="min"></div> 
<div id="sec" class="sec"></div> 
</div> 

    </div>   
    <div data-options="region:'east',iconCls:'icon-reload',title:'East',split:false" style="width:150px;">
    <div>
    <center>
   <div>
            更换主题
   </div>
    <button onclick="changeTheme('gray')">gray</button>
    <button onclick="changeTheme('sunny')">sunny</button>
    <button onclick="changeTheme('black')">black</button>
    <button onclick="changeTheme('default')">default</button>
    <button onclick="changeTheme('dark-hive')">dark-hive</button> 
    <button onclick="changeTheme('pepper-grinder')">pepper-grinder</button>
    </center>
    </div>
    </div>   
    <div data-options="region:'west',title:'West',split:false" style="width:200px;">
       
           <ul class="easyui-tree">
      <li state="closed">
        <span>管理</span>
     <ul >
        <li state="closed">
           <span>用户管理</span>
           <ul>
                <li><span>权限管理</span> </li>
                <li><span url="${pageContext.request.contextPath }/dategrid.do">操作管理</span></li> 
                <li><span>系统管理</span></li> 
           </ul>
         </li>
         <li state="closed">
           <span>管理员管理</span>
           <ul>
                <li><span>权限管理</span> </li>
                <li><span>操作管理</span></li> 
                <li><span>系统管理</span></li> 
           </ul>
         </li>
         <li state="closed">
           <span>其他管理</span>
           <ul>
                <li><span>权限管理</span> </li>
                <li><span>操作管理</span></li> 
                <li><span>系统管理</span></li> 
           </ul>
         </li>
      
     </ul>
     </li>
    
    </ul>
     
   </div>   
    <div data-options="region:'center',title:'center title'"  href="${pageContext.request.contextPath }/dategrid.do"   style="padding:5px;background:#eee;"></div>   
  </div>  
</body>
  <script type="text/javascript">
  var login=null;
  $(function(){
   login=$("#login").dialog({
		modal:"true",
		closable:false,
		
		buttons:[{
	    text:"登录",
	    handler:function(){	
	    	if($("#loginForm").form("validate")){
	    		$.ajax({
	    	    	url:"${pageContext.request.contextPath}/userlogin.do",	
	    	    	data:$("#loginForm").serialize(),
	    	    	success:function(result){
	    	    		if(result==1){
	    	    			
	    	    			$.messager.alert("标题","登录成功");
	    	    			login.dialog('close');
	    	    		}else{
	    	    			$.messager.alert("标题","用户名或密码错误");
	    	    		}
	    	    		
	    	    	   }
	    	    	
	    	    	});
	    		
	    		
	    	}
	    
		}},{
		text:"注册",
		handler:function(){
			
			
			
		}} ]
		
	 }); 
   
   
   
   
   
  });
  
  var winHeight = document.documentElement.clientHeight; 
  document.getElementsByTagName('body')[0].style.height = winHeight+'px'; 
  var $clock = document.getElementById('clock'), 
  $date = document.getElementById('date'), 
  $hour = document.getElementById('hour'), 
  $min = document.getElementById('min'), 
  $sec = document.getElementById('sec'), 
  oSecs = document.createElement('em'); 
  for (var i = 1; i < 61; i++) { 
  var tempSecs = oSecs.cloneNode(), 
  pos = getSecPos(i); 
  if(i%5==0){ 
  tempSecs.className = 'ishour'; 
  tempSecs.innerHTML = '<i style="-webkit-transform:rotate('+(-i*6)+'deg);">'+(i/5)+'</i>'; 
  } 
  tempSecs.style.cssText='left:'+pos.x+'px; top:'+pos.y+'px; -webkit-transform:rotate('+i*6+'deg);'; 
  $clock.appendChild(tempSecs); 
  } 
  // 圆弧上的坐标换算 
  function getSecPos(dep) { 
  var hudu = (2*Math.PI/360)*6*dep, 
  r = 100; //半径大小 
  return { 
  x: Math.floor(r + Math.sin(hudu)*r), 
  y: Math.floor(r - Math.cos(hudu)*r), 
  } 
  } 
  ;(function() { 
  // 当前时间 
  var _now = new Date(), 
  _h = _now.getHours(), 
  _m = _now.getMinutes(), 
  _s = _now.getSeconds(); 
  var _day = _now.getDay(); 
  _day = (_day==0)?7:_day; 
  if(_day==1){ 
  _day = "一"; 
  }else if(_day==2){ 
  _day = "二"; 
  }else if(_day==3){ 
  _day = "三"; 
  }else if(_day==4){ 
  _day = "四"; 
  }else if(_day==5){ 
  _day = "五"; 
  }else if(_day==6){ 
  _day = "六"; 
  }else if(_day==7){ 
  _day = "日"; 
  } 
  $date.innerHTML = _now.getFullYear()+'-'+(_now.getMonth()+1)+'-'+_now.getDate()+' 星期'+_day; 
  //绘制时钟 
  var gotime = function(){ 
  var _h_dep = 0; 
  _s++; 
  if(_s>59){ 
  _s=0; 
  _m++; 
  } 
  if(_m>59){ 
  _m=0; 
  _h++; 
  } 
  if(_h>12){ 
  _h = _h-12; 
  } 
  //时针偏移距离 
  _h_dep = Math.floor(_m/12)*6; 
  $hour.style.cssText = '-webkit-transform:rotate('+(_h*30-90+_h_dep)+'deg);'; 
  $min.style.cssText = '-webkit-transform:rotate('+(_m*6-90)+'deg);'; 
  $sec.style.cssText = '-webkit-transform:rotate('+(_s*6-90)+'deg);'; 
  }; 
  gotime(); 
  setInterval(gotime, 1000); 
  })(); 
  
  </script>
  
</html>