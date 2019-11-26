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
@WebServlet("/PostComplaints")
public class PostComplaints extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  // TODO Auto-generated method stub
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
		  String complaint = request.getParameter("complaint");
		  
		  HttpSession session=request.getSession();
		  String email = (String)session.getAttribute("email");

	

		  // validate given input
		  if (complaint.isEmpty()) {
		   RequestDispatcher rd = request.getRequestDispatcher("../Flatuser/reg_flat_users.jsp");
		   out.println("<font color=red>Please fill all the fields</font>");
		   rd.include(request, response);
		  } else {
		   try {
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    // loads mysql driver

		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_proj","root", "root"); 

		    String query ="INSERT INTO complaints (`email`,`complaint`,`status`,`createdate`) VALUES (?,?,'new',now())";

		    PreparedStatement ps = con.prepareStatement(query); // generates sql query

		    
		    ps.setString(1, email);
		    ps.setString(2, complaint);
	
	
		
		   
		    
		
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
		   out.println("alert('Posted a Complaint');");
		   out.println("location='Login/flat_user_home.jsp';");
		   out.println("</script>");
		  }
		 }
		

}