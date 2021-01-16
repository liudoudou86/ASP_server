<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<%@LANGUAGE = "VBScript" CodePage = "65001"%>
	<title>新增</title>
</head>
<body bgcolor="Azure">
	<!-- #include file = 'conn.asp' -->
	<form method="post" action="insert_sql.asp">
	设备名：<input type="text" name="IP"><br>
	借用人姓名：<input type="text" name="NAME"><br>
	手机号：<input type="text" name="START_DATE"><br>
	还借状态：<input type="text" name="END_DATE"><br>
	<input type="Submit">
	<form>
</body>