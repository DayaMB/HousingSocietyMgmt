<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String type_id=request.getParameter("type_id");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_proj", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM worker_type WHERE type_id="+type_id);
%>
<script type="text/javascript">
alert("Deleted !!")
location="../WorkerType/displayWorkerType.jsp"
</script>
<%}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>