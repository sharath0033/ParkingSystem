<% 
    String uname=request.getParameter("uname");
    session=request.getSession(false);
    session.setAttribute("uname",uname);
    response.sendRedirect("../jsp/payment.jsp");
%>