<%@page contentType="text/html; charset=utf-8"%>
  
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
	String applicationPath = basePath + "/" + "application";
%>

<html>
	<body>
<script language="javascript">
function checkform() {
	if (document.addForm.name.value == ""
			|| document.addForm.bianhao.value == "") {
		alert("请输入完整信息！");
		return false;
	} else {
		alert("添加成功！");
		return true;
	}
}
</script>

 	<link rel="stylesheet" type="text/css" media="all"
			href="images/css1/ioa.css" />
	<script type="text/javascript" src="js/WdatePicker.js"></script>	
		 
		<head>
			<title>添加客户信息</title>
		</head>

		<form action="addClient" method="post" name="addForm">

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
									客户管理 > 添加客户
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
									<input type=text name="cname" required="required" maxlength="32"
										class=inputnormal value="">
									<font color="red">*</font>
								</td>


							</tr>

							<tr>

								<td width="14%" align="right" class="COLLECTION">
									性别：
								</td>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="csex" maxlength="32"
										class="inputnormal" value=""><font color="red">*</font>
								</td>
								
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									年龄：
								</td>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="cage" maxlength="32" class="inputnormal"
										value="">
								</td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									电话：
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
									<input type=text name="cphone" id="cphone" required="required" onblur="checkPhone()" 
									 class="inputnormal" value="">
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
										class="inputnormal" value="">
								</td>
							</tr>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									职业：
								</td>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="cprofession" maxlength="32"
										class="inputnormal" value="">
								</td>
							</tr>
							</tr>
							 
							<tr>
 
								<td width="14%" align="right" class="COLLECTION">
									客户状态：
								</td>
								<td width="36%" align="left" class="even padl5">
									
									<select name="cstate" class="Wdate">
                           				<option value=0>潜在客户</option>
                           				<option value=1>新客户</option>
                           			    <option value=2>老客户</option>
                                    </select> 
								</td>
								<!-- <td width="36%" align="left" class="even padl5">
									
									<input class="Wdate" type="text" name="cstate" required="required"  maxlength="32" />
								</td> -->
							</tr>
							
							<tr>

								<td width="14%" align="right" class="COLLECTION">
								客户描述： 
								</td>
								<td width="36%" align="left" class="even padl5">
									
									<input class="Wdate" type="text" name="ccontext"  maxlength="32" />
								</td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
								客户所属区域： 
								</td>
								<td width="36%" align="left" class="even padl5">
									
									
									<select name="location" class="Wdate">
                           <option value=1></option>
                           <option value=2>长沙</option>
                            <option value=3>永州</option>
                                       </select> 
								</td>
								         
							</tr>
							
							<!-- <tr>

								<td width="14%" align="right" class="COLLECTION">
								 图片
								</td>
								<td width="36%" align="left" class="even padl5">
									
									<input class="Wdate" type="text" name="cimage"  maxlength="32" />
								</td>
							</tr> -->
							<!-- <tr>

								<td width="14%" align="right" class="COLLECTION">
								所属职工编号：
								</td>
								<td width="36%" align="left" class="even padl5">
									
									<input class="Wdate" type="text" name="cuid"  maxlength="32" />
								</td>
							</tr> -->
							
						</table>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="50%" align="right" class="padr5">
									<!--  <input type="submit" onclick="javascript:return(checkform());"
										name="button" value="保 存" class="button">-->
										<button onclick="javascript:return(checkform());" class="button" name="button">保存</button>								</td>
								<td width="50%" align="left" class="padl5">
									<a href="showAllClient" name="button1" type="button" class="button"
										onClick="history.go(-1);" >返 回</a>
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
