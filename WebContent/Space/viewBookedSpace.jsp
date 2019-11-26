<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


</head>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script
	src="https://bootstrapmade.com/demo/assets/js/jquery-3.1.0.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>Housing Society Management | Home</title>



<!-- Favicon  -->
<link rel="icon" href="../img/core-img/favicon.ico">

<!-- Style CSS -->
<link rel="stylesheet" href="../style.css">

</head>

<body>

<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
	
%>
You are not logged in<br/>
<a href="home_page.jsp">Please Login</a>
<%} else {
%>



	<!-- ##### Header Area Start ##### -->
	
	<header class="header-area">

		<!-- Main Header Area -->
		<div class="main-header-area" id="stickyHeader">
			<div class="classy-nav-container breakpoint-off">
				<!-- Classy Menu -->
				<nav class="classy-navbar justify-content-between" id="">

					<!-- Logo -->
					<a class="nav-brand" href="../Login/admin_home.jsp"><img
						src="../img/core-img/logoHousing.png" alt=""></a>

					<!-- Navbar Toggler -->
					<div class="classy-navbar-toggler">
						<span class="navbarToggler"><span></span><span></span><span></span></span>
					</div>

					<!-- Menu -->
					<div class="classy-menu">

						<!-- close btn -->
						<div class="classycloseIcon">
							<div class="cross-wrap">
								<span class="top"></span><span class="bottom"></span>
							</div>
						</div>

						<!-- Nav Start -->
						
						<div class="classynav">
							<ul>



								<li><a href="../Flatuser/displayFlatUser.jsp">Users</a>
								<!-- <li><a href='../ServiceProvider/disServiceProviders.jsp'>VIEW_SERVICE_PROVIDERS</a>
								<li><a href='../Space/displaySpace.jsp'>VIEW_SPACE</a>
								<li><a href='../Workers/displayWorkers.jsp'>VIEW_WORKERS</a>
								<li><a href='../camAmt/displayCam.jsp'>VIEW_CAM_AMT</a>-->								
								
								<li><a href="Paymentadmin.jsp">Payments</a></li>
								
								<li><a href="../Login/logout.jsp">Logout</a></li>
							</ul>


							
						<!-- Nav End -->
					</div>
				</nav>
			</div>
		</div>
	</header>
	<p> &nbsp;</p>
	<p> &nbsp; </p>
	<p> &nbsp;</p>

<body>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
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
ResultSet rs = null;
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
table {
	width: 100%;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 15px;
	text-align: center;
}

table#t01 tr:nth-child(even) {
	background-color: #eee;
}

table#t01 tr:nth-child(odd) {
	background-color: #fff;
}

table#t01 th {
	background-color: black;
	color: white;
}

.btn {
	font-size: 15px;
	background-color: orange;
	border-radius: 7px;
	text-align: center;
	cursor: pointer;
}

.btn1 {
	font-size: 18px;
	background-color: red;
	border-radius: 7px;
	text-align: center;
	cursor: pointer;
}

.btn:hover {
	background-color: black;
	color: white;
}

.btn1:hover {
	background-color: black;
	color: white;
}
</style>
<h1 align="center">Booked Space</h1>
<div align="center">
<table border="" id="t01">
<div >
<tr >
<th>book Id</th>
<th>Flat Id</th>
<th>Email</th>
<th>Flat user Name</th>
<th>Phone no</th>
<th>date</th>
<th>space type</th>
<th></th>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT book_space.book_id,book_space.date,flat_users.flat_id,flat_users.email,flat_users.Fname,space.space_name, flat_users.phone_no FROM ((book_space INNER JOIN flat_users ON book_space.email = flat_users.email) INNER JOIN space ON book_space.space_id = space.space_id)";
rs = statement.executeQuery(sql);
int i=0;
while(rs.next()){
%>
<tr>
<TD><%=rs.getString("book_space.book_id")%></TD>
<TD><%=rs.getString("flat_users.flat_id")%></TD>
<TD><%=rs.getString("flat_users.email")%></TD>
<TD><%=rs.getString("flat_users.Fname")%></TD>
<TD><%=rs.getString("flat_users.phone_no")%></TD>
<TD><%=rs.getString("book_space.date")%></TD>
<TD><%=rs.getString("space.space_name")%></TD>


<%-- <td><a href="cancelBooking.jsp?book_id=<%=rs.getString("book_id")%>"><button type="button" class="btn">Cancel</button></a></td>
 --%>
<td><button type="button" onclick="myFunction()" class="btn1">Cancel</button>
				</a></td>
		</tr>
		<script>
function myFunction() {
  var txt;
  var r = confirm("Do you want to Cancel ?");
  if (r == true) {
    txt = "Confirm";
    window.location = "cancelBooking.jsp?book_id=<%=rs.getString("book_id")%>";
				} else {
					txt = "No";
				}
				document.getElementById("demo").innerHTML = txt;
			}
		</script>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<% } %>
</table>
</div>
</body>
</html>