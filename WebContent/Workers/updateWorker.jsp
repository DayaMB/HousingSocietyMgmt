<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/mini_proj";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String w_id= request.getParameter("w_id");
String wname = request.getParameter("wname");
String type =request.getParameter("type");
String phone_no=request.getParameter("phone_no");
if(w_id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(w_id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update workers set wname=?,phone_no=?,type=? where w_id="+w_id;
ps = con.prepareStatement(sql);
ps.setString(1,wname);
ps.setString(2, phone_no);
ps.setString(3, type);
int i = ps.executeUpdate();
if(i > 0)
{
/* out.print("Record Updated Successfully"); */
	%>
	<script type="text/javascript">
	alert("Updated")
	location="../Workers/displayWorkers.jsp"
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