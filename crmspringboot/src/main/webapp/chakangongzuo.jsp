<%@ page contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
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

		<link rel="stylesheet" type="text/css" media="all"
			href="images/css1/ioa.css" />

		<title>病人信息列表</title>
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
								<td width="2%" align="right" class="pad05">
									<img src="images/img2.gif" width="16" height="16">
								</td>
								<td width="98%" align="left" class="lan13b">
									我的工作安排管理 >查看工作安排
								</td>
							</tr>
						</table>
						
						 <form action="list_patient.jsp" method="post">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="dqbg margb5">
          <tr>
            <td  align="center" class="lan13b">
           姓名： <input  name="brxm" value=""   maxlength="32"/>
            <input type="submit"  name="button" value="查询" class="button">
           
            </td>
           
          </tr>
        </table>
        </form>

						<table border="0" cellspacing="0" cellpadding="0" class="margb5">
							<tr>
								<td width="61" align="left" class="padr5">
									<input type="image" src="images/pic-13.jpg"
										onClick="window.location.href='addJobshow'">
								</td>

							</tr>
						</table>

						<table width="100%" border="0" cellspacing="1" cellpadding="0"
							class="table-border margb5">
							<tr>
								<td colspan="11" align="left" class="tabbg">
									<img src="images/main_pic_1.gif" align="absmiddle"
										width="16" height="16">
									&nbsp;
									<span class="lan13b"></span>
								</td>
							</tr>
							<tr>
							<th width="3%" nowrap class="COLLECTION">
									工作编号
								</th>

								<th width="3%" nowrap class="COLLECTION">
									标题
								</th>
								<th width="3%" nowrap class="COLLECTION">
									内容
								</th>
								<th width="3%" nowrap class="COLLECTION">
									客户
								</th>
								<th width="5%" nowrap class="COLLECTION">
									日期
								</th>
								<th width="5%" nowrap class="COLLECTION">
									是否完成
								</th>
								<th width="5%" nowrap class="COLLECTION">
									所属员工
								</th>
								<th width="5%" nowrap class="COLLECTION">
									操作
								</th>

							</tr>
							
				 <c:forEach var="j" items="${requestScope.jlist}">			
				<tr>
                                 <th width="3%" nowrap class="COLLECTION">
								  ${j.jid}
								</th>
								<th width="3%" nowrap class="COLLECTION">
								  ${j.jtitle}
								</th>
								<th width="3%" nowrap class="COLLECTION">
									 ${j.jcontent}
								</th>
								<th width="3%" nowrap class="COLLECTION">
									 ${j.jtarget.cname}
								</th>
								<th width="5%" nowrap class="COLLECTION">
									 ${j.jdate}
								</th>
								<th width="5%" nowrap class="COLLECTION">
									<c:if test="${j.jtype==0}">
										<span style="color: green">已完成</span>
									</c:if>
									<c:if test="${j.jtype!=0}">
										<span style="color: red">未完成</span>
									</c:if>
								</th>
								<th width="5%" nowrap class="COLLECTION">
									 ${j.juser.uname}
								</th> 
								  <th width="7%" nowrap class="COLLECTION"> 
               <a href="changeJobShow?jid=${j.jid}">修改</a>   
               
                     </th>

							</tr>			
						</c:forEach>
							

						 
							<div align="right"></div>
							</td>
							</tr>

						 
						</table>

					</td>
				</tr>
			</table>

			</FORM>
	</body>













</html>
