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
										Profile</a> 
								<li><a href="../Visitor_info/AddVisitorInfo.jsp">Pre-Approve Visitor</a></li>
								<li><a
									href="../ServiceProvider_UserSide/ServiceProviderDetails.jsp">View
										Service Providers</a></li>
								<li><a href="../Flatuser_Userside/categoryBookings.jsp">Manage Bookings</a></li>
								
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
	<%
		String email = (String) session.getAttribute("email");
		session.setAttribute("email", email);
	%>
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

div1 {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<script type="text/javascript">
$(function(){
    var dtToday = new Date();
    
    var month = dtToday.getMonth() + 1;
    var day = dtToday.getDate();
    var year = dtToday.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
        day = '0' + day.toString();
    
    var minDate= year + '-' + month + '-' + day;
    
    $('#txtDate').attr('min', minDate);
});</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<body>
	<h1 align="center">Add Visitor</h1>
	<div class="div1" align="center">

		<form action="../Visitor_info" method="post">
			<table style="with: 100%">
				<tr>
					<td></td>
					<td><input type="hidden" name="v_id" /></td>
				</tr>

				<tr>
					
					<td>Name:<input type="text" name="name" required /></td>
				</tr>
				<tr>
					
					<td>Comment<input type="text" name="comment" required /></td>
				</tr>

				<tr>
					
					<td>Date:<br><br>
					<input type="date" name="date" id="txtDate" required/></td>
				</tr>
			</table>
			<!-- <input type="submit" value="register" /> -->
			<p>&nbsp;</p>
			<div align="center">
				<button type="submit" class="btn btn-primary" value="submit" >Register</button>
			</div>
		</form>

		<br>

	</div>


	<!-- jQuery (Necessary for All JavaScript Plugins) -->
	<script src="../js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="../js/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="../js/bootstrap.min.js"></script>
	<!-- Plugins js -->
	<script src="../js/plugins.js"></script>
	<script src="../js/classy-nav.min.js"></script>
	<script src="../js/jquery-ui.min.js"></script>
	<!-- Active js -->
	<script src="../js/active.js"></script>


</body>
</html>