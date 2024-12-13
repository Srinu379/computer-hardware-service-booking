<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Computer Hardware Service - Register</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/register.css' />">
    
    <script type="text/javascript">
    	function validate()
    	{
    		let email = document.getElementById("email").value.trim();
    		let userName = document.getElementById("userName").value.trim();
    		let passWord = document.getElementById("passWord").value;
    		let emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    		
    		if(!emailRegex.test(email))
    		{
    			alert("Please enter a valid email address");
    			return false;
    		}
    		else if(userName.length < 3 && userName.length > 30)
   			{
    			alert("Your username should be in between 3 and 30");
    			return false;
   			}
    		else if(passWord.length < 8)
   			{
    			alert("Your password should contain atleast 8 characters");
    			return false;
   			}
    		return true;	
    	}
    </script>
</head>
<body>
    <div class="register-container">
  <div class="form-header">
    <h2>Create Account</h2>
  </div>
  <form:form action="process-register" modelAttribute="userRegistration" onsubmit="return validate()">
    <div class="form-group">
      <label for="email">Email</label>
      <form:input path="email" id="email" type="email" required="true" readonly="true"/>
      <form:errors path="email" cssClass="error"/>
    </div>
    
    <div class="form-group">
      <label for="userName">Username</label>
      <form:input path="userName" id="userName" readonly="true"/>
      <form:errors path="userName" cssClass="error"/>
    </div>
    
    <div class="form-group">
      <label for="passWord">Confirm Password</label>
      <form:password path="passWord" id="passWord"/>
      <form:errors path="passWord" cssClass="error"/>
      <p class="error">${inValidPassword}</p>
    </div>
    
    <div class="form-group">
      <label for="passWord">Enter OTP</label>
      <form:input path="otp" id="otp" />
      <form:errors path="otp" cssClass="error"/>
      <p class="error">${invalid}</p>
    </div>
    
    <input type="submit" value="Register">
  </form:form>
</div>
</body>
</html>