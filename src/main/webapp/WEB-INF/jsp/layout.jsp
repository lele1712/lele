<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery-easyui-1.5.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/jquery-easyui-1.5.1/themes/default/easyui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/jquery-easyui-1.5.1/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery-easyui-1.5.1/locale/easyui-lang-zh_CN.js"></script>
<title>Dialog第一节</title>
</head>
<body>
  <!-- <div id="dd" class="easyui-dialog" title="My Dialog" style="width:400px;height:200px;"   
        data-options="iconCls:'icon-save',resizable:true,modal:true">   
    陈乐乐
</div>  -->
    <div id="dd">dialog 提示弹窗</div>
  


</body>
<script type="text/javascript">
    $(function(){
    	$("#dd").dialog({
    		title: "My Dialog",    
    	    width: 400,    
    	    height: 200,    
    	    closed: false,    
    	    cache: false,    
    	    collapsible:true,
    	   // href: "get_content.php",    
    	     minimizable:true,
    	    modal: true  
    	});
    	
    })
  //$('#dd').dialog('refresh', 'new_content.php');   
  </script>
</html>