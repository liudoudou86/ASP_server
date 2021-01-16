<meta charset="utf-8">
<%@LANGUAGE = "VBScript" CodePage = "65001"%>
<!-- #include file = 'conn.asp' -->
<%
	sql="UPDATE Service SET NAME='"&request.form("NAME")&"',START_DATE='"&request.form("START_DATE")&"',END_DATE='"&request.form("END_DATE")&"' where  ID='"&request.form("ID")&"'"
	rs.Open sql,conn,1,3
	response.write "<script>alert('修改成功！');location.href='index.asp';</script>"
%>