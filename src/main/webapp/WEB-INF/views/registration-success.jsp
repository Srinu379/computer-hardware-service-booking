<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Successful - Computer Hardware Service</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/registration-success.css' />">
</head>
<body>
    <div class="success-container">
        <h2>Registration Successful!</h2>
        <div class="success-message">
            <p>Thank you for registering with Computer Hardware Service.</p>
            <p>Your account has been created successfully.</p>
        </div>
        <div class="next-steps">
            <h3>Next Steps:</h3>
            <ul>
                <li>Check your email for a confirmation link</li>
                <li>Complete your profile information</li>
                <li>Explore our services</li>
            </ul>
        </div>
        <div class="action-buttons">
            <a href="<c:url value='/login' />" class="btn btn-primary">Login Now</a>
            <a href="<c:url value='/' />" class="btn btn-secondary">Return to Home</a>
        </div>
    </div>
</body>
</html>