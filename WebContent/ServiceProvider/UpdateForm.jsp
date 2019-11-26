
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<style>
.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
</style>
<title>Housing Society Management | Home</title>



<!-- Favicon  -->
<link rel="icon" href="../img/core-img/favicon.ico">

<!-- Style CSS -->
<link rel="stylesheet" href="../style.css">

</head>

<body>





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
								<!-- <li><a href='../ServiceProvider/disServiceProviders.jsp'>View Service Providers</a>
								<li><a href='../Space/displaySpace.jsp'>View Space</a>
								<li><a href='../Workers/displayWorkers.jsp'>View Workers</a> -->
<!-- 								<li><a href='../camAmt/displayCam.jsp'>VIEW_CAM_AMT</a> -->
								<li><a href='../Workers/AddWorker.jsp'>Add New Worker</a>	
								
													
								
									<!-- <li><a href="serviceproviders.jsp">Services</a>
									<ul class="dropdown-content">
										<li><a href="Homeadmin.jsp">Home</a></li>
										<li><a href="about-us.html">About Us</a></li>
										<li><a href="#">Listings</a>
											<ul class="dropdown">
												<li><a href="listings.html">Listings</a></li>
												<li><a href="single-listings.html">Single Listings</a></li>
											</ul></li>
										<li><a href="#">Blog</a>
											<ul class="dropdown">
												<li><a href="blog.html">Blog</a></li>
												<li><a href="single-blog.html">Single Blog</a></li>
											</ul></li>
										<li><a href="contact.html">Contact</a></li>
										<li><a href="elements.html">Elements</a></li>
									</ul>
									</li> -->
								
								<li><a href="../Space/viewBookedSpace.jsp">Manage Bookings</a></li>
								<!-- <li><a href="blog.html">Blog</a></li>
                                 <li><a href="#">Mega Menu</a>
                                    
                                    </div> -->
								</li>
								<li><a href="../ex.jsp">Payments</a></li>
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
	<p> &nbsp;</p>
	<p> &nbsp;</p>
	<p> &nbsp; </p>
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
	


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String sp_id = request.getParameter("sp_id");
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
String sql ="select * from service_providers where sp_id="+sp_id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<!-- <style>
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
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style> -->
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form"
					action="updateSP.jsp" method="post">
					<span class="login100-form-title p-b-26"> Welcome to Housing
						Society </span> <span class="login100-form-title p-b-48"><h3>Update Service Provider Details</h3> </span> <br> 
							
						
					<div class="">
						<input class="input100" type="hidden" name="sp_id"
							value="<%=resultSet.getString("sp_id") %>" > <span
							class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input">
						Service Provider Name: <input class="input100" type="text" name="sp_name"
							value="<%=resultSet.getString("sp_name") %>"> <span
							class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input">
						Phone No: <input class="input100" type="text" name="phone_no" pattern="[6789][0-9]{9}"
							value="<%=resultSet.getString("phone_no") %>"> <span
							class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input">
						Type: <input class="input100" type="text" name="type"
							value="<%=resultSet.getString("type") %>"> <span
							class="focus-input100"></span>
					</div>


					<div class="w3-container" align="center">
						<button>
							<input type="submit" value="Update"
								class="w3-button w3-black w3-round-xxlarge">
						</button>
				</form>
			</div>
		</div>
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