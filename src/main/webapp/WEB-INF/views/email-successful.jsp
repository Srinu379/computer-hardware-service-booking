<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Email Sent Successfully</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/email-successful.css' />">
</head>
<body>
    <div class="container">
        <div class="icon">✉️</div>
        <h1>Email Sent Successfully!</h1>
        <p>Your message has been sent. We'll get back to you as soon as possible.</p>
        <a href="<c:url value='e-homepage' />" class="btn">Back to Home</a>
    </div>
</body>
</html>