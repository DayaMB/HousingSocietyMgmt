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
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #3e8e41;
}
</style>
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

	<header class="header-area">

		<!-- Main Header Area -->
		<div class="main-header-area" id="stickyHeader">
			<div class="classy-nav-container breakpoint-off">
				<!-- Classy Menu -->
				<nav class="classy-navbar justify-content-between" id="">

					<!-- Logo -->
					<a class="nav-brand" href="admin_home.jsp"><img
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



								<li><a href="../Flatuser/displayFlatUser.jsp">Users</a> <!-- <li><a href='../ServiceProvider/disServiceProviders.jsp'>View Service Providers</a>
								<li><a href='../Space/displaySpace.jsp'>View Space</a>
								<li><a href='../Workers/displayWorkers.jsp'>View Workers</a> -->
									<!-- 								<li><a href='../camAmt/displayCam.jsp'>VIEW_CAM_AMT</a> -->
								<li><a href='../Workers/AddWorker.jsp'>Add New Worker</a>
								<li><a href="../ex.jsp">Manage Bookings</a></li>
								<!-- <li><a href="blog.html">Blog</a></li>
                                 <li><a href="#">Mega Menu</a>
                                    
                                    </div> -->
								</li>
								<li><a href="../ex.jsp">Payments</a></li>
								<li><a href="logout.jsp">Logout</a></li>
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
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<!-- ##### Header Area End ##### -->






	<div class="container">
		<div class="row">
			<div class="w3-white w3-hover-shadow w3-padding-64 w3-center">
				<h3>Edit Service Providers</h3>
				<img src="../img/bg-img/serviceprovider.jpg" width="350" height="200" alt="" />
				<p>
					<strong> Service Providers</strong>
				</p>
				<button>
					<a href="../ServiceProvider/disServiceProviders.jsp"
						class="w3-button w3-black w3-round-xxlarge">Click Here</a>
				</button>
			</div>



			<div class="w3-white w3-hover-shadow w3-padding-64 w3-center"
					align="center">
					<h3>Edit Space</h3>
					<img src="../img/bg-img/space.jpg" width="350"
						height="200" alt="" />
					<p>
						<strong>View Space</strong>
					</p>
					<br>

					<button>
						<a href="../Space/displaySpace.jsp"
							class="w3-button w3-black w3-round-xxlarge">Click Here</a>
					</button>

				</div>


				<div class="w3-white w3-hover-shadow w3-padding-64 w3-center"
					align="center">
					<h3>Edit Workers</h3>
					<img src="../img/bg-img/workers.jpg" width="350" height="250"
						alt="" />
					<p>
						It <strong>Registers all the Workers</strong><br> <strong>Any
							Outside Registered Workers </strong>
					</p>                                                                                               
					<br>

					<button>
						<a href="../Workers/displayWorkers.jsp"
							class="w3-button w3-black w3-round-xxlarge">Click Here</a>
					</button>

				</div> <!-- <div class="w3-white w3-hover-shadow w3-padding-64 w3-center">
      <h3>Register User</h3>        
      <img src="img/bg-img/feature8.jpg" width="350" height="200" alt="" />
      <p> It
      <strong>Registers all type of users</strong></p>
      To post or view queries related .
      <button><a href="Login.html" class="w3-button w3-light-grey w3-block">Click Here</a></button>

    </div> -->
			
		</div>
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
<%
	}
%>

</body>

</html>