<%
session.setAttribute("email", null);
session.invalidate();
response.sendRedirect("home_page.jsp");
%>