<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/mini_proj";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String c_id= request.getParameter("c_id");

if(c_id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(c_id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update complaints set status='resolved' where c_id="+c_id;
ps = con.prepareStatement(sql);

int i = ps.executeUpdate();
if(i > 0)
{
	%>
	<script type="text/javascript">
	alert("Complaint Resolved")
	location="../ComplaintAdminSide/viewComplaints.jsp"
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