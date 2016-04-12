$(function(){

    $.validator.setDefaults({
        errorClass: 'help-block',
            highlight: function(element) {
                $(element)
                    .closest('.form-group')
                    .addClass('has-error');
            },
            unhighlight: function(element) {
                $(element)
                    .closest('.form-group')
                    .removeClass('has-error');
            },
    });
                
    $.validator.addMethod('daterange', function(value, element, arg) {
        if (this.optional(element) && !value) {
            return true;
        }
        var startDate = Date.parse(arg[0]),
            endDate = Date.parse(arg[1]),
            enteredDate = Date.parse(value);
        if (isNaN(enteredDate)) {
            return false;
        }
        return ( (isNaN(startDate) || (startDate <= enteredDate)) &&
            (isNaN(endDate) || (enteredDate <= endDate)));
        }, $.validator.format("Your age should be greater than 18"));
  
        $("#sturegform").validate({
                    rules: {
                        fname: {
                            required: true
                        },
                        lname: {
                            required: true
                        },
                        uname: {
                            required: true,
                            remote:  'php/htnoreg.jsp' 
                        },
                        dob: {
                            required: true,
                            daterange: ['01/01/1951','12/31/1997']
                        },
                        gender: {
                            required: true
                        },
                        phone: {
                            required: true,
                            digits: true,
                            minlength:10
                        },
                        emailid: {
                            required: true,
                            email: true
                        },
                        emailidconform: {
                            required: true,
                            email: true,
                            equalTo: '#emailid'
                        },
                        password: {
                            required: true,
                            minlength: 4,
                            maxlength: 12
                            
                        },
                        rtpassword: {
                            required: true,
                            equalTo: '#password'
                        }
                    },
                    messages: {
                        fname: {
                            required: "This field should not be empty"
                        },
                        lname: {
                            required: "This field should not be empty"
                        },
                        uname: {
                            required: "User Name is mandatory",
                            remote: $.validator.format("{0} is already Registered. Please try a different UserName.")
                        },
                        dob: {
                            required: "Date of Birth is mandatory"
                        },
                        gender: {
                            required: "Please select your Gender"
                        },
                        phone: {
                            required: "Please enter your Mobile No",
                            digits: "Invalid Mobile No",
                            minlength:"Invalid Mobile No"
                        },
                        emailid: {
                            required: "Please enter your Email ID",
                            email: "Invalid Email ID"
                        },
                        emailidconform: {
                            required: "Please ReEnter your Email ID",
                            email: "Invalid Email ID",
                            equalTo: "The entered Email ID dosent match"
                        },
                        password: {
                            required: "Please enter a Password",
                            minlength: "Password must be greater than 4 characters",
                            maxlength: "Password must be less than 13 characters"
                        },
                        rtpassword: {
                            required: "Please confirm Password",
                            equalTo: "The entered password dosent match"
                        }
                    }
                });
                
                
                $("#stuloginform").validate({
                    rules: {
                        uname: {
                            required: true,
                            remote:  '../php/login/htnolog.jsp' 
                        },
                        password: {
                            required: true,
                            remote:{
                                url: '../php/login/passlog.jsp',
                                data: {'uname':function(){return $('#uname').val();}},
                                async:false 
                            }
                        }
                    },
                    messages: {
                        uname: {
                            required: "UserName is mandatory",
                            remote: $.validator.format("{0} UserName not found. Please check UserName.")
                        },
                        password: {
                            required: "Please enter a Password",
                            remote: "UserName and Password do not match"
                        }
                    }
                });
             
             $("#paymentform").validate({
                    rules: {
                        vecno: {
                            required: true
                        },
                        vectype: {
                            required: true
                        },
                        location: {
                            required: true 
                        },
                        slotdate: {
                            required: true
                        },
                        slottime: {
                            required: true
                        },
                        time: {
                            required: true
                        },
                        payment: {
                            required: true
                        }
                    },
                    messages: {
                        vecno: {
                            required: "Please Enter Vehicle No"
                        },
                        vectype: {
                            required: "Please select Vehicle Type"
                        },
                        location: {
                            required: "Please select Location"
                        },
                        slotdate: {
                            required: "Please Enter Date"
                        },
                        slottime: {
                            required: "Please Enter Time"
                        },
                        time: {
                            required: "Please select AM/PM"
                        },
                        payment: {
                            required: "Please select Payment Method"
                        }
                    }
                });
                
            });
            
                