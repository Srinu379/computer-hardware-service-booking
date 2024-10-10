<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Submission Confirmation</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/service-request-successful.css' />">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
    <div class="confirmation-container">
        <div class="icon">
            <i class="fas fa-check-circle"></i>
        </div>
        <h1>Form Submitted Successfully!</h1>
        <p class="message">Thank you for submitting your service request. Your form has been received and is being processed.</p>
        <p class="message">Please check your service request page to book an appointment and view the status of your request.</p>
        <a href="<c:url value='service-now' />" class="cta-button">View Service Requests</a>
    </div>
</body>
</html>