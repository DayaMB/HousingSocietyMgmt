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

						<!-- close btn -->
						<div class="classycloseIcon">
							<div class="cross-wrap">
								<span class="top"></span><span class="bottom"></span>
							</div>
						</div>

						<!-- Nav Start -->
						<div class="classynav">
							<ul>

								<li><a href="../Flatuser_Userside/Userinfo.jsp">Edit
										Profile</a> <!-- <ul class="dropdown">
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
									</ul> --></li>
								<li><a href="../Workers_UserSide/workerDetails.jsp">View
										Workers</a></li>
								<li><a
									href="../ServiceProvider_UserSide/ServiceProviderDetails.jsp">View
										Service Providers</a></li>
								<li><a href="ManageBookings.jsp">Manage Bookings</a></li>
								<li><a href="../Space/disp_space_to_user.jsp">View
										Space</a></li>
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
	<!-- ##### Header Area End ##### -->
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p> &nbsp;</p>

	<div class="container" align="center">
		<%@page import="java.sql.*"%>
		<%
			String email_id = (String) session.getAttribute("email_id");

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_proj", "root", "root");
		%>
		<%
			try {
				PreparedStatement ps = con.prepareStatement("select type from worker_type");

				ResultSet rs;
				rs = ps.executeQuery();
				int i = 0;
				while (rs.next()) {
		%>


		<!-- <div class="w3-white w3-hover-shadow w3-padding-64 w3-center">
      <h3>Register User</h3>        
      <img src="img/bg-img/feature8.jpg" width="350" height="200" alt="" />
      <p> It
      <strong>Registers all type of users</strong></p>
      To post or view queries related .
      <button><a href="Login.html" class="w3-button w3-light-grey w3-block">Click Here</a></button>

    </div> -->

		<div class="media-container-row">
			<div class="card p-4 col-10 col-md-6 col-lg-8">
				<div class="card">
					<div class="card-body">
						<h1 class="card-title"><%=rs.getString("type")%></h1>
						
						<button>
							<a href="bookWorker.jsp?type=<%=rs.getString("type")%>"
								class="btn btn-primary">Book</a>
						</button>
					</div>
				</div>
			</div>
			<%
				i++;
					}
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
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