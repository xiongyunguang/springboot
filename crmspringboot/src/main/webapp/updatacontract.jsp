<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
	String applicationPath = basePath + "/" + "application";
%>
 	<link rel="stylesheet" type="text/css" media="all" href="images/css1/ioa.css" />
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<html>
<body>
<script type="text/javascript">
$(document).ready(function(){
/* 	//合同图片
	$("#conimg").blur(function(){
		var conimg=$("#conimg").val();
		if(conimg==""){
			$("#span1").text("请添加图片！");
			document.getElementById("span1").style.display="";
		}else{
			document.getElementById("span1").style.display="none";
		}
	})
	//合同名字
	$("#contitle").blur(function(){
		var contitle=$("#contitle").val();
		if(contitle==""){
			$("#span2").text("请输入合同名字！");
			document.getElementById("span2").style.display="";
		}else{
			document.getElementById("span2").style.display="none";
		}
	})
	//合同内容
	$("#condetails").blur(function(){
		var condetails=$("#condetails").val();
		if(condetails==""){
			$("#span3").text("请输入合同内容！");
			document.getElementById("span3").style.display="";
		}else{
			document.getElementById("span3").style.display="none";
		}
	}) */
	//合同时间
	$("#condate").blur(function(){
		var condate=$("#condate").val();
		if(condate==""){
			$("#span4").text("请输入合同时间！");
			document.getElementById("span4").style.display="";
		}else{
			if(condate.search(/((?!0000)[0-9]{4}-((0[1-9]|1[0-2])-(0[1-9]|1[0-9]|2[0-8])|(0[13-9]|1[0-2])-(29|30)|(0[13578]|1[02])-31)|([0-9]{2}(0[48]|[2468][048]|[13579][26])|(0[48]|[2468][048]|[13579][26])00)-02-29)/)!=-1){			
				document.getElementById("span4").style.display="none";
			}else{
				$("#span4").text("请输入正确的时间格式，yyyy-mm-dd");
				document.getElementById("span4").style.display="";
			}
		}
	})
})
function yanzheng(){
		var condate=$("#condate").val();
		if (condate.search(/((?!0000)[0-9]{4}-((0[1-9]|1[0-2])-(0[1-9]|1[0-9]|2[0-8])|(0[13-9]|1[0-2])-(29|30)|(0[13578]|1[02])-31)|([0-9]{2}(0[48]|[2468][048]|[13579][26])|(0[48]|[2468][048]|[13579][26])00)-02-29)/) != -1) {
			document.getElementById("span4").style.display = "none";
			return true;
		} else {
			$("#span4").text("请输入正确的时间格式，yyyy-mm-dd");
			document.getElementById("span4").style.display = "";
		}
	return false;
}

	function fromSubmit() {
		if (document.addForm.condate.value == ""
				|| document.addForm.constatus.value == "") {
			alert("请输入完整信息！");
			return false;
		} else {
			if (yanzheng()) {
				return true;
			} else {
				return false;
			}
		}
	}
</script>
		<head>
			<title>修改合同信息</title>
		</head>

		<form action="updataContractController?conid=${sessionScope.updataContractVO.conid}" method="post" name="addForm" id="addForm" onsubmit="return fromSubmit()">

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
									合同管理 > 修改合同
								</td>
							</tr>
						</table>
						<table width="100%" border="0" cellpadding="1" cellspacing="1"
							class="table-border margb5">
							<tr>
								<td width="14%" align="right" class="COLLECTION">
									照片？：
								</td>
								<td width="36%" align="left" class="even padl5">
									<span>${sessionScope.updataContractVO.conimg}</span>
								</td>
							</tr>

							<tr>
								<td width="14%" align="right" class="COLLECTION">
									合同名字：
								</td>
								<td width="36%" align="left" class="even padl5">
									<span>${sessionScope.updataContractVO.contitle}</span>
								</td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									详情：
								</td>
								<td width="36%" align="left" class="even padl5">
									<span>${sessionScope.updataContractVO.condetails}</span>
								</td>
							</tr>
							<tr>
								<td width="14%" align="right" class="COLLECTION">
									合同时间：
								</td>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="condate" id="condate" maxlength="32" class="inputnormal"
										value="${sessionScope.updataContractVO.condate}">
									<font color="red" id="span4">*</font>
								</td>
							</tr>
							<tr>
								<td width="14%" align="right" class="COLLECTION">
									合同状态：
								</td>
								<td width="36%" align="left" class="even padl5">
									<select name="constatus" id="constatus" maxlength="32" class="inputnormal"
									 onchange="1" style="width:148px">
									 	<c:if test="${sessionScope.updataContractVO.constatus==0}">
										 	<option value="${sessionScope.updataContractVO.constatus}" selected:disabled style="diaplay:none">未完成</option>
									 	</c:if>
									 	<c:if test="${sessionScope.updataContractVO.constatus==1}">
										 	<option value="${sessionScope.updataContractVO.constatus}" selected:disabled style="diaplay:none">已完成</option>
									 	</c:if>
										<option value="0">未完成</option>
										<option value="1">已完成</option>
										<option value="2">已归档</option>
									</select>
								</td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									合同所属客户：
								</td>
								<td width="36%" align="left" class="even padl5">
									<span>${sessionScope.updataContractVO.conclient.cname}</span>
								</td>
							</tr>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
								合同所属员工：
								</td>
								<td width="36%" align="left" class="even padl5">
									<span>${sessionScope.updataContractVO.conuser.uname}</span>
								</td>
							</tr> 
						 
					 
							
						</table>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="50%" align="right" class="padr5">
									<button id="addContract" class="button" name="button">修改</button>								</td>
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
