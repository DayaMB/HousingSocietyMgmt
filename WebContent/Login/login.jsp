<%@ page import ="java.sql.*" %>
<%
    String email = request.getParameter("email");    
    String pswd = request.getParameter("pswd");
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_proj","root", "root");
    //Statement st = con.createStatement();
    PreparedStatement ps = con.prepareStatement("(select role_type from admin where email=? and pswd=?) union (select role_type from flat_users where email=? and pswd=?) union (select role_type from gatekeeper where email=? and pswd=?)");
    ps.setString(1, email);
    ps.setString(2,pswd);
    ps.setString(3, email);
    ps.setString(4,pswd);
    ps.setString(5,email);
    ps.setString(6,pswd);
    ResultSet rs;
    rs = ps.executeQuery();
    if (rs.next()) {
    	
        session.setAttribute("email", email);
        String type=rs.getString("role_type");
        
        if("admin".equals(type))
        {
        	response.sendRedirect("admin_home.jsp");
        }
        else if ("flat_user".equals(type))
        {
        	response.sendRedirect("flat_user_home.jsp");
        }
        	
        else if("gk".equals(type))
        {
        	response.sendRedirect("gate_k_home.jsp");
        }
        	
        //response.sendRedirect("succcess.jsp");
       // out.println("welcome " + email);
        //out.println("<a href='logout.jsp'>Log out</a>");
     
       
    } else {
        out.println("Invalid password <a href='home_page.jsp'>try again</a>");
    }
%>