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


    <%@page import="java.sql.*"%>
<%
String email = (String)session.getAttribute("email");
session.setAttribute("email", email);
  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Data</title>
</head>
<style>
div.ex {
	text-align: right width:300px;
	padding: 10px;
	border: 5px solid grey;
	margin: 0px
}
</style>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<body>
	<h1 align="center">Complaint Form</h1>
	<div class="ex">
		<form action="../PostComplaints" method="post">
			<table style="with: 50%">
			
		
		<label for="subject">Complaint :</label>
    <textarea id="subject" name="complaint" placeholder="Write something.." style="height:200px" required></textarea>
				
					
			</table>
			<input type="submit" value="Post">
			
		</form>
		<br>
		
	</div>
	

</body>
</html>