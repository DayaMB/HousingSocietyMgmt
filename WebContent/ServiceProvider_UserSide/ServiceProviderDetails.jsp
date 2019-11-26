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

								<li><a href="../Flatuser_Userside/Userinfo.jsp">My
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
<body>


	<%@page import="java.sql.*"%>
	<%
		String email_id = (String) session.getAttribute("email");

		String pswd = request.getParameter("pswd");
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_proj", "root", "root");
	%>

	<%
		try {
			PreparedStatement ps = con.prepareStatement("(SELECT * FROM service_providers)");
			/*     ps.setString(1, email_id); */
			ResultSet rs;
			rs = ps.executeQuery();
			int i = 0;
			while (rs.next()) {
	%>





	<link
		href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<div class="container">
		<div class="row">


			<div class="col-md-7 ">

				<div class="panel panel-default">
					<div class="panel-heading">
						<h1><%=rs.getString("type")%></h1>
					</div>


					<div class="box box-info">

						<div class="box-body">
							<!--     <div class="col-sm-2">
                     <div  align="center"> <img alt="User Pic" src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg" id="profile-image1" class="img-circle img-responsive"> 
                
                <input id="profile-image-upload" class="hidden" type="file">
<div style="color:#999;" >click here to change profile image</div>
                Upload Image Js And Css     
                     
                     
                     </div> -->

							<br>

							<!-- /input-group -->
						</div>
						<div class="col-sm-7">
							<h2 style="color: #00b1b1;"></h2>
							</span>

						</div>
						<div class="clearfix"></div>
						<hr style="margin: 5px 0 5px 0;">


						<div class="col-sm-5 col-xs-4 tital ">Name :</div>
						<div class="col-sm-4 "><%=rs.getString("sp_name")%></div>
						<div class="clearfix"></div>
						<div class="bot-border"></div>

						<div class="col-sm-5 col-xs-4 tital ">Phone No.:</div>
						<div class="col-sm-4"><%=rs.getString("phone_no")%></div>
						<div class="clearfix"></div>
						<div class="bot-border"></div>

						<div class="col-sm-5 col-xs-4 tital "></div>
						<div class="col-sm-4"></div>
						<div class="clearfix"></div>
						<div class="bot-border"></div>

						<!-- /.box-body -->

					</div>
					<!-- /.box -->

				</div>
			</div>
			<script>
				$(function() {
					$('#profile-image1').on('click', function() {
						$('#profile-image-upload').click();
					});
				});
			</script>

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


