<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="java.io.*"%>
 <%
                String uname=request.getParameter("uname");
              
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","eminem");
        Statement st=cn.createStatement();
           ResultSet rs=st.executeQuery("SELECT UserName FROM registration WHERE UserName='"+uname+"'");
            if(rs.next()){ 
                out.print(false);
            }
            else{
                out.print(true);
            }
      %>
