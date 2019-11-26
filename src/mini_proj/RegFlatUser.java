
package mini_proj;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class register
 */
@WebServlet("/RegFlatUser")
public class RegFlatUser extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  // TODO Auto-generated method stub
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
		  String fname = request.getParameter("fname");
		  String mname = request.getParameter("mname");
		  String lname = request.getParameter("lname");
		  String email = request.getParameter("email");
		  String pswd = request.getParameter("pswd");
		  String phoneno = request.getParameter("phone_no");
		  String flatno = request.getParameter("sel");

		  // validate given input
		  if (fname.isEmpty() || lname.isEmpty() || phoneno.isEmpty()) {
		   RequestDispatcher rd = request.getRequestDispatcher("reg_flat_users.jsp");
		   out.println("<font color=red>Please fill all the fields</font>");
		   rd.include(request, response);
		  } else {
		   // inserting data into mysql database 
		   // create a test database and student table before running this to create table
		   //create table student(name varchar(100), userName varchar(100), pass varchar(100), addr varchar(100), age int, qual varchar(100), percent varchar(100), year varchar(100));
		   try {
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    // loads mysql driver

		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_proj","root", "root"); 

		    String query = "INSERT INTO flat_users (`fname`, `mname`, `lname`, `email`, `flat_id`,`pswd`, `phone_no`, `role_type`) VALUES (?,?,?,?,?,?,?,'flat_user')";

		    PreparedStatement ps = con.prepareStatement(query); // generates sql query

		    ps.setString(1, fname);
		    ps.setString(2, mname);
		    ps.setString(3, lname);
		    ps.setString(4, email);
		    ps.setString(5, flatno);
		    ps.setString(6, pswd);
		    ps.setString(7, phoneno);
		    
		    //ps.setString(9, user_type);
		   

		    ps.executeUpdate(); // execute it on test database
		    System.out.println("successfuly inserted");
		    ps.close();
		    con.close();
		   } catch (ClassNotFoundException | SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		   }
//		   RequestDispatcher rd = request.getRequestDispatcher("suc.jsp");
//		   rd.forward(request, response);
		   out.println("<script type=\"text/javascript\">");
		    out.println("alert('Registered Successfully !!');");
		    out.println("location='Flatuser/displayFlatUser.jsp';");
		    out.println("</script>");
		  }
		 }
		

}