<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/mini_proj";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String book_id= request.getParameter("book_id");

if(book_id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(book_id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="delete from book_space where book_id="+book_id;
ps = con.prepareStatement(sql);

int i = ps.executeUpdate();
if(i > 0)
{
	%>
	<script type="text/javascript">
	alert("Cancelled")
	location="../Space/viewBookedSpace.jsp"
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