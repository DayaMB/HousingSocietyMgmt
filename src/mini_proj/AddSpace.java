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
@WebServlet("/AddSpace")
public class AddSpace extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  // TODO Auto-generated method stub
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
		  String space_name = request.getParameter("space_name");
		  String amount = request.getParameter("amount");
		  String availability = request.getParameter("availability");

		  // validate given input
		  if (space_name.isEmpty() || amount.isEmpty() || availability.isEmpty()) {
		   RequestDispatcher rd = request.getRequestDispatcher("AddSpace.jsp");
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

		    String query ="INSERT INTO space (`space_name`, `amount`, `availability`) VALUES (?,?,?)";

		    PreparedStatement ps = con.prepareStatement(query); // generates sql query

		    ps.setString(1, space_name);
		    ps.setString(2, amount);
		    ps.setString(3, availability);
		    
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
		    out.println("alert('Space Added Successfully !!');");
		    out.println("location='Space/displaySpace.jsp';");
		    out.println("</script>");
		  }
		 }
		

}