<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String space_id = request.getParameter("space_id");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "mini_proj";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from space where space_id="+space_id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: black;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 25px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<body>
<h1 align="center">Update Space Details</h1>
<div align="center">
<form method="post" action="updateSpace.jsp">

<input type="hidden" name="space_id" value="<%=resultSet.getString("space_id") %>">
Space name:
<input type="text" name="space_name" value="<%=resultSet.getString("space_name") %>" required>
<br>
	Amount:
<input type="text" name="amount" value="<%=resultSet.getString("amount") %>" required>
<br>
Availability:
<%-- <input type="text" name="availability" value="<%=resultSet.getString("availability") %>"> --%>
<select name="availability" required><option value=""><---Select---></option>
                      <option value="Yes">Yes</option>
                      <option value="No">No</option></select>
<br>



<input type="submit" value="submit">
</form>
</div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>