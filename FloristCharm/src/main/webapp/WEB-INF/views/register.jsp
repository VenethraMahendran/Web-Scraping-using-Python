<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container" id="wrap">
	  <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <form action="r" method="post" accept-charset="utf-8" class="form" role="form"> 
			<div class="jumbotron"> 
            <legend class="text-center">Sign Up!</legend>
 
                <input type="text" name="firstname" value="" class="form-control input-lg" placeholder="First Name" required autofocus />  
                <input type="text" name="lastname" value="" class="form-control input-lg" placeholder="Last Name" required autofocus />                        
                   <input type="text" name="email" value="" class="form-control input-lg" placeholder="Your Email" required autofocus   />
				    <input type="text" name="occupation" value="" class="form-control input-lg" placeholder="Occupation"  required autofocus />
					 <input type="number" name="age" value="" class="form-control input-lg" placeholder="Age"  required autofocus />
					 <input type="number" name="mobno" value="" class="form-control input-lg" placeholder="Mobile Number"  required autofocus />
                    <input type="password" name="password" value="" class="form-control input-lg" placeholder="Password"  /><input type="password" name="confirm_password" value="" class="form-control input-lg" placeholder="Confirm Password"  required autofocus  /> 
					
					<div class="row">
					<span class="help-block">By clicking Create my account, you agree to our<a href="terms.html"> Terms</a> and that you have read our <a href="private.html">Data Use Policy,</a> including our <a href="cookie.html">Cookie Use.</a></span>
                    <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit">
                        Create my account</button>
            </form>          
          </div>
</div> 
</div>           
</div>
</div>
</body>
</html>