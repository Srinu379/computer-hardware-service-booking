<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Error</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/error-styles.css' />">
</head>
<body>
    <div class="container">
        <h1>Registration Error</h1>
        <div class="error-message">
            <p> Failed to insert the data into database please try again after some time </p>
        </div>
        <p>We apologize for the inconvenience. Please try the following:</p>
        <ul>
            <li>Check your internet connection</li>
            <li>Ensure all required fields are filled correctly</li>
            <li>Try registering again in a few minutes</li>
        </ul>
        <a href="<c:url value='/register' />" class="btn">Return to Registration Page</a>
    </div>
</body>
</html>