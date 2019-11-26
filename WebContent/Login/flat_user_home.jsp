<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%> --%>
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
					<a class="nav-brand" href="flat_user_home.jsp"><img
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

								<li><a href="../Flatuser_Userside/Userinfo.jsp">My Profile</a>
									<!-- <ul class="dropdown">
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
									</ul> -->
									</li>
<!-- 								<li><a href="../Workers_UserSide/workerDetails.jsp">View Workers</a></li> -->
<!-- 								<li><a href="../ServiceProvider_UserSide/ServiceProviderDetails.jsp">View Service Providers</a></li> -->
								<li><a href="../Flatuser_Userside/categoryBookings.jsp">Manage Bookings</a></li>
								<li><a href='../Complaint_userSide/viewComplaints.jsp'>Complaint Status</a></li>
								
<!-- 								<li><a href="../Space_UserSide/spaceDetails.jsp">View Space</a></li> -->
								<li><a href='../Visitor_info/AddVisitorInfo.jsp'>Pre-approve visitor</a></li>
								<li><a href="../camAmtBillGen/genCamBill1.jsp">Bills & Payments</a></li>
<!-- 								<li><a href="../complain_UserSide/complain_UserSide.jsp">Post a Complain</a></li> -->
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
							</div>

							<!-- Search Button -->
								<!-- <a href="#" class="searchbtn"><i class="fa"
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
	
	
	
	


	<div class="container">
		<div class="row">
			<div class="w3-white w3-hover-shadow w3-padding-64 w3-center">
					<h3>Book Space</h3> <img src="../img/bg-img/space.jpg"
					width="350" height="200" alt="" />
					<p>
						Space <strong> Manage/Add Space</strong>
					</p>

					<p>Kindly,click the link below!</p>
					<button>
						<a href="../Space_UserSide/spaceDetails.jsp" class="w3-button w3-black w3-round-xxlarge">Click
							Here</a>
					</button>
					</div>

			
			<div class="w3-white w3-hover-shadow w3-padding-64 w3-center">
				<h3>Post Complaint</h3>
				<img src="../img/bg-img/complain.jpg" width="350" height="200" alt="" />
				<p>
					 <strong>Post Complaints </strong>
				</p>

				<p>Kindly,click the link below!</p>
				<button>
					<a href="../Complaint_userSide/PostComplaint.jsp" class="w3-button w3-black w3-round-xxlarge">Click
						Here</a>
				</button>

			</div>
			
			<div class="w3-white w3-hover-shadow w3-padding-64 w3-center"
				align="center">
				<h3>Book Workers</h3>
				<img src="../img/bg-img/workers.jpg" width="350" height="250" alt="" />
				<p>
					It <strong>Books all the Workers.</strong><br>
					<strong>Any Outside Registered Workers. </strong><br>
					<strong>Based on few condition they will be Booked </strong>
				</p>
				<br>

				<button>
					<a href="../Workers_UserSide/workerDetails.jsp" class="w3-button w3-black w3-round-xxlarge">Click
						Here</a>
				</button>

			</div>
			
			<div class="w3-white w3-hover-shadow w3-padding-64 w3-center">
				<h3>Verify Payments</h3>
				<img src="../img/bg-img/payment.jpg" width="320" height="200" alt="" />
				<p>
					 Post Reference Id to<strong>Verify Payments</strong>
				</p>

				<button>
					<a href="../Flatuser_Userside/Payment.jsp" class="w3-button w3-black w3-round-xxlarge">Click
						Here</a>
				</button>

			</div>
			

			<div class="w3-white w3-hover-shadow w3-padding-64 w3-center"
				align="center">
				<h3>Service Providers</h3>
				<img src="../img/bg-img/serviceprovider.jpg" width="350" height="200" alt="" />
				<p>
					It <strong>Shows all the Service Providers.</strong>
				</p>
				
				<button>
					<a href="../ServiceProvider_UserSide/ServiceProviderDetails.jsp" class="w3-button w3-black w3-round-xxlarge">Click
						Here</a>
				</button>

			</div>

						<div class="w3-white w3-hover-shadow w3-padding-64 w3-center"
				align="center">
				<h3>Manage Visitors</h3>
				<img src="../img/bg-img/visitors.png" width="350" height="200" alt="" />
				<p>
					It <strong>Manages all the Visitors</strong><br>
					<strong>Here you can see the status of the Visitors.</strong>
				</p>

				<button>
					<a href="../Visitor_info/categoryVisitoruser.jsp" class="w3-button w3-black w3-round-xxlarge">Click
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
	
	
	
<div>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
%>
You are not logged in<br/>
<a href="login.jsp">Please Login</a>
<%} else {
%><%-- 
Welcome owner <%=session.getAttribute("email")%> --%>
<a href='logout.jsp'></a>
<%
    }
%></div>

</body>
</html>