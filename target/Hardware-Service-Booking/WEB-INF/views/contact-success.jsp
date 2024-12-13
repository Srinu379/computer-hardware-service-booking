<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Success</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/contact-success.css' />">
</head>
<body>
    <div class="container">
        <h1>Thank You for Contacting Us!</h1>
        <p>Your message has been successfully submitted. We appreciate you reaching out to us.</p>
        <p>We will get back to you as soon as possible.</p>
        <a href="<c:url value='/homepage' />" class="button">Back to Home</a>
    </div>
</body>
</html>