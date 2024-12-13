<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Engineer Dashboard - TechFix Solutions</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/email.css' />">
</head>
<body>
    <div class="container">
        <h2>Send Email</h2>
        <form action="send-email-success" method="post">
            <label for="to">To:</label>
            <input type="email" id="to" name="to" required>

            <label for="subject">Subject:</label>
            <input type="text" id="subject" name="subject" required>

            <label for="body">Body:</label>
            <textarea id="body" name="body" required></textarea>

            <input type="submit" value="Send Email">
        </form>
    </div>
</body>
</html>