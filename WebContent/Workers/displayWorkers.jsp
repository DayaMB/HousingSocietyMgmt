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


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
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
	ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<body>
	<h1 align="center">Manage Workers</h1>
	<style>
table {
	width: 100%;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 15px;
	text-align: center;
}

table#t01 tr:nth-child(even) {
	background-color: #eee;
}

table#t01 tr:nth-child(odd) {
	background-color: #fff;
}

table#t01 th {
	background-color: black;
	color: white;
}

.btn {
	font-size: 19px;
	background-color: orange;
	border-radius: 7px;
	text-align: center;
	cursor: pointer;
}

.btn1 {
	font-size: 19px;
	background-color: red;
	border-radius: 7px;
	text-align: center;
	cursor: pointer;
}

.btn:hover {
	background-color: black;
	color: white;
}

.btn1:hover {
	background-color: black;
	color: white;
}
</style>
	<table id="t01">
		<tr>
			<th>Worker Id</th>
			<th>Worker Name</th>
			<th>Type</th>
			<th>Phone No</th>
			<th></th>
			<th></th>

		</tr>
		<%
			try {
				connection = DriverManager.getConnection(connectionUrl + database, userid, password);
				statement = connection.createStatement();
				String sql = "select * from workers";
				rs = statement.executeQuery(sql);
				int i = 0;
				while (rs.next()) {
		%>
		<tr>

			<TD><%=rs.getString("w_id")%></TD>
			<TD><%=rs.getString("wname")%></TD>
			<TD><%=rs.getString("type")%></TD>
			<TD><%=rs.getString("phone_no")%></TD>
			<td><a href="UpdateFormWorker.jsp?w_id=<%=rs.getString("w_id")%>"><button
						type="button" class="btn">Update</button></td>
			<%-- <td><a href="deleteWorker.jsp?w_id=<%=rs.getString("w_id") %>"><button
						type="button" class="btn1">Delete</button></a></td> --%>
						
<td><button type="button" onclick="myFunction()" class="btn1">Delete</button>
				</a></td>
		</tr>
		<script>
function myFunction() {
  var txt;
  var r = confirm("Do you want to Cancel ?");
  if (r == true) {
    txt = "Confirm";
    window.location = "deleteWorker.jsp?w_id=<%=rs.getString("w_id") %>";
				} else {
					txt = "No";
				}
				document.getElementById("demo").innerHTML = txt;
			}
		</script>
						
		</tr>
		<%
			i++;
				}
				connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>
</body>
</html>