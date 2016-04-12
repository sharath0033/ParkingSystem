<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*"%>
      <%

                String vecno=request.getParameter("vecno");
                String vectype=request.getParameter("vectype");
                String location=request.getParameter("location");
                String slotdate=request.getParameter("slotdate");
                String slottime=request.getParameter("slottime");
                String time=request.getParameter("time");
                String payment=request.getParameter("payment");

try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","eminem");
        Statement st=cn.createStatement();
                String qry="INSERT INTO slotbooking VALUES ('"+vecno+"','"+vectype+"','"+location+"','"+slotdate+"','"+slottime+" "+time+"','"+payment+"')";
                if(st.executeUpdate(qry)>0)
                    { 
                    response.sendRedirect("../jsp/finish.jsp"); 
                   }
    }catch(Exception e){
        out.println(e);                 
    }
%>

