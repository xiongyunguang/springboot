<%@ page contentType="text/html; charset=utf-8" %>

<HTML>
<HEAD>
<TITLE>CRM</TITLE>
<style type="text/css">
<!--
a{ color:#008EE3}
a:link  { text-decoration: none;color:#008EE3}
A:visited {text-decoration: none;color:#666666}
A:active {text-decoration: underline}
A:hover {text-decoration: underline;color: #0066CC}
A.b:link {
	text-decoration: none;
	font-size:12px;
	font-family: "Helvetica,微软雅黑,宋体";
	color: #FFFFFF;
}
A.b:visited {
	text-decoration: none;
	font-size:12px;
	font-family: "Helvetica,微软雅黑,宋体";
	color: #FFFFFF;
}
A.b:active {
	text-decoration: underline;
	color: #FF0000;

}
A.b:hover {text-decoration: underline; color: #ffffff}

.table1 {
	border: 1px solid #CCCCCC;
}
.font {
	font-size: 12px;
	text-decoration: none;
	color: #999999;
	line-height: 20px;
	

}
.input {
	font-size: 12px;
	color: #999999;
	text-decoration: none;
	border: 0px none #999999;


}

td {
	font-size: 12px;
	color: #007AB5;
}
form {
	margin: 1px;
	padding: 1px;
}
input {
	border: 0px;
	height: 26px;
	color: #007AB5;

	.unnamed1 {
	border: thin none #FFFFFF;
}
.unnamed1 {
	border: thin none #FFFFFF;
}
select {
	border: 1px solid #cccccc;
	height: 18px;
	color: #666666;

	.unnamed1 {
	border: thin none #FFFFFF;
}
body {
	background-repeat: no-repeat;
	background-color: #9CDCF9;
	background-position: 0px 0px;

}
.tablelinenotop {
	border-top: 0px solid #CCCCCC;
	border-right: 1px solid #CCCCCC;
	border-bottom: 0px solid #CCCCCC;
	border-left: 1px solid #CCCCCC;
}
.tablelinenotopdown {

	border-top: 1px solid #eeeeee;
	border-right: 1px solid #eeeeee;
	border-bottom: 1px solid #eeeeee;
	border-left: 1px solid #eeeeee;
}
.style6 {FONT-SIZE: 9pt; color: #7b8ac3; }

-->
</style>

<SCRIPT language="JavaScript">
function login() {

	if(form1.username.value==""){
		alert("用户名不能为空，请确定后重新输入");
		form1.username.focus();
		return false;
	}
	if(form1.password.value==""){
	alert("密码不能为空，请确定后重新输入");
	form1.password.focus();
	return false;
	}
	return true;
}
 
</script>
</HEAD>

<body  >
<table width="681" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:120px">
  <tr>
    <td width="353" height="259" align="center" valign="bottom" background="images/login_1.gif"><table width="90%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td align="right" valign="bottom" style="color:#05B8E4"><a href="#" >牛耳</a>2019</td>
      </tr>
    </table></td>
    <td width="195" background="images/login_2.gif"><table width="190" height="106" border="0" align="center" cellpadding="2" cellspacing="0">
      <form name="form1" method="post" action="loginuser" enctype＝application/x-www-form-urlencoded>
            <tr>
              <td height="50" colspan="2" align="left">&nbsp;</td>
            </tr>
            <tr>
              <td width="60" height="30" align="left">账号</td>
              <td><input name="account" type="text" style="background:url(images/login_6.gif) repeat-x; border:solid 1px #27B3FE; height:20px; background-color:#FFFFFF" id="UserName" size="14"></td>
            </tr>
            <tr>
              <td height="30" align="left">密  码</td>
              <td><input name="password" type="password" style="background:url(images/login_6.gif) repeat-x; border:solid 1px #27B3FE; height:20px; background-color:#FFFFFF" id="Password" size="14"></td>
            </tr>
           
            <tr>
              <td height="40" colspan="2" align="center"><img src="images/tip.gif" width="16" height="16"> 请勿非法登陆！</td>
          <tr>
              <td colspan="2" align="center"><input type="submit" name="submit"  onClick="return login()" style="background:url(images/login_5.gif) no-repeat" value=" 登  陆 "> 
			  <input type="reset" name="Submit" style="background:url(images/login_5.gif) no-repeat" value=" 取  消 "></td>
            <tr>
              <td height="5" colspan="2"></td>
        </form>
    </table></td>
    <td width="133" background="images/login_3.gif">&nbsp;</td>
  </tr>
  <tr>
    <td height="161" colspan="3" background="images/login_4.gif"></td>
  </tr>
</table>
 
</BODY>
</HTML>

