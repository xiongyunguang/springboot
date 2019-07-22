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
		return true;
}
</script>

 	<link rel="stylesheet" type="text/css" media="all"
			href="images/css1/ioa.css" />
			<script type="text/javascript" src="<%=path%>/js/WdatePicker.js"></script>	
		 
		<head>
			<title>添加医生信息</title>
		</head>

		<form action="changeJob" method="post" name="addForm" onsubmit="return checkform()">

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
									我的工作安排 > 修改工作安排
			
								</td>
							</tr>
						</table>
						<table width="100%" border="0" cellpadding="1" cellspacing="1"
							class="table-border margb5">
							
							<!-- 工作Id -->
							<input type=text name="jid" value="${onejob.jid}" style="display: none"/>
							

							<tr>

								<td width="14%" align="right" class="COLLECTION">
									标题
								</td>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="jtitle" maxlength="32"
										class="inputnormal" value="${onejob.jtitle}"><font color="red">*</font>
								</td>
								
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									内容
								</td>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="jcontent" maxlength="32" class="inputnormal"
										value="${onejob.jcontent}">
								</td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									客户
								</td>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="jtarget" maxlength="32" class="inputnormal"
										value="${onejob.jtarget.cname}">
								</td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
								    日期
								</td>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="jdate" maxlength="32"
										class="inputnormal" value="${onejob.jdate}">
								</td>
							</tr>
					 
					 	<tr>

								<td width="14%" align="right" class="COLLECTION">
								是否完成
								</td>
								<td width="36%" align="left" class="even padl5">
									<select name="jtype" id="constatus" maxlength="32" class="inputnormal"
									 onchange="this.options[this.selectedIndex].innerText">
										<option value="1"><span style="color: red">未完成</span></option>
										<option value="0"><span style="color: green">已完成</span></option>
									</select>	
										
								</td>
							</tr>
					 
							 
							
						</table>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="50%" align="right" class="padr5">
									<!--  <input type="submit" onclick="javascript:return(checkform());"
										name="button" value="保 存" class="button">-->
										<button onclick="javascript:return(checkform());" class="button" name="button">保存</button>								</td>
								<td width="50%" align="left" class="padl5">
									<input name="button1" type="button" class="button"
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
