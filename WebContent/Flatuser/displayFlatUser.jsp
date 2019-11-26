<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
	You are not logged in
	<br />
	<a href="home_page.jsp">Please Login</a>
	<%
		} else {
	%>



	<!-- ##### Header Area Start ##### -->

	<header class="header-area"> <!-- Main Header Area -->
	<div class="main-header-area" id="stickyHeader">
		<div class="classy-nav-container breakpoint-off">
			<!-- Classy Menu -->
			<nav class="classy-navbar justify-content-between" id=""> <!-- Logo -->
			<a class="nav-brand" href="../Login/admin_home.jsp"><img
				src="../img/core-img/logoHousing.png" alt=""></a> <!-- Navbar Toggler -->
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



						<li><a href="../Flatuser/displayFlatUser.jsp">Users</a> <!-- <li><a href='../ServiceProvider/disServiceProviders.jsp'>VIEW_SERVICE_PROVIDERS</a>
								<li><a href='../Space/displaySpace.jsp'>VIEW_SPACE</a>
								<li><a href='../Workers/displayWorkers.jsp'>VIEW_WORKERS</a>
								<li><a href='../camAmt/displayCam.jsp'>VIEW_CAM_AMT</a>-->
						<li><a href="../Space/viewBookedSpace.jsp">Manage Bookings</a></li>
						
						<li><a href="../Login/logout.jsp">Logout</a></li>
					</ul>


					<!-- Search Form -->
					<div class="south-search-form">
						<form action="#" method="post">
							<input type="search" name="search" id="search"
								placeholder="Search Anything ...">
							<button type="submit">
								<i class="fa fa-search" aria-hidden="true"></i>
							</button>
						</form>
					</div>

					<!-- Search Button -->
					<a href="#" class="searchbtn"><i class="fa" aria-hidden="true"></i></a>
				</div>
				<!-- Nav End -->
			</div>
			</nav>
		</div>
	</div>
	</header>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<!-- ##### Header Area End ##### -->

	<style>
select#soflow-color {
	color: #fff;
	background-color: black;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	padding-left: 50px;
	padding-right: 50px;
}
</style>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<link rel="icon" type="image/png"
		href="../LoginContent/images/icons/favicon.ico" />
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css"
		href="../LoginContent/vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css"
		href="../LoginContent/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css"
		href="../LoginContent/fonts/iconic/css/material-design-iconic-font.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css"
		href="../LoginContent/vendor/animate/animate.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css"
		href="../LoginContent/vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css"
		href="../LoginContent/vendor/animsition/css/animsition.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css"
		href="../LoginContent/vendor/select2/select2.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css"
		href="../LoginContent/vendor/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css"
		href="../LoginContent/css/util.css">
	<link rel="stylesheet" type="text/css"
		href="../LoginContent/css/main.css">

	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<!--===============================================================================================-->
</head>
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
	<table id="t01">
		<tr>
			<th>SerialNumber</th>
			<th>FirstName</th>
			<th>MiddleName</th>
			<th>LastName</th>
			<th>Email</th>
			<th>pswd</th>
			<th>FlatNo</th>
			<th>PhoneNo</th>
			<th></th>
			<th></th>
		</tr>
		<%
			try {
					connection = DriverManager.getConnection(connectionUrl + database, userid, password);
					statement = connection.createStatement();
					String sql = "select * from flat_users";
					rs = statement.executeQuery(sql);
					int i = 0;
					while (rs.next()) {
		%>
		<tr>
			<TD><%=rs.getString("sl_no")%></TD>
			<TD><%=rs.getString("fname")%></TD>
			<TD><%=rs.getString("mname")%></TD>
			<TD><%=rs.getString("lname")%></TD>
			<TD><%=rs.getString("email")%></TD>
			<TD><%=rs.getString("pswd")%></TD>
			<TD><%=rs.getString("flat_id")%></TD>
			<TD><%=rs.getString("phone_no")%></TD>
			<td><a href="UpdateForm.jsp?sl_no=<%=rs.getString("sl_no")%>"><button
						type="button" class="btn">Update</button></a></td>
			<%--<td> <a
				href="deleteFlatUser.jsp?sl_no=<%=rs.getString("sl_no")%>"><button
						type="button" class="btn1"  onclick="myFunction()">Delete</button></a> </td>--%>
			

<td><button  onclick="myFunction()" class="btn1">Delete</button></a></td>
</tr>			
<script>
function myFunction() {
  var txt;
  var r = confirm("Do you want to Cancel ?");
  if (r == true) {
    txt = "Confirm";
    window.location = "deleteFlatUser.jsp?sl_no=<%=rs.getString("sl_no")%>";
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
	</table>
	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script src="../vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/bootstrap/js/popper.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/daterangepicker/moment.min.js"></script>
	<script src="../vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="../js/main.js"></script>
	<%
		}
	%>
</body>
</html>