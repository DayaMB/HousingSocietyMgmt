<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/mini_proj";%>
<%!String user = "root";%>
<%!String psw = "student";%>
<%
String flat_id = request.getParameter("flat_id");
String sqft=request.getParameter("sqft");
String bhk=request.getParameter("bhk");
if(flat_id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(flat_id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update flat_details set flat_id=?,sqft=?,bhk=? where flat_id="+flat_id;
ps = con.prepareStatement(sql);
ps.setString(1,flat_id);
ps.setString(2, sqft);
ps.setString(3, bhk);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
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