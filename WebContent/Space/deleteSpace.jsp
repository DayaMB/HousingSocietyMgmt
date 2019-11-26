<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String space_id=request.getParameter("space_id");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_proj", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM space WHERE space_id="+space_id);
/* out.println("Data Deleted Successfully!"); */
%>
<script type="text/javascript">
alert("Deleted !!")
location="../Space/displaySpace.jsp"
</script>
<%
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>