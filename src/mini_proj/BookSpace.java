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
@WebServlet("/BookSpace")
public class BookSpace extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  // TODO Auto-generated method stub
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();

	
		  String date = request.getParameter("date");
		  HttpSession session=request.getSession();
		  String email = (String)session.getAttribute("email");
		  String space_id = (String)session.getAttribute("space_id");

		 

		  // validate given input
		  if (date.isEmpty() ) {
		   RequestDispatcher rd = request.getRequestDispatcher("reg_flat_users.jsp");
		   out.println("<font color=red>Please fill all the fields</font>");
		   rd.include(request, response);
		  } else {
		    try {
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    // loads mysql driver

		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_proj","root", "root"); 

		    String query = "INSERT INTO book_space (`email`,`space_id`,`date`,`createdate`) VALUES (?,?,?,now())";

		    PreparedStatement ps = con.prepareStatement(query); // generates sql query

		 ps.setString(1, email);
		ps.setString(2,space_id );
		  ps.setString(3, date);
		 
		    
		 
		   

		    ps.executeUpdate(); // execute it on test database
		    
		    System.out.println("successfuly inserted");
		    ps.close();
		    con.close();
		   } catch (ClassNotFoundException | SQLException e) {
		    // TODO Auto-generated catch block
		    
		    e.printStackTrace();
		    out.println("<script type=\"text/javascript\">");
		    out.println("alert('Someone Else has Already Booked ! Please Book Another Available Space');");
		    out.println("location='Space_UserSide/spaceDetails.jsp';");
		    out.println("</script>");
		   }
//		   RequestDispatcher rd = request.getRequestDispatcher("suc.jsp");
//		   
//		   rd.forward(request, response);
		    out.println("<script type=\"text/javascript\">");
		    out.println("alert(' Booked Successfully !!');");
		    out.println("location='Space_UserSide/viewBookedSpace.jsp';");
		    out.println("</script>");
		  }
		 }
		

}