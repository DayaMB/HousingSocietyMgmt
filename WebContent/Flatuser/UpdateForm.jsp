
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%> --%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


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

	<%-- <%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
	%>
	You are not logged in
	<br />
	<a href="home_page.jsp">Please Login</a>
	<%
		} else {
	%>
 --%>


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
						

						<li><a href="ex.jsp">Payments</a></li>
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

	<%
		String sl_no = request.getParameter("sl_no");
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
		try {
				connection = DriverManager.getConnection(connectionUrl + database, userid, password);
				statement = connection.createStatement();
				String sql = "select * from flat_users where sl_no=" + sl_no;
				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
	%>




	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form"
					action="updateFlatUser.jsp" method="post">
					<span class="login100-form-title p-b-26"> Welcome to Housing
						Society </span> <span class="login100-form-title p-b-48"><h3>Update Owner Details</h3> </span> <br> 
							<input type="hidden" name="sl_no"
						value="<%=resultSet.getString("sl_no")%>"> <br>
					<div class="wrap-input100 validate-input">
						First Name <input class="input100" type="text" name="fname"
							value="<%=resultSet.getString("fname")%>" required> <span
							class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input">
						Middle Name <input class="input100" type="text" name="mname"
							value="<%=resultSet.getString("mname")%>"> <span
							class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input">
						Last Name <input class="input100" type="text" name="lname"
							value="<%=resultSet.getString("lname")%>" required> <span
							class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Valid email is: a@b.c">
						Email <input class="input100" type="email" name="email"
							value="<%=resultSet.getString("email")%>" required> <span
							class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input">
						Password <input class="input100" type="password" name="pswd"
							value="<%=resultSet.getString("pswd")%>" required> <span
							class="focus-input100"></span>
					</div>

					<%-- <div class="wrap-input100 validate-input">
						Flat No <input class="input100" type="text" name="flat_id"
							value="<%=resultSet.getString("flat_id")%>" required> <span
							class="focus-input100"></span>
					</div > --%>
					
					<div class="wrap-input100 validate-input">
						Flat No. <select name="flat_id" id="soflow-color"><option ><%=resultSet.getString("flat_id")%> </option>
							<%
								Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
								String connectionURL = "jdbc:mysql://localhost:3306/mini_proj";
								Connection con = DriverManager.getConnection(connectionURL, "root", "root");
								PreparedStatement psmnt = con.prepareStatement("select flat_details.flat_id,flat_details.sqft,flat_details.bhk from flat_details  where flat_details.flat_id not in (select flat_users.flat_id from flat_users)");
								ResultSet results = psmnt.executeQuery();
								while (results.next()) {
									String name = results.getString(1);
									String id = results.getString(2);
							%><option value="<%=name%>"><%=name%></option>
							<%
								}
								results.close();
								psmnt.close();
							%>
						</select>
						<br>
						<span
							class="focus-input100"></span>
					</div>
					

					<div class="wrap-input100 validate-input">
						Phone Number <input class="input100" type="text" name="phone_no" 
							value="<%=resultSet.getString("phone_no")%>" required> <span
							class="focus-input100"></span>
					</div>



					<div class="w3-container" align="center">
						<button>
							<input type="submit" value="Register"
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

	<%-- <%
		}
	%> --%>


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
</body>
</html>


