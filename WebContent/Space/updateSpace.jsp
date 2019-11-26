<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/mini_proj";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String space_id= request.getParameter("space_id");
String space_name = request.getParameter("space_name");
String amount=request.getParameter("amount");
String availability=request.getParameter("availability");
if(space_id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(space_id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update space set space_name=?,amount=?,availability=? where space_id="+space_id;
ps = con.prepareStatement(sql);
ps.setString(1,space_name);
ps.setString(2, amount);
ps.setString(3, availability);
int i = ps.executeUpdate();
if(i > 0)
{
/* out.print("Record Updated Successfully"); */
	%>
	<script type="text/javascript">
	alert("Updated")
	location="../Space/displaySpace.jsp"
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