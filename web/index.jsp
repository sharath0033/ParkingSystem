<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/common.css">
        <title>SignUp Page</title>
        <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    
        <style>
            body{
                background-image: url("images/bcgr.jpg");
                background-size: 100% 120%;
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
        <% 
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","eminem");
                Statement st=cn.createStatement();
                st.executeUpdate("CREATE TABLE IF NOT EXISTS registration (FirstName VARCHAR(100) NOT NULL,LastName VARCHAR(100) NOT NULL,UserName VARCHAR(100) NOT NULL,DateOfBirth VARCHAR(20) NOT NULL,Gender VARCHAR(6) NOT NULL,MobileNo VARCHAR(11) NOT NULL,EmailID VARCHAR(200) NOT NULL,Password VARCHAR(30) NOT NULL,UNIQUE INDEX UserName_UNIQUE (UserName ASC))");
            }
            catch(Exception e){
                out.println("Exception e"+e);  
            }
        %>

        <div class="header">
            <h1 class="mlogo slidelogo">Parking System</h1>
        </div>
        
        <div class="container slide">
            
            <div class="hed col-sm-4 col-sm-offset-4">
                <h2>Sign Up Now!</h2>
            </div>
            
            
                <div class="bck col-sm-4 col-sm-offset-4">
                <form class="form-horizontal" method="post" id="sturegform" action="registration.jsp" role="form" novalidate="novalidate">
                
                <div class="form-group">
                    <div class="col-sm-12">
                        <input type="text" class="form-control" name="fname" placeholder="First Name">
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-12">
                        <input type="text" class="form-control" name="lname" placeholder="Last Name">
                    </div>
                </div>
                    
                <div class="form-group">
                    <div class="col-sm-12">
                        <input type="text" class="form-control" name="uname" placeholder="User Name">
                    </div>
                </div>    
               
                <div class="form-group">
                    <div class="col-sm-12">
                        <input type="date" class="form-control" name="dob" placeholder="Date Of Birth">
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-12">
                        <select class="form-control" name="gender">
                            <option value="">Select Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select>
                    </div>
                </div>
              
                <div class="form-group">
                    <div class="col-sm-12">
                        <input type="text" maxlength="10" class="form-control" name="phone" id="phone" placeholder="Enter Mobile No">
                    </div>
                </div>
               
                <div class="form-group">
                    <div class="col-sm-12">
                        <input type="email" class="form-control" name="emailid" id="emailid" placeholder="Enter Email ID">
                    </div>
                </div>
                    
                <div class="form-group">
                    <div class="col-sm-12">
                        <input type="email" class="form-control" name="emailidconform" id="emailidconform" placeholder="ReEnter Email ID">
                    </div>
                </div>    
               
                <div class="form-group">
                    <div class="col-sm-12">          
                        <input type="password" class="form-control" name="password" id="password" placeholder="Enter password">
                    </div>
                </div>
               
                <div class="form-group">
                    <div class="col-sm-12">          
                        <input type="password" class="form-control" name="rtpassword" placeholder="Retype password">
                    </div>
                </div>
                
                <div class="form-group">      
                    <div class="col-sm-12">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
                
                <div class="form-group">      
                    <div class="col-sm-12" style="color:black">
                        Already Registered?&nbsp; <a href="jsp/loginform.jsp">Login Here</a>
                    </div>
                </div>    
                    
            </form>
                </div>
          </div>

        <script src="js/plugins/jquery.min.js"></script>
        <script src="js/plugins/jquery.validate.min.js"></script>
        <script src="js/validation/stureg.js"></script>
        <script src="js/plugins/bootstrap.min.js"></script>  
    </body>
</html>
