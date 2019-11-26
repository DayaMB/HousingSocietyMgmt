<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%> --%>
<!DOCTYPE html>
<html lang="en">

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
<title>Owner Page</title>



<!-- Favicon  -->
<link rel="icon" href="../img/core-img/favicon.ico">

<!-- Style CSS -->
<link rel="stylesheet" href="../style.css">

</head>

<body>


	<header class="header-area">

		<!-- Main Header Area -->
		<div class="main-header-area" id="stickyHeader">
			<div class="classy-nav-container breakpoint-off">
				<!-- Classy Menu -->
				<nav class="classy-navbar justify-content-between" id="">

					<!-- Logo -->
					<a class="nav-brand" href="../Login/flat_user_home.jsp"><img
						src="../img/core-img/logoHousing.png" alt=""></a>

					<!-- Navbar Toggler -->
					<div class="classy-navbar-toggler">
						<span class="navbarToggler"><span></span><span></span><span></span></span>
					</div>

					<!-- Menu -->
					<div class="classy-menu">

						<!-- 						close btn
						<div class="classycloseIcon">
							<div class="cross-wrap">
								<span class="bottom"></span>
							</div>
						</div> -->

						<!-- Nav Start -->
						<div class="classynav">
							<ul>

								<li><a href="../Flatuser_Userside/Userinfo.jsp">My
										Profile</a> <!-- <ul class="dropdown">

								<li><a href="../Workers_UserSide/viewBookedWorkers.jsp">Manage Bookings</a></li>
<!-- 								<li><a href="../Space_UserSide/spaceDetails.jsp">View Space</a></li> -->
								<li><a href='../Visitor_info/AddVisitorInfo.jsp'>Pre-approve visitor</a></li>
								<li><a href="../camAmtBillGen/genCamBill1.jsp">Bills & Payments</a></li>
<!-- 								<li><a href="../complain_UserSide/complain_UserSide.jsp">Post a Complain</a></li> -->
								<li><a href="../Login/logout.jsp">Logout</a></li>


							<!-- Search Form -->
							<div class="south-search-form">
								<form action="#" method="post">
									<input type="search" name="search" id="search"
										placeholder="Search Anything ...">
									<button type="submit">
										<i class="fa fa-search" aria-hidden="true"></i>
									</button>
								</form>
								<!-- </div>

							Search Button
							<a href="#" class="searchbtn"><i class="fa"
								aria-hidden="true"></i></a>
						</div> -->
								<!-- Nav End -->
							</div>
				</nav>
			</div>
		</div>
	</header>
	<!-- ##### Header Area End ##### -->
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
	font-size: 17px;
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


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>

<%

String email = (String)session.getAttribute("email");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_proj","root", "root");


%>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<body>
<h1 align="center">Visitors Info</h1>
<div align="center">
<table border="1" id="t01">
<tr>

<th>Visitor Name</th>
<th>Comment</th>
<th>Date</th>
<th>Approved Time</th>
<th>Status</th>
<th></th>

</tr>
<%
try{
	PreparedStatement ps = con.prepareStatement("SELECT v_id,flat_users.flat_id,name,comment,date,createdate, status FROM flat_users INNER JOIN visitor_info ON flat_users.email = visitor_info.email where visitor_info.email=? and  status<>'new'");
	ps.setString(1, email);
    ResultSet rs;
    rs = ps.executeQuery();
    int i=0;
while(rs.next()){
%>
<tr>
<TD><%=rs.getString("name")%></TD>
<TD><%=rs.getString("comment")%></TD>
<TD><%=rs.getString("date")%></TD>
<TD><%=rs.getString("createdate")%></TD>
<TD><%=rs.getString("status")%></TD>
</tr>
<%
i++;
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
</body>
</html>