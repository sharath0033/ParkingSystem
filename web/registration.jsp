<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*"%>
      <%

                String fname=request.getParameter("fname");
                String lname=request.getParameter("lname");
                String uname=request.getParameter("uname");
                String dob=request.getParameter("dob");
                String gender=request.getParameter("gender");
                String phone=request.getParameter("phone");
                String emailid=request.getParameter("emailid");
                String password=request.getParameter("password");

try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","eminem");
        Statement st=cn.createStatement();
                String qry="INSERT INTO registration VALUES ('"+fname+"','"+lname+"','"+uname+"','"+dob+"','"+gender+"','"+phone+"','"+emailid+"','"+password+"')";
                if(st.executeUpdate(qry)>0)
                    { 
                    response.sendRedirect("jsp/loginform.jsp"); 
                   }
    }catch(Exception e){
        out.println(e);                 
    }
%>

