<%@ page contentType="text/html; charset=utf-8"%>
<head>
	<title>医院管理系统</title>
	<link href="../images/css1/left_css.css" rel="stylesheet" type="text/css">
</head>
<SCRIPT language=JavaScript>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}

function loginout(){
	 
   parent.window.location.href = "login.jsp";
}
</SCRIPT>
<body bgcolor="16ACFF">

	 
	<table width="98%" border="0" cellpadding="0" cellspacing="0"
		background="../images/tablemde.jpg">






		<tr>
			<td height="5" background="../images/tableline_top.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		 
						 
		<tr>
			<td height="5" background="images/tableline_bottom.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td height="5" background="images/tableline_top.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		  
 


		<tr>
			<td height="5" background="../images/tableline_bottom.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td height="5" background="../images/tableline_top.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td>
				<TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%"
					align=right border=0>
					<TBODY>
						<TR>
							<TD height="25"
								style="background: url(../images/left_tt.gif) no-repeat">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<TD width="20"></TD>
										<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(7);
											height=25>
											查看
										</TD>
									</tr>
								</table>
							</TD>
						</TR>
						<TR>
							<TD>
								<TABLE id=submenu7 cellSpacing=0 cellPadding=0 width="100%"
									border=0>
									<TBODY>
										<TR>
											<TD width="2%">
												<IMG src="../images/closed.gif">
											</TD>
											<TD height=23>
												<A href="../findclient.jsp" target=main>查看所有客户</A>
											</TD>
										</TR>
										<TR>
											<TD width="2%">
												<IMG src="../images/closed.gif">
											</TD>
											<TD height=23>
												<A href="../findcontract.jsp" target=main>查看所有合同</A>
											</TD>
										</TR>
<TR>
											<TD width="2%">
												<IMG src="../images/closed.gif">
											</TD>
											<TD height=23>
												<A href="../findusers.jsp" target=main>查看所有员工</A>
											</TD>
										</TR>

									</TBODY>
								</TABLE>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</td>
		</tr>


		 

 

 
		<tr>
			<td>
				<TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%"
					align=right border=0>
					<TBODY>
						<TR>
							<TD height="25"
								style="background: url(../images/left_tt.gif) no-repeat">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<TD width="20"></TD>
										<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(5);
											height=25>
											系统管理
										</TD>
									</tr>
								</table>
							</TD>
						</TR>
						<TR>
							<TD>
								<TABLE id=submenu5 cellSpacing=0 cellPadding=0 width="100%"
									border=0>
									<TBODY>
										<TR>
											<TD width="2%">
												<IMG src="../images/closed.gif">
											</TD>
											<TD height=23>
												<A href="pwd.jsp" target=main>修改密码</A>
											</TD>
										</TR>
										<TR>
											<TD width="2%">
												<IMG src="../images/closed.gif">
											</TD>
											<TD height=23>
												<A href="../tuichu"   target=_top>退出系统</A>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</td>
		</tr>

		<tr>
			<td height="5" background="../images/tableline_bottom.jpg"></td>
		</tr>
	</table>
</body>
</html>