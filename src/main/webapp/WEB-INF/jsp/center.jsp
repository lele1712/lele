<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<
<div  class="easyui-layout" style="height:521px; width:1175px;">   
    <div data-options="region:'north',title:'North Title',split:false" style="height:180px;"></div>   
    <div data-options="region:'west',title:'West',split:false" style="width:150px;">
      
    <ul class="easyui-tree">
      <li state="closed">
        <span>打开</span>
     <ul >
        <li state="closed">
           <span>生活用品</span>
           <ul>
             <li state="closed">
               <span>666</span>
                 <ul>
                    <li><span>牙刷</span> </li>
                    <li><span>牙膏</span></li> 
                 </ul>
             </li> 
           </ul>
         </li>
      
       <li state="closed">
           <span>生活用品</span>
           <ul>
             <li state="closed">
               <span>666</span>
                 <ul>
                    <li><span>牙刷</span> </li>
                    <li><span>牙膏</span></li> 
                 </ul>
             </li> 
           </ul>
         </li>
        <li state="closed">
           <span>生活用品</span>
           <ul>
             <li state="closed">
               <span>666</span>
                 <ul>
                    <li><span>牙刷</span> </li>
                    <li><span>牙膏</span></li> 
                 </ul>
             </li> 
           </ul>
         </li>
         <li><a href="hello1.html">hello1.html</a></li>
         <li><a href="#">hello2.html</a></li>
         <li><a href="#">hello3.html</a></li>
     </ul>
     </li>
    
    </ul>
    
    </div>   
    <div data-options="region:'center',title:'center title'" href="${pageContext.request.contextPath }/dategrid.do" style="padding:5px;background:#eee;"></div>   
  </div> 
</body>
</html>