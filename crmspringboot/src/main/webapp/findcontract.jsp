<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
	String applicationPath = basePath + "/" + "application";
%>

<html>
<head>
<style type="TEXT/CSS">
A:LINK {
	COLOR: blue;
	FONT-SIZE: 12PT;
	TEXT-DECORATION: NONE
}

A:VISITED {
	COLOR: blue;
	FONT-SIZE: 12PT;
	TEXT-DECORATION: NONE
}

A:HOVER {
	COLOR: red;
	FONT-SIZE: 12PT;
	TEXT-DECORATION: UNDERLINE
}
</STYLE>

<link rel="stylesheet" type="text/css" media="all"href="images/css1/ioa.css" />

<title>用户信息列表</title>
</head>
<body bgcolor="#ffffff">
	<br>

	<p align="center">
	<table width="100%" border="0" cellspacing="0" cellpadding="0"
		class="pad5">
		<tr>
			<td valign="top" align="left" class="pad5">
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					class="dqbg margb5">
					<tr>
						<td width="2%" align="right" class="pad05"><img
							src="images/img2.gif" width="16" height="16"></td>
						<td width="98%" align="left" class="lan13b">合同管理 > 查看我的合同</td>
					</tr>
				</table>
				<form action="chadoctor" method="post">
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="dqbg margb5">
						<tr>
							<td align="center" class="lan13b">合同ID： <input name="ysxm"
								value="" maxlength="32" /> <input type="submit" name="button"
								value="查询" class="button">

							</td>

						</tr>
					</table>
				</form>
				<!-- <table border="0" cellspacing="0" cellpadding="0" class="margb5">
					<tr>
						<td width="61" align="left" class="padr5"><input type="image"
							src="<%=path%>/images/pic-13.jpg"
							onClick="window.location.href='adddoctor.jsp'"></td>

					</tr>
				</table> -->

				<table width="100%" border="0" cellspacing="1" cellpadding="0" class="table-border margb5">
					<tr>
						<td colspan="11" align="left" class="tabbg">
						<img src="images/main_pic_1.gif" align="absmiddle"
							width="16" height="16">&nbsp;<span class="lan13b"></span></td>
					</tr>

					<tr>

						<th width="3%" nowrap class="COLLECTION">合同照片</th>
						<th width="3%" nowrap class="COLLECTION">合同名字</th>
						<th width="7%" nowrap class="COLLECTION">详情</th>
						<th width="3%" nowrap class="COLLECTION">合同时间</th>
						<th width="3%" nowrap class="COLLECTION">合同状态</th>
						<th width="3%" nowrap class="COLLECTION">合同所属客户</th>
						<th width="3%" nowrap class="COLLECTION">合同所属员工</th>

						<th width="3%" nowrap class="COLLECTION">管理</th>
					</tr>



					<!--  ``````````````````````````````````````` -->
					<c:forEach var="contract" items="${sessionScope.listContract}">
						<tr>
	
							<th width="3%" nowrap class="COLLECTION"><a href="#">暂无</a></th>
							<th width="3%" nowrap class="COLLECTION">${contract.contitle}</th>
							<th width="7%" nowrap class="COLLECTION">${contract.condetails}</th>
							<th width="3%" nowrap class="COLLECTION">${contract.condate}</th>

							<c:if test="${contract.constatus==0}">
								<th width="3%" nowrap class="COLLECTION">未完成</th>						
							</c:if>
							<c:if test="${contract.constatus==1}">
								<th width="3%" nowrap class="COLLECTION">已完成</th>						
							</c:if>
							<c:if test="${contract.constatus==2}">
								<th width="3%" nowrap class="COLLECTION">已归档</th>						
							</c:if>
							<th width="3%" nowrap class="COLLECTION">${contract.conclient.cname}</th>
							<th width="3%" nowrap class="COLLECTION">${contract.conuser.uname}</th>
							<th width="3%" nowrap class="COLLECTION"><a href="selectConidContractController?conid=${contract.conid }"> 修改</a></th>
	
						</tr>
					</c:forEach>



					<div align="right"></div>
					</td>
					</tr>

					<tr class="even">

						<FORM Action="list_user.jsp" Method="GET">

							<tr>
								<td colspan="11" align="right" class="tabbg hei12">


									&nbsp;输入页数：<input TYPE="TEXT" Name="Page" SIZE="3"> <INPUT
									TYPE="submit" value="提交">



								</td>
							</tr>
				</table>

			</td>
		</tr>
	</table>

	</FORM>




</body>













</html>
