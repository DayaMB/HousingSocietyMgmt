<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/mini_proj";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String sp_id= request.getParameter("sp_id");
String sp_name = request.getParameter("sp_name");
String phone_no=request.getParameter("phone_no");
String type=request.getParameter("type");
if(sp_id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(sp_id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update service_providers set sp_name=?,phone_no=?,type=? where sp_id="+sp_id;
ps = con.prepareStatement(sql);
ps.setString(1,sp_name);
ps.setString(2, phone_no);
ps.setString(3, type);
int i = ps.executeUpdate();
if(i > 0)
{
	%>
	<script type="text/javascript">
	alert("Updated")
	location="../ServiceProvider/disServiceProviders.jsp"
	</script>
	<%}
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