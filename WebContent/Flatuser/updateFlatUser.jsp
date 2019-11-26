<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/mini_proj";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String sl_no = request.getParameter("sl_no");
String Fname = request.getParameter("fname");
String Mname=request.getParameter("mname");
String Lname=request.getParameter("lname");
String email=request.getParameter("email");
String pswd=request.getParameter("pswd");
String flat_id=request.getParameter("flat_id");
String phone_no=request.getParameter("phone_no");
if(flat_id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(sl_no);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update flat_users set fname=?,mname=?,lname=?, email=?, flat_id=?, pswd=?, phone_no=? where sl_no="+sl_no;
ps = con.prepareStatement(sql);
ps.setString(1,Fname);
ps.setString(2, Mname);
ps.setString(3, Lname);
ps.setString(4, email);
ps.setString(5, flat_id);
ps.setString(6, pswd);
ps.setString(7, phone_no);
int i = ps.executeUpdate();
if(i > 0)
{
/* out.print("Record Updated Successfully"); */
	%>
	<script type="text/javascript">
	alert("Updated")
	location="../Flatuser/displayFlatUser.jsp"
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
/* request.setAttribute("error", sql); */
response.sendRedirect("../sqlerr.jsp");
/* out.println(sql); */
}
}
%>