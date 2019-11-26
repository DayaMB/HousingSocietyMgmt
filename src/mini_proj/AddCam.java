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
@WebServlet("/AddCam")
public class AddCam extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  // TODO Auto-generated method stub
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
		  String amt = request.getParameter("amt");

		  // validate given input
		  if (amt.isEmpty() ) {
		   RequestDispatcher rd = request.getRequestDispatcher("AddCamAmt.jsp");
		   out.println("<font color=red>Please fill all the fields</font>");
		   rd.include(request, response);
		  } else {
		   
		   try {
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    // loads mysql driver

		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_proj","root", "root"); 

		    String query ="INSERT INTO cam_amt (`amt`) VALUES (?)";

		    PreparedStatement ps = con.prepareStatement(query); // generates sql query

		    ps.setString(1, amt);
		   

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
		    out.println("alert(' Added Successfully !!');");
		    out.println("location='Workers/displayWorkers.jsp';");
		    out.println("</script>");
		  }
		 }
		

}