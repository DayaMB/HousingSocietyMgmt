<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/mini_proj";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String type_id= request.getParameter("type_id");
String type = request.getParameter("type");

if(type_id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(type_id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update worker_type set type=? where type_id="+type_id;
ps = con.prepareStatement(sql);

ps.setString(1, type);
int i = ps.executeUpdate();
if(i > 0)
{
	%>
	<script type="text/javascript">
	alert("Updated")
	location="../WorkerType/displayWorkerType.jsp"
	</script>
	<%
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>