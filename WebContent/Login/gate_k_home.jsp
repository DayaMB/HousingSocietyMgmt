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
<title>Gatekeeper Page</title>



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
					<a class="nav-brand" href="../Login/gate_k_home.jsp"><img
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
								<!--<li><a href='../Visitor_GK_side/ViewVisitorDetails.jsp'>VIEW_FLAT_USERS</a></li>
								<li><a href='../Workers_GK_side/sam.html'>search worker</a></li>
								<li><a href='../Workers_GK_side/ViewWorkersDetails.jsp'>
										Workers details</a></li>-->

								<li><a href="logout.jsp">Logout</a></li>
							</ul> 


							<!-- Search Form -->
							<div class="south-search-form">
								<form action="../Workers_GK_side/search.jsp" method="post">
									<input type="search" name="wname" id="search"
										placeholder="Search Worker ...">

									<button type="submit">
										<i class="fa fa-search" aria-hidden="true"></i>
									</button>
								</form>
							</div>

						
								<!-- Search Button -->
							<a href="#" class="searchbtn"><i class="fa"
								aria-hidden="true"></i></a>
						</div> 
						</div>
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
	
	<div class="container">
		<div class="row">
			<div class="w3-white w3-hover-shadow w3-padding-64 w3-center">
					<h3>Manage Visitors</h3> <img src="../img/bg-img/visitors.png"
					width="350" height="100" alt="" />
					<p>
					 <strong> To accept or reject Visitors</strong>
					</p>

					<p>Kindly,click the link below!</p>
					<button>
						<a href="../Visitor_GK_side/catagoryVisitors.jsp" class="w3-button w3-black w3-round-xxlarge">Click
							Here</a>
					</button>
					</div>

			
			<!-- <div class="w3-white w3-hover-shadow w3-padding-64 w3-center">
				<h3>Search Worker</h3>
				<img src="../img/bg-img/searchworker.jpg" width="350" height="200" alt="" />
				<p>
					 <strong>to search workers </strong>
				</p>

				<p>Kindly,click the link below!</p>
				<button>
					<a href="../Workers_GK_side/sam.html" class="w3-button w3-black w3-round-xxlarge">Click
						Here</a>
				</button>

			</div> -->
			


			<div class="w3-white w3-hover-shadow w3-padding-64 w3-center"
				align="center">
				<h3>Worker Details</h3>
				<img src="../img/bg-img/serviceprovider.jpg" width="350" height="50" alt="" />
				<p>
					It <strong>shows all the workers</strong>
				</p>
				<br>

				<button>
					<a href="../Workers_GK_side/ViewWorkersDetails.jsp" class="w3-button w3-black w3-round-xxlarge">Click
						Here</a>
				</button>

			</div>
			
			<div class="w3-white w3-hover-shadow w3-padding-64 w3-center"
				align="center">
				<h2>Flat Users</h2>
				<img src="../img/bg-img/flatusers.jpg" width="350" height="50" alt="" />
				<p>
					It <strong>shows all the Flat Users</strong>
				</p>
				<br>

				<button>
					<a href="../Flatuser_GK_side/ViewFlatuserDetails.jsp" class="w3-button w3-black w3-round-xxlarge">Click
						Here</a>
				</button>

			</div>
			

			
			

			<!-- <div class="w3-white w3-hover-shadow w3-padding-64 w3-center">
      <h3>Register User</h3>        
      <img src="img/bg-img/feature8.jpg" width="350" height="200" alt="" />
      <p> It
      <strong>Registers all type of users</strong></p>
      To post or view queries related .
      <button><a href="Login.html" class="w3-button w3-light-grey w3-block">Click Here</a></button>

    </div> -->
		</div>
	</div>
	
	
	
	
	
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
	<%
		}
	%>
</body>



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