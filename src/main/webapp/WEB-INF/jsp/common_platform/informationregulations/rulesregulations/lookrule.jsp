<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/include.inc.jsp" %>
<%--
	模块：公各平台--规章制度管理
--%>
<div id="${param.rel}_toolbar" class="search-div">
	<form  onsubmit="return datagridSearch(this,'${param.rel }_datagrid');" >
		<!-- 查询条件区域 -->
		
		<div class="search-content">
			<span>
				<label>标题：</label>
				<input type="text" name="rulestitle"  class="span2" />
				&nbsp;<i class="boot_icon-question-sign" selectLike="tooltip"></i>
			</span>
			<span>
				<label>状态：</label>
				<select name="typeid" style="width: 110px;">
					<option value="">==请选择==</option>
					<my:outOptions type="8"/>	
				</select>
			</span>
			<span style="float:right">
				<button class="btn btn-primary btn-small" type="submit">查询</button>&nbsp;
				<button class="btn btn-small clear" type="button" >清空</button>&nbsp;
			</span>
		</div>
		
</form>
</div>
<table id="${param.rel }_datagrid"   toolbar="#${param.rel}_toolbar"   ></table>	

<script type="text/javascript">
<!--
	$(function(){
			var _toolbar=$('#<%=request.getParameter("rel")%>_toolbar');
			
			$('#<%=request.getParameter("rel")%>_datagrid').datagrid({
				
				url : "rules/loadallrules.do",
				
				columns :[[{
						field : "rulestitle",
						title : "标题",
						align:"center",
						width : 100,
						formatter: function(value,row,index){
							
							return '<a href="rules/lookrules.do?id='+row.id+'&rel=<%=request.getParameter("rel")%>_show" target="navTab"  rel="<%=request.getParameter("rel")%>_show"  title="查看详情" >'+value+'</a>';
							
						}
					},
					{
						field : "typeid",
						title : "规章类型",
						align:"center",
						width : 60
					},
					{
						field : "promulgator",
						title : "发布人",
						align:"center",
						width : 60,
						
					},
					{
						field : "createdate",
						title : "发布时间",
						align:"center",
						width : 50,
						sortable : true,
						formatter: function(value,row,index){
						
							return new Date(value).format("yyyy-MM-dd HH:mm:ss");
						}
					}
					
					
				]]
			
			});
		});
//-->
</script>	
	