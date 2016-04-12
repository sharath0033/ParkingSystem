<%  response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);
    
    session=request.getSession(false); 
    
    if(null != session.getAttribute("uname")){
        String uname = session.getAttribute("uname").toString();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","eminem");
            Statement st=cn.createStatement();
            st.executeUpdate("CREATE TABLE IF NOT EXISTS slotbooking (VehicleNo VARCHAR(10) NOT NULL,VehicleType VARCHAR(20) NOT NULL,Location VARCHAR(50) NOT NULL,Date VARCHAR(10) NOT NULL,Time VARCHAR(6) NOT NULL,PaymentMethod VARCHAR(40) NOT NULL)");
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
        <title>Parking Slot Page</title>
        <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    
        <style>
            body{
                background-image: url("../images/bcgp.jpg");
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
            
            <div class="hed col-sm-4 col-sm-offset-4">
                <h2>Book Parking Slot</h2>
            </div>
            
            <div class="bck col-sm-4 col-sm-offset-4">
            <form class="form-horizontal" id="paymentform" action="../logic/book.jsp" role="form" novalidate="novalidate">
                <div class="form-group">
                    <div class="col-sm-12">
                        <input type="text" class="form-control" name="vecno" maxlength="10" id="vecno" placeholder="Enter Vehicle No">
                    </div>
                </div>
               
                <div class="form-group">
                    <div class="col-sm-12">
                        <select class="form-control" name="vectype">
                            <option value="">Select Vehicle Type</option>
                            <option value="Bike">Bike  10/- Per Hour</option>
                            <option value="Car">Car 30/- Per Hour</option>
                        </select>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-12">
                        <select class="form-control" name="location">
                            <option value="">Select Location</option>
                            <option value="Hyderabad">Hyderabad</option>
                            <option value="Secunderabad">Secunderabad</option>
                            <option value="Begumpet">Begumpet</option>
                            <option value="Punjagutta">Punjagutta</option>
                            <option value="Ameerpet">Ameerpet</option>
                            <option value="Uppal">Uppal</option>
                            <option value="Hi-Tech City">Hi-Tech City</option>
                            <option value="Tarnaka">Tarnaka</option>
                            <option value="Sithaphalmandi">Sithaphalmandi</option>
                            <option value="Vanasthalipuram">Vanasthalipuram</option>
                        </select>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-12">
                        <input type="text" class="form-control" maxlength="10" name="slotdate" placeholder="Slot Date DD/MM/YYYY">
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-7">
                        <input type="text" class="form-control" maxlength="2" name="slottime" placeholder="Slot Time 12Hrs Format">
                    </div>
                    <div class="col-sm-5">
                        <select class="form-control" name="time">
                            <option value="">AM/PM</option>
                            <option value="AM">AM</option>
                            <option value="PM">PM</option>
                        </select>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-12">
                        <select class="form-control" name="payment">
                            <option value="">Select Payment Type</option>
                            <option value="Credit/Debit Card">Credit/Debit Card</option>
                            <option value="Net Banking">Net Banking</option>
                        </select>
                    </div>
                </div>
                
                <div class="form-group">      
                    <div class="col-sm-12">
                        <button type="submit" class="btn btn-primary">Book Slot</button>
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
<%}
    catch(Exception e){
                out.println("error is"+e);
        }
}else{
      response.sendRedirect("../jsp/loginform.jsp");
}%>