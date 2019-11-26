<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String book_id=request.getParameter("book_id");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_proj", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM book_worker WHERE book_id="+book_id);%>
<script type="text/javascript">
alert("Deleted !!")
location="viewBookedWorkers.jsp"
</script>
<%
/* out.println("Data Deleted Successfully!"); */
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>