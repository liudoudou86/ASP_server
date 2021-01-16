<meta charset="utf-8">
<%@LANGUAGE = "VBScript" CodePage = "65001"%>
<!-- #include file = 'conn.asp' -->
<%
	sql="DELETE FROM Service where ID='"&request("ID")&"'"
	rs.Open sql,conn,1,3
	response.write "<script>alert('删除成功！');location.href='index.asp';</script>"
%>