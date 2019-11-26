<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String flat_id = request.getParameter("flat_id");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "mini_proj";
String userid = "root";
String password = "student";
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
String sql ="select * from flat_details where flat_id="+flat_id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="update-process1.jsp">
<input type="hidden" name="flat_id" value="<%=resultSet.getString("flat_id") %>">
<br>
		FLAT  ID:<br>
<input type="text" name="flat_id" value="<%=resultSet.getString("flat_id") %>">
<br>
SQFT:<br>
<input type="text" name="sqft" value="<%=resultSet.getString("sqft") %>">
<br>
BHK:<br>
<input type="text" name="bhk" value="<%=resultSet.getString("bhk") %>">
<br>

<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>