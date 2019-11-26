package mini_proj;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class register
 */
@WebServlet("/Visitor_info")
public class Visitor_info extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  // TODO Auto-generated method stub
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
		  String name = request.getParameter("name");
		  String comment = request.getParameter("comment");
		  String date = request.getParameter("date");
		  HttpSession session=request.getSession();
			
		  String email = (String)session.getAttribute("email");

	

		  // validate given input
		  if (name.isEmpty() || comment.isEmpty()) {
		   RequestDispatcher rd = request.getRequestDispatcher("reg_flat_users.jsp");
		   out.println("<font color=red>Please fill all the fields</font>");
		   rd.include(request, response);
		  } else {
		   try {
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    // loads mysql driver

		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_proj","root", "root"); 

		    String query ="INSERT INTO visitor_info (`name`,`email`,`comment`,`date`,`status`,`createdate`) VALUES (?,?,?,?,'new',now())";

		    PreparedStatement ps = con.prepareStatement(query); // generates sql query

		    
		    ps.setString(1, name);
		
		    ps.setString(2, email);
		    
		    ps.setString(3, comment);
		    ps.setString(4, date);
		   
		    
		
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