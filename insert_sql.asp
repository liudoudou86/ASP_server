<meta charset="utf-8">
<%@LANGUAGE = "VBScript" CodePage = "65001"%>
<!-- #include file = 'conn.asp' -->
<%
	sql="INSERT INTO Service (IP,NAME,START_DATE,END_DATE) VALUES ('"&request.form("IP")&"','"&request.form("NAME")&"','"&request.form("START_DATE")&"','"&request.form("END_DATE")&"')"
	rs.Open sql,conn,1,1
	response.write "<script>alert('添加成功！');location.href='index.asp';</script>"
%>