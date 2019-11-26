<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/mini_proj";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String v_id= request.getParameter("v_id");

if(v_id != null)
{
Connection con = null;

int personID = Integer.parseInt(v_id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);

String query = "{CALL updateVisitor(?)}";
CallableStatement stmt = con.prepareCall(query);
stmt.setString(1, v_id);

int i = stmt.executeUpdate();
if(i > 0)	
{
	{
		/* out.print("Record Updated Successfully"); */
			%>
			<script type="text/javascript">
			alert("Vistor Approved")
			location="../Visitor_GK_side/ViewVisitorDetails.jsp"
			</script>
			<%
		}
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