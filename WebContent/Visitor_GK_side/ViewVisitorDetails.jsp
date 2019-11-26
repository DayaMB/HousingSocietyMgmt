	
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
								<form action="#" method="post">
									<input type="search" name="search" id="search"
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
	font-size: 27px;
	background-color: orange;
	border-radius: 5px;
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

<h1 align="center"> Visitor Details</h1>
<table border="1" align="center" id="t01">
<tr>
<th>Visitor Id</th>
<th>Visitor Name</th>
<th>Flat No.</th>
<th>Comment</th>
<th>Date</th>
<th></th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT v_id,flat_users.flat_id,name,comment,date,createdate,status FROM flat_users INNER JOIN visitor_info ON flat_users.email = visitor_info.email where status<>'accepted' and date=CURRENT_DATE()";
rs = statement.executeQuery(sql);
int i=0;
while(rs.next()){
%>
<tr>

<TD><%=rs.getString("v_id")%></TD>
<TD><%=rs.getString("name")%></TD>
<TD><%=rs.getString("flat_users.flat_id")%></TD>
<TD><%=rs.getString("comment")%></TD>
<TD><%=rs.getString("date")%></TD>
<td><button class="btn"><a href="StatusUpdate.jsp?v_id=<%=rs.getString("v_id")%>">accept</a></button></td>
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