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
@WebServlet("/WorkerType")
public class WorkerType extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  // TODO Auto-generated method stub
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
		  String type = request.getParameter("type");

		  // validate given input
		  if (type.isEmpty() ) {
		   RequestDispatcher rd = request.getRequestDispatcher("workerTypeAdd.jsp");
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

		    String query = "INSERT INTO worker_type (`type`) VALUES (?)";

		    PreparedStatement ps = con.prepareStatement(query); // generates sql query

		    ps.setString(1, type);
	
		    
		    //ps.setString(9, user_type);
		   

		    ps.executeUpdate(); // execute it on test database
		    System.out.println("successfuly inserted");
		    ps.close();
		    con.close();
		   } catch (ClassNotFoundException | SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		   }
		   RequestDispatcher rd = request.getRequestDispatcher("suc.jsp");
		   rd.forward(request, response);
		  }
		 }
		

}