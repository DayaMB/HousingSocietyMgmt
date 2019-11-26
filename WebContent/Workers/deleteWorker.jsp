<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String w_id=request.getParameter("w_id");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_proj", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM workers WHERE w_id="+w_id);
/* out.println("Data Deleted Successfully!"); */
%>
<script type="text/javascript">
alert("Deleted !!")
location="../Workers/displayWorkers.jsp"
</script>
<%}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>