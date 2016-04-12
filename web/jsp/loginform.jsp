<%  response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);
    session=request.getSession(false);
    session.invalidate();
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
        <title>Login Page</title>
        <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    
        <style>
            body{
                background-image: url("../images/bcgl.jpg");
                background-size: 100% 130%;
                background-repeat: no-repeat;
                background-attachment: fixed;
            }
            h2{
                font-weight: bold;
            }
            .hed{
                color: white;
                background-color: rgba(32,32,32,0.85);
                padding: 20px 0px 20px 0px;
            }
            a{
                text-decoration: none;
                color: white;
                
            }
            a:hover{
                text-decoration: none;
                color: grey;
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
        
        <div class="container slide">
            
            <div class="hed col-sm-4 col-sm-offset-4">
                <h2>Login</h2>
            </div>
            
            <div class="bck col-sm-4 col-sm-offset-4">
            <form class="form-horizontal" id="stuloginform" action="../logic/login.jsp" role="form" novalidate="novalidate">
                <div class="form-group">
                    <div class="col-sm-12">
                        <input type="text" class="form-control" name="uname" id="uname" placeholder="Enter User Name">
                    </div>
                </div>
               
                <div class="form-group">
                    <div class="col-sm-12">          
                        <input type="password" class="form-control" name="password" id="password" placeholder="Enter password">
                    </div>
                </div>
                
                <div class="form-group">      
                    <div class="col-sm-12">
                        <button type="submit" class="btn btn-primary">Sign In</button>
                    </div>
                </div>
                
                <div class="form-group">      
                    <div class="col-sm-12" style="color:black">
                        Not yet Registered?&nbsp; <a href="../index.jsp" style="color: blue">Register Here</a>
                    </div>
                </div>
            </form>
            </div>
          </div>

        <script src="../js/plugins/jquery.min.js"></script>
        <script src="../js/plugins/jquery.validate.min.js"></script>
        <script src="../js/validation/stureg.js"></script>
        <script src="../js/plugins/bootstrap.min.js"></script>  
    </body>
</html>