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

								<li><a href="../Flatuser_Userside/Userinfo.jsp">Edit Profile</a>
								
									</li>
<!-- 								<li><a href="../Workers_UserSide/workerDetails.jsp">View Workers</a></li> -->
<!-- 								<li><a href="../ServiceProvider_UserSide/ServiceProviderDetails.jsp">View Service Providers</a></li> -->
								<li><a href="../Workers_UserSide/viewBookedWorkers.jsp">Manage Bookings</a></li>
<!-- 								<li><a href="../Space_UserSide/spaceDetails.jsp">View Space</a></li> -->
								<li><a href='../Visitor_info/AddVisitorInfo.jsp'>Pre-approve visitor</a></li>
								<li><a href="../camAmtBillGen/genCamBill1.jsp">Bills & Payments</a></li>
<!-- 								<li><a href="../complain_UserSide/complain_UserSide.jsp">Post a Complain</a></li> -->
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
	<p>&nbsp;</p>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


<%@page import="java.sql.*"%>
<%

String email = (String)session.getAttribute("email");


Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_proj","root", "root");
%>
<!DOCTYPE html>
<html>
<head>
<style>


table, th, td {
  border: 2px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 20px;
  text-align: center;    
}
.button {
  background-color: green; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}

.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);

</style>
</head>
<body>

<h2 align="center">Common Area Maintenance</h2>

<div align="center" class="container">

<table style="width:50%" align="center">

<%
try{
	PreparedStatement ps = con.prepareStatement("SELECT flat_users.email, flat_details.flat_id,(cam_amt.amt*flat_details.sqft) as camAMt FROM cam_amt,flat_details inner join flat_users ON flat_details.flat_id = flat_users.flat_id where email=?");
    ps.setString(1, email);
    ResultSet rs;
    rs = ps.executeQuery();
while(rs.next()){
%>
  <tr class="success">
    <th>Cam amt</th>
    <td><%=rs.getString("camAmt")%></td>
  </tr>
  	
  
<%

}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
 
%>
</table>
<p>&nbsp;</p>
<div align="center">
    <a href="https://p-y.tm/hmO-LpC"><button class="button button2">Pay</button></a>
    </div>
</body>
</html>