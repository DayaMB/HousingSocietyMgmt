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
	<p> &nbsp;</p>


<%@page import="java.sql.*"%>
<%

String space_id = request.getParameter("space_id");
session.setAttribute("space_id",space_id);
String email = (String)session.getAttribute("email");
session.setAttribute("email", email);


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
</head>
<body>

<h2 align="center">Confirm Booking</h2>

<div align="center">
<table style="width:50%" >

<%

try{
	PreparedStatement ps = con.prepareStatement("select * from space where space_id=?");
	ps.setString(1, space_id);
    ResultSet rs;
    rs = ps.executeQuery();
    int i=0;
while(rs.next()){
%>
 
<form action="../BookSpace" method="get">

  <tr>
     <th>Space type</th>
    <td><%=rs.getString("space_name")%></td>
  </tr>
  
   <tr>
     <th>amount</th>
    <td><%=rs.getString("amount")%></td>
  </tr>
  
  	<tr>
					<th>date</th>
					<td><input type="date" name="date" id="txtDate" required/></td>
	</tr>
		
   <tr>
   
  <tr>


</table>
<p>&nbsp;</p>
<div align="center">
   <button type="submit"	class="btn btn-primary" value="Submit">Book</button>
   
</div>
  </form>
</div>
</body>
<p>&nbsp;</p>
<%
i++;
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
 
%>
</html>