<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
String applicationPath = basePath + "/" + "application";
%>

<html>
<head>
  <style type="TEXT/CSS">
  A:LINK{COLOR:blue;FONT-SIZE:12PT;TEXT-DECORATION:NONE}
  A:VISITED{COLOR:blue;FONT-SIZE:12PT;TEXT-DECORATION:NONE}
   A:HOVER{COLOR:red;FONT-SIZE:12PT;TEXT-DECORATION:UNDERLINE}
    
   </STYLE>

   <link rel="stylesheet" type="text/css" media="all" href="images/css1/ioa.css" />
     
<title>
用户信息列表
</title>
</head>
<body bgcolor="#ffffff"><br>
 
<p align="center">


<table width="100%" border="0" cellspacing="0" cellpadding="0" class="pad5">
  <tr>
	<td valign="top" align="left" class="pad5">
	    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="dqbg margb5">
          <tr>
            <td width="2%" align="right" class="pad05"><img src="images/img2.gif" width="16" height="16"></td>
            <td width="98%" align="left" class="lan13b">用户管理 > 查看用户</td>
          </tr>
        </table>
         <form action="chadoctor" method="post">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="dqbg margb5">
          <tr>
            <td  align="center" class="lan13b">
               客户姓名： <input  name="ysxm" value=""   maxlength="32"/>
            <input type="submit"  name="button" value="查询" class="button">
           
            </td>
           
          </tr>
        </table>
        </form>
		<table border="0" cellspacing="0" cellpadding="0" class="margb5">
          <tr>
        <!----------------------------   新增按钮 ------------------------------------------->
        
            <td width="61" align="left" class="padr5"><input type="image" src="images/pic-13.jpg" onClick="window.location.href='addclient.jsp'"></td>
           
          </tr>
        </table>
       
	    <table width="100%" border="0" cellspacing="1" cellpadding="0" class="table-border margb5">
		  <tr>
			<td colspan="11" align="left" class="tabbg"><img src="images/main_pic_1.gif" align="absmiddle" width="16" height="16">&nbsp;<span class="lan13b"></span></td>
	      </tr>
	  
		  <tr>
 
                  <th width="5%" nowrap class="COLLECTION"> 
                    姓名</th>
                             <th width="3%" nowrap class="COLLECTION"> 
                    性别</th> 
                              <th width="3%" nowrap class="COLLECTION"> 
                   
                    年龄</th> 
                  <th width="5%" nowrap class="COLLECTION">电话</th>
                     
                     <th width="5%" nowrap class="COLLECTION">邮箱</th>
                  <th width="7%" nowrap class="COLLECTION"> 职业</th>
                    <th width="7%" nowrap class="COLLECTION"> 
                   
                    状态</th>
                  <th width="5%" nowrap class="COLLECTION"> 
                  
                  客户描述</th>
                  <th width="7%" nowrap class="COLLECTION"> 
                  
                 客户所属区域 </th>
                 <!--  <th width="7%" nowrap class="COLLECTION"> 
                  
                    照片</th> -->
                 <!--  <th width="7%" nowrap class="COLLECTION"> 
                  
                    所属员工</th> -->
                 
                 
                  <th width="7%" nowrap class="COLLECTION"> 
                  
                    管理</th>
                 
		  </tr>
        
        
        
        <!--  ``````````````````````````````````````` -->
        <c:forEach var="client" items="${allClient }">
         <tr>
 
                  <th width="5%" nowrap class="COLLECTION"> 
                   ${client.cname }</th>
                             <th width="3%" nowrap class="COLLECTION"> 
                 ${client.csex }</th> 
                              <th width="3%" nowrap class="COLLECTION"> 
            ${client.cage }</th> 
                  <th width="5%" nowrap class="COLLECTION">${client.cphone }</th>
                     
                     <th width="5%" nowrap class="COLLECTION">${client.cemail }</th>
                  <th width="7%" nowrap class="COLLECTION"> ${client.cprofession }</th>
                    
                    <th width="7%" nowrap class="COLLECTION"> 
                    <c:if test="${client.cstate==0 }">
                       <span style="color: green;">潜在客户</span>
                   </c:if>
                   
                   <c:if test="${client.cstate==1 }">
                       <span style="color: black;">新客户</span>
                   </c:if>
                   
                   <c:if test="${client.cstate==2 }">
                       <span style="color: navy;">老客户</span>
                   </c:if>
                       
                   </th>
                  <th width="5%" nowrap class="COLLECTION"> 
                  
                    ${client.ccontext }</th>
                  <th width="7%" nowrap class="COLLECTION"> 
                  
                  湖南${client.clocation.ashi }</th>
                  
                  <%-- <th width="7%" nowrap class="COLLECTION"> 
                  
                  ${client.userid.uname }</th> --%>
                 
                 
                  <th width="7%" nowrap class="COLLECTION"> 
                  
                  <a style="font-size: 13px;font-weight: bold;color:#003893; " href="showOneClient?cid=${client.cid }&option=1">修改</a>
                  <a style="font-size: 13px;font-weight: bold;color:#003893; " href="showOneClient?cid=${client.cid }&option=2">&nbsp;&nbsp;&nbsp;&nbsp;查看</a>
                    </th>
                 
		  </tr>
 		</c:forEach>
		 
   
    
		<div align="right"></div> </td>
    </tr>

   <tr class="even"> 

<FORM Action="list_user.jsp" Method="GET">

 <tr>
		    <td colspan="11" align="right" class="tabbg hei12">


&nbsp;输入页数：<input TYPE="TEXT" Name="Page" SIZE="3">
<INPUT TYPE="submit" value="提交">



              </td>
	      </tr>
		</table>
		 
	</td>
  </tr>
</table>

</FORM>




</body>













</html>
