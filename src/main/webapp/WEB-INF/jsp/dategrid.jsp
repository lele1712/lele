<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div fit="true" class="easyui-tabs" border="false">
    
        <table id="datagridc"> 
       </table>
    </div>
    
     <script type="text/javascript">
     
      $(function(){
        	
       $("#datagridc").datagrid({
        		url:'${pageContext.request.contextPath}/getAllUser.do',
        		title:'用户管理',
        		iconCls:'icon-save',
        		pagination:true,
        		pageNumber:1,
        		pageSize: 3,
        		pageList:[3,6,9,12],
        		fit:true,
        		fitColumns:false,
        		nowarp: false,
        		border:false, 
        		idField:'id',
        		columns:[[{
        			title:'编号',
        			field:'id',
        			width:100,
        			/* editor:{
        		        type:'validatebox',
        		       options:{
        		    	required:true 
        		      }
        			}   */
        		},{
        			title:'用户名',
        			field:'username',
        			width:100,
        			editor:{
        		        type:'validatebox',
        		       options:{
        		    	required:true 
        		      }
        			}  
        		},{
        			title:'密码',
        			field:'password',
        			width:100,
        			editor:{
        		        type:'validatebox',
        		       options:{
        		    	required:true 
        		      }
        			}  
        		},{
        			title:'手机号',
        			field:'phonenumber',
        			width:100,
        			editor:{
        		        type:'validatebox',
        		       options:{
        		    	required:true 
        		      }
        			}  
        		}]],
        		toolbar:[{
        			text:'增加',
        			iconCls:'icon-add',
        			handler :function(){
        		    $("#datagridc").datagrid('appendRow',{
        		    	
        		    });
        		    var rows=$("#datagridc").datagrid('getRows');
        		    $("#datagridc").datagrid('beginEdit',rows.length-1);
        		  }
        		
        		},'-',{
        			text:'删除',
        			iconCls:'icon-remove',
        			handler :function(){
        	 var rows=$("#datagridc").datagrid('getSelections');
        	 if(rows.length>0){
        		 $.messager.confirm("请确认","您确认删除您选择的数据吗？",function(result){
        			if(result){
        				var ids=[];
        				for(var i=0;i<rows.length;i++){
        					ids.push(rows[i].id);
        				}
        				 $.ajax({
        					url:"${pageContext.request.contextPath}/removeUser.do",
        					data:"ids="+ids,
        					success: function(result){
        						if(result==0){
        							$.messager.alert("提示","删除成功");
        						}else{
        							$.messager.alert("提示","不好意思，删除失败！");
        						}
        					}
        					
        				}); 
        			}
        			 
        		 });
        		 
        	 }else{
        		 $.messager.alert("提示","请选择数据好不好？","error");
        	 }
        		}
        		
        		},'-',{
        			 
        			text:'修改',
        			iconCls:'icon-edit',
        			handler :function(){
        				
        				 var rows=$("#datagridc").datagrid('getSelections');
        	        	 if(rows.length==1){
        	        		 var rows=$("#datagridc").datagrid('getSelected');	   
                             $("#username").val(rows.username);
                             $("#password").val(rows.password);
                             $("#phonenumber").val(rows.phonenumber);
                             $("#id").val(rows.id);
        	        		 $("#update").dialog({
             		    		title: "修改",    
             		    	    width: 400,    
             		    	    height: 200,    
             		    	    closed: false,    
             		    	    cache: false,    
             		    	    collapsible:true,
             		    	    modal: true,
             		    	    buttons:[{
             		    	    text:'确认',
             		    	    handler:function(){
             		 $.ajax({
         	         url:"${pageContext.request.contextPath}/updateUser.do",
         	         data:$("#updateForm").serialize(),
         	         success: function(result){
         	        		if(result==0){
         	        		$.messager.alert("提示","修改成功");
         	        		$("#update").dialog("close");
         	        		}
         	          }				
         	         });
             		    	    
             		    	  }},{
             		    	    text:'重置',
             		    	    handler:function(){
             		    	    
             		    	   $("#updateForm").form('reset');
             		    	   
             		    	    }
             		    	    	
             		    	    }]
             		    	    
             		    	});
        	        		 
        	     
        	        		 
        	        	 }else if(rows.length==0){
        	        		 $.messager.alert("提示","请选择数据好不好？","error");
        	        	 }else{
        	        		 $.messager.alert("提示","不能选择多个修改");
        	        	 }
        				
        				
        				
        		
        		}
        		},'-',{
        			text:'保存',
        			iconCls:'icon-save',
        			handler :function(){
        				 var editrows=$("#datagridc").datagrid('getRows');
        				$("#datagridc").datagrid('endEdit', editrows.length-1);
        		}
        		},'-',{
        			text:'取消编辑',
        			iconCls:'icon-redo',
        			handler :function(){
        				$("#datagridc").datagrid('rejectChanges');
        				$("#datagridc").datagrid('uncheckAll');
        		}
        		}],
        		onAfterEdit:function(rowIndex,rowData,changes){
        			$.ajax({
        				url:"${pageContext.request.contextPath}/savauser.do",
        				data:rowData,
        				success:function(result){
        					if(result==0){
        						$.messager.alert("标题","添加成功");
        					}else{
        						$.messager.alert("标题","添加失败");
        					}
        				}
        			});
        		},
        		/* onDblClickRow:function(rowIndex, rowData){
        			alert($("#datagridc").datagrid('getRows'));
        			 if($("#datagridc").datagrid('getRows')!=undefined){
        				$("#datagridc").datagrid('endEdit',$("#datagridc").datagrid('getRows'));
        			}
        			
        				
        				$("#datagridc").datagrid.datagrid('beginEndit',rowIndex);
        				$("#datagridc").datagrid('getRows')==rowIndex;
        			
        			
        				
        		} */
              
       		
        	
        	});
         });
         
     
     
     </script>
    <!--  <div id="update" >
     <form id="updateForm" method="post" display="none">
     <table>
    <tr>
       
        <td colspan="2"><input type="hidden" name="id" value="id" id="id"></td>
     </tr>
     <tr>
       <th>用户名</th>
        <td><input type="text" name="username"  class="easyui-validatebox" required="true" id="username"></td>
     </tr>
     <tr>
       <th>密码</th>
        <td><input type="password" name="password"  class="easyui-validatebox" required="true" id="password"></td>
     </tr>
     <tr>
       <th>手机号</th>
        <td><input type="text" name="phonenumber"  class="easyui-validatebox" required="true" id="phonenumber"></td>
     </tr>
   
   </table>
   </form>
    </div>  -->
</body>
</html>