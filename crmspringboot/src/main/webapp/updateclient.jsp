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
			<title>修改客户信息</title>
		</head>

		<form action="updateClient" method="post" name="">

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
									客户管理 > 修改客户消息
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
								  <input type=text name="cid" id="cid" style="display: none;" maxlength="32"
										class=inputnormal value="${clientOne.cid }">
									<input type=text name="cname" id="cname" required="required" maxlength="32"
										class=inputnormal value="${clientOne.cname }">
									<font color="red">*</font>
								</td>


							</tr>

							<tr>

								<td width="14%" align="right" class="COLLECTION">
									性别：
								</td>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="csex" id="csex" maxlength="32" class="inputnormal" value="${clientOne.csex }"><font color="red">*</font>
								</td>
								
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									年龄：
								</td>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="cage" required="required" id="cage" maxlength="32" class="inputnormal"
										value="${clientOne.cage }">
								</td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									联系电话：
								</td>
								<script>
									function checkPhone() {
										var phone=document.getElementById("cphone").value;
										if(!(/^1[34578]\d{9}$/.test(phone))){
											alert("手机号码有误，请重填");
											document.getElementById("cphone").value='';
										}
									}
								
								</script>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="cphone" id="cphone" required="required" onblur="checkPhone()" maxlength="32" class="inputnormal"
										value="${clientOne.cphone }">
								</td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									邮箱：
								</td>
								<script>
									function checkEmail() {
										var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");
										var email=document.getElementById("cemail").value;
										if(!(reg.test(email))){
											alert("邮箱有误，请重填");
											document.getElementById("cemail").value='';
										}
									}
								
								</script>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="cemail" id="cemail" required="required" onblur="checkEmail()" maxlength="32"
										class="inputnormal" value="${clientOne.cemail }">
								</td>
							</tr>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									职业：
								</td>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="cprofession" id="cprofession" maxlength="32"
										class="inputnormal" value="${clientOne.cprofession }">
								</td>
							</tr>
							</tr>
							 
							<tr>
 
								<td width="14%" align="right" class="COLLECTION">
									客户状态
								</td>
								<td width="36%" align="left" class="even padl5">
									
									<input class="Wdate" type="text" name="cstate" id="cstate" required="required" maxlength="32" value="${clientOne.cstate }"/>
								</td>
							</tr>
							
							<tr>

								<td width="14%" align="right" class="COLLECTION">
								客户描述 
								</td>
								<td width="36%" align="left" class="even padl5">
									
									<input class="Wdate" type="text" id="ccontext" name="ccontext"  maxlength="32" value="${clientOne.ccontext }"/>
								</td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
								客户所属区域 
								</td>
								<td width="36%" align="left" class="even padl5">
									<!-- <input type= /> -->
									
									<select name="location" id="location" class="Wdate">
									 <option value=${clientOne.clocation.aid } selected="selected">${clientOne.clocation.ashi }</option> 
                        			   <option value=2>长沙</option>
                          			   <option value=3>永州</option>
                                       </select> 
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
								<td width="50%" align="right" class="padr5">
									 <input type="submit" name="button" id="" value="确定" class="button">
										<%-- <button id="updateSubmit" val="${clientOne.cid }" class="button" name="button">提交</button> --%>	</td>
								<td width="50%" align="left" class="padl5">
								<!-- <input type="button" id="testButton" onclick="test1()" value="测试"/> -->
									<input name="button1"  type="button" class="button"
										onClick="history.go(-1);" value="返 回">
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
