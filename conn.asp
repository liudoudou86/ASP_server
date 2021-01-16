<%
dim conn
set conn = server.createobject("adodb.connection")
conn.open "Driver={SQL Server}; Server=DESKTOP-JK6FVL4\SQLEXPRESS; Database=select; Uid=sa; Pwd=123;"
dim rs,sql
set rs = server.createobject("adodb.recordset")
%>