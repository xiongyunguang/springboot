<%@page contentType="text/html; charset=UTF-8"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- <c:set var="base" value="<%=basePath %>"/> --%>
<html>
	<body>
		

 	<link type="text/css" rel="stylesheet" media="all" href="images/css1/ioa.css" />
	<!-- <script type="text/javascript" src="images/calendar/WdatePicker.js"></script>
	 -->
	<script type="text/javascript" src="js/jquery-2.1.4.js"></script>

<script type="text/javascript">

 function test1() {
	 //alert("11111111111111");
	 
	var t=document.getElementById("clocation").options[1].value;
	var h=parseInt(t);
	document.getElementById("clocation").options[1].value=h;
	//alert(typeof h);
	alert(typeof document.getElementById("clocation").options[1].value);
} 
		/* $(document).ready(function(){
			$("#testButton").click(function (){
				alert("111111111")
				$.messager.alert("11111111111111");
					var t=$("#clocation").val();
					$.messager.alert(t);
			
			});
		}) */
		
		</script>

<!-- 通过jquery+ajax实现表单自动提交 -->
<!-- 
<script type="text/javascript">
    
	$(document).ready(function(){
		$("#updateSubmit").click(function(){

			//获取表单中的所有数据值
			var cid=$("#updateSubmit").attr("val");
			var cname = $("#cname").val();
			var csex = $("#csex").val();
			var cage = $("#cage").val();
			var cphone = $("#cphone").val();
			var cemail = $("#cemail").val();
			var cprofession = $("#cprofession").val();
			var cstate = $("#cstate").val();
			var ccontext = $("#ccontext").val();
			var clocation = $("#clocation").val();
			var cimage=$("cimage").val();
			var userid = $("#userid").val();
			
			//打印获取的文本框的数据值
			$.messager.alert("名字：" +$("#cname").val()+"性别："+$("#cprofession").val());

			//将文本框的数据值封装成JSON格式的字符串
			var jsonObject =[{"cid":cid,"cname":cname,"csex":csex,"cage":cage,"cphone":cphone,
								"cemail":cemail,"cprofession":cprofession,"cstate":cstate,
								"ccontext":ccontext,"clocation":clocation,"cimage":cimage,"userid":userid}];

			//打印JSON格式的字符串 JSON.stringify()转换为能识别字符串
			//$.messager.alert("JSON数据",JSON.stringify(jsonObject));
			
			//aja请求到MVC中对应的servlet
			$.ajax({
	            type: "POST",
	            url: "${base}updateClient",//http://localhost:8086/spingmvc/login
	            contentType:'application/json;charset=utf-8',
	            async:true,//请求是否异步，默认为异步
	            data:JSON.stringify(jsonObject),
	            beforeSend:function(){
	                //请求前的处理
	            }, 
	            success: function (data,status,xhr) {
	            	//alert(JSON.stringify(data)+"---------status:"+status+"-------xhr:"+xhr);
					alert("名字:"+data[0].cname+"性别:"+data[0].csex);
	            	
	            },
	             complete:function(){
	                //请求完成的处理
	            },
	            error:function(data,status,xhr){
	            	//alert(JSON.stringify(data)+"---------status:"+status+"-------xhr:"+xhr);
		        } 
	        });
			
		});


</script>
	
	 -->
		 
		<head>
			<title>查看客户信息</title>
		</head>

		<form action="" method="post" name="">

			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				class="pad5">
				<tr>
					<td valign="top" align="left" class="pad5">
						<table width="100%" border="0" cellspacing="0" cellpadding="0"
							class="dqbg margb5">
							<tr>
								<td width="2%" align="right" class="pad05">
									<img src="images/img2.gif" width="16" height="16">
								</td>
								<td width="98%" align="left" class="lan13b">
									客户管理 > 查看客户消息
								</td>
							</tr>
						</table>
						<table width="100%" border="0" cellpadding="1" cellspacing="1"
							class="table-border margb5">
							<tr>
								
								<td width="14%" align="right" class="COLLECTION">
									名字：
								</td>
								<td width="36%" align="left" class="even padl5">
								  ${clientOneInfo.cname }
									<font color="red">*</font>
								</td>


							</tr>

							<tr>

								<td width="14%" align="right" class="COLLECTION">
									性别：
								</td>
								<td width="36%" align="left" class="even padl5">
									${clientOneInfo.csex }
									<font color="red">*</font>
								</td>
								
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									年龄：
								</td>
								<td width="36%" align="left" class="even padl5">
									${clientOneInfo.cage }
								</td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									联系电话：
								</td>
								<td width="36%" align="left" class="even padl5">
									${clientOneInfo.cphone }
								</td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									邮箱：
								</td>
								<td width="36%" align="left" class="even padl5">
									${clientOneInfo.cemail }
								</td>
							</tr>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									职业：
								</td>
								<td width="36%" align="left" class="even padl5">
									${clientOneInfo.cprofession }
								</td>
							</tr>
							</tr>
							 
							<tr>
 
								<td width="14%" align="right" class="COLLECTION">
									客户状态
								</td>
								<td width="36%" align="left" class="even padl5">
									${clientOneInfo.cstate }
								</td>
							</tr>
							
							<tr>

								<td width="14%" align="right" class="COLLECTION">
								客户描述 
								</td>
								<td width="36%" align="left" class="even padl5">
									${clientOneInfo.ccontext }
								</td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
								客户所属区域 
								</td>
								<td width="36%" align="left" class="even padl5">
									${clientOneInfo.clocation.ashi }
								</td>
								         
							</tr>
							
							<%-- <tr>

								<td width="14%" align="right" class="COLLECTION">
								 图片
								</td>
								<td width="36%" align="left" class="even padl5">
									
									<input class="Wdate" type="text" name="cimage" id="cimage" value="${clientOne.cimage }" maxlength="32" />
								</td>
							</tr> --%>
							
							<%-- <tr>

								<td width="14%" align="right" class="COLLECTION">
								所属职工
								</td>
								<td width="36%" align="left" class="even padl5">
									<input class="Wdate" type="text" name="userid" id="userid" maxlength="32" value="${clientOne.userid.uname }"/>
								</td>
							</tr> --%>
							
						</table>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="50%" align="left" class="padl5">
								<!-- <input type="button" id="testButton" onclick="test1()" value="测试"/> -->
									<a href="showAllClient"  class="button" value="">返 回</a>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>







		</form>


		<br>
		<br>
		<br>
		<br>

	</body>
	
</html>
