<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<%@LANGUAGE = "VBScript" CodePage = "65001"%>
	<title>设备借用管理</title>
</head>
<body bgcolor="Azure">
	<!-- #include file = 'conn.asp' -->
	<button onclick="location.href='insert.asp'">新增</button>
	<table border="1">
		<thead>
			<tr>
				<th>设备名称</th>
				<th>借用人姓名</th>		
				<th>手机号</th>		
				<th>还借状态</th>
				<th>操作</th>				
			</tr>
		</thead>
		<tbody>
				<%
				sql = "select * from service"
				rs.Open sql,conn,1,1
				dim i
				for i =1 to rs.recordcount
					Response.write "<tr>"
					Response.write "<td>"&rs.Fields.Item("IP")&"</td>"
					Response.write "<td>"&rs.Fields.Item("NAME")&"</td>"
					Response.write "<td>"&rs.Fields.Item("START_DATE")&"</td>"
					Response.write "<td>"&rs.Fields.Item("END_DATE")&"</td>"
					Response.write "<td><a href='update.asp?ID="&rs.Fields.Item("ID")&"' target='_blank'>修改</a>&nbsp;&nbsp;&nbsp;<a href='javascript:;' onclick='remove("&rs.Fields.Item("ID")&")' target='_blank'>删除</a></td>"
					Response.write "</tr>"
					rs.move 1
				next
				%>
		</tbody>
		<script type="text/javascript">
			function remove(i)
			{
				if(confirm("你是否确定删除该条记录？"))
				{
					location.href='delete_sql.asp?ID='+i+'';
				}
			}
		</script>
	</table>
</body>
</html>