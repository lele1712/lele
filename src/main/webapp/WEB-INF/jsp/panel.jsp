<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>panel 面板</title>
<script type="text/javascript" src="../js/jquery-easyui-1.5.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
<link rel="stylesheet" href="../js/jquery-easyui-1.5.1/themes/default/easyui.css">
<link rel="stylesheet" href="../js/jquery-easyui-1.5.1/themes/icon.css">
<script type="text/javascript" src="../js/jquery-easyui-1.5.1/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
<!-- <div id="p" class="easyui-panel" title="My Panel"     
        style="width:500px;height:150px;padding:10px;background:#fafafa;"   
        data-options="iconCls:'icon-save',closable:true,    
                collapsible:true,minimizable:true,maximizable:true">   
    <p>panel 面板.</p>   
    <p>panel 666</p>   
</div>  -->

<div id="p" style="padding:10px;">    
    <p>panel 面板.</p>    
    <p>panel 面板.</p>    
</div>
</body>
<script type="text/javascript">
  $(function(){ 
	  $('#p').panel({    
	    width:500,    
	    height:150,   
	    title: 'My Panel',    
	    tools: [{    
	      iconCls:'icon-add',    
	      handler:function(){alert('new')}    
	    },{    
	      iconCls:'icon-save',    
	      handler:function(){alert('save')}    
	    }]    
	  });   

	  
  });

</script>

</html>