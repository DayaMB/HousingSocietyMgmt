	
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

								<li><a href="../Login/logout.jsp">Logout</a></li>
							</ul> 


							<!-- Search Form -->
							<div class="south-search-form">
								<form action="../Flatuser_GK_side/search.jsp" method="post">
									<input type="search" name="flat_id" id="search"
										placeholder="Search Anything ...">

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
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
	font-size: 25px;
	background-color:orange;
	border-radius: 7px;
	text-align: center;
	cursor: pointer;
}

.btn1 {
	font-size: 18px;
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

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_proj","root", "root");
String wname=request.getParameter("wname");

%>
<!DOCTYPE html>
<html>
<body>
<h1 align="center">Search Data</h1>
<div align="center">
<table border="1" id="t01">
<tr>
<th>Id</td>
<th>Flat User</td>
<th>Worker</td>

</tr>
<%
try{
	PreparedStatement ps = con.prepareStatement("SELECT flat_users.flat_id, flat_users.Fname,workers.wname,  flat_users.phone_no FROM ((book_worker INNER JOIN flat_users ON book_worker.email = flat_users.email) INNER JOIN workers ON book_worker.w_id = workers.w_id) where wname=?");
	ps.setString(1, wname);
    ResultSet rs;
    rs = ps.executeQuery();
    int i=0;
while(rs.next()){
%>
<tr>
<td><%=rs.getString("flat_users.flat_id") %></td>
<td><%=rs.getString("flat_users.Fname") %></td>
<td><%=rs.getString("workers.wname") %></td>

</tr>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
</body>
</html>