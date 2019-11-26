<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String sl_no=request.getParameter("sl_no");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_proj", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM flat_users WHERE sl_no="+sl_no);
/* out.println("Data Deleted Successfully!"); */
%>
<script type="text/javascript">
alert("Deleted !")
location="../Flatuser/displayFlatUser.jsp"
</script>
<%}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>