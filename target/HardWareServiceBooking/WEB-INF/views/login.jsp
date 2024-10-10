<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Computer Hardware Service - Login</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/login.css' />">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
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
    <div class="login-container">
        <h2><i class="fas fa-laptop-code"></i> Login</h2>
        <form:form action="process-login?user=user" modelAttribute="userLogin" onsubmit="return validate()">
            <div class="input-group">
                <label for="email"><i class="fas fa-envelope"></i> Email:</label>
                <form:input path="email" id="email"/>
                <form:errors path="email" cssClass="error"/>
            </div>
            
            <div class="input-group">
                <label for="userName"><i class="fas fa-user"></i> Username:</label>
                <form:input path="userName" id="userName" />
                <form:errors path="userName" cssClass="error"/>
            </div>
            
            <div class="input-group">
                <label for="passWord"><i class="fas fa-lock"></i> Password:</label>
                <form:password path="passWord" id="passWord" />
                <form:errors path="passWord" cssClass="error"/>
            </div>
            
            <c:if test="${not empty errorMessage}">
            	<div class="error-message show">${errorMessage}</div>
            </c:if>
            
            <button type="submit" class="submit-btn">
                <i class="fas fa-sign-in-alt"></i> Login
            </button>
        </form:form>
        <div class="additional-links">
            <a href="#" class="forgot-password">Forgot Password?</a>
            <a href="<c:url value='register' />" class="register">Register</a>
        </div>
    </div>
</body>
</html>