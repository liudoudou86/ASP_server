<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<%@LANGUAGE = "VBScript" CodePage = "65001"%>
	<title>修改</title>
</head>
<body bgcolor="Azure">
	<!-- #include file = 'conn.asp' -->
	<%
		sql="select * from service where ID='"&request("ID")&"'"
		rs.Open sql,conn,1,1
	%>
	<form method="post" action="update_sql.asp">
	<input type="hidden" name="ID" value="<%=request("ID")%>">
	<input type="hidden" name="IP" value="<%=request("IP")%>">
	借用人姓名：<input type="text" name="NAME" value="<%=rs.Fields.Item("NAME")%>"><br>
	手机号：<input type="text" name="START_DATE" value="<%=rs.Fields.Item("START_DATE")%>"><br>
	还借状态：<input type="text" name="END_DATE" value="<%=rs.Fields.Item("END_DATE")%>"><br>
	<input type="Submit" value="确认">
	<form>
</body>