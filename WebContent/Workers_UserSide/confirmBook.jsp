<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.Date" %>
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/mini_proj";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String email = (String)session.getAttribute("email");
String w_id=request.getParameter("w_id");
String date=request.getParameter("date");


if(w_id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(w_id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="INSERT INTO book_worker (`email`, `w_id`) VALUES (?,?)";
ps = con.prepareStatement(sql);
ps.setString(1,email);
ps.setString(2, w_id);



int i = ps.executeUpdate();
if(i > 0)
{
%>
<script type="text/javascript">
alert("inserted")
location="viewBookedWorkers.jsp"
</script>
<%
}
else
{
	%>
	<script type="text/javascript">
alert("Not inserted")
</script>
	
	<%

}
}
catch(SQLException sql)
{
	sql.printStackTrace();
	%>
	
	<script type="text/javascript">
alert("You have already Booked the this Worker !")
location="viewBookedWorkers.jsp"
</script>
	
	<%
}
}
%>