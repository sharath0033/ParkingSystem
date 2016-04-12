<%  response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);
    
    session=request.getSession(false); 
    
    if(null != session.getAttribute("uname")){
        String uname = session.getAttribute("uname").toString();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/common.css">
        <title>Success Page</title>
        <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    
        <style>
            body{
                background-image: url("../images/bcgf.jpg");
                background-size: 100% 110%;
                background-repeat: no-repeat;
                background-attachment: fixed;
            }
            h2{
                font-weight: bold;
            }
            a{
                text-decoration: none;
                color: white;
                
            }
            a:hover{
                text-decoration: none;
                color: grey;
            }
            .hed{
                color: white;
                background-color: rgba(32,32,32,0.85);
                padding: 20px 0px 20px 0px;
            }
            .bck{
                background-color:white;
                padding: 30px 30px 20px 30px;
            }
            .container{
                text-align: center;
                padding: 40px 0px 20px 0px;
            }
        </style>
    </head>
    <body>

        <div class="header">
            <h1 class="mlogo slidelogo"><a href="../index.jsp">Parking System</a></h1>
        </div>
        
        <div class="container">
            <h1 style="margin-top: 110px">Your Booking was Successful.</h1>  
            <h1>Thank You.</h1>
        </div>

        <script src="../js/plugins/jquery.min.js"></script>
        <script src="../js/plugins/jquery.validate.min.js"></script>
        <script src="../js/validation/stureg.js"></script>
        <script src="../js/plugins/bootstrap.min.js"></script>  
    </body>
</html>
<%
}else{
      response.sendRedirect("../jsp/loginform.jsp");
}%>