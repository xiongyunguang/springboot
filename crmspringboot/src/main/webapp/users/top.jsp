<%@ page contentType="text/html; charset=GBK" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>顶部页面</title>
<link href="../images/css1/top_css.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#03A8F6">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="194" height="60" align="center" background="images/top_logo.jpg"></td><!-- log -->
    <td align="center" style="background:url(images/top_bg.jpg) no-repeat"><table cellspacing="0" cellpadding="0" border="0" width="100%" height="33">
      <tbody>
        <tr>
          <td width="30" align="left"> </td>
          <td width="320" align="left"> 
          
		      <span class="top_link"> </span> <a class="top_link" 
            href="#" >当前用户:${sessionScope.admin.AName}</a> </td>
              
          <td width="80" align="right" nowrap="nowrap" class="topbar"> </td>
          <td class="topbar">&nbsp;</td>
        </tr>
      </tbody>
    </table>
    <table height="26" border="0" align="left" cellpadding="0" cellspacing="0" class="subbg" NAME=t1>
      <tbody>

      </tbody>
    </table></td>
  </tr>
  <tr height="6">
    <td bgcolor="#1F3A65" background="../images/top_bg.jpg"></td>
  </tr>
</table>
<script language="javascript">
 
</script></body>
</html>

