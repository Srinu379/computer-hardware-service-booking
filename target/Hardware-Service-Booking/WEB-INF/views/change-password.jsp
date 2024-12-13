<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/change-password.css' />">
</head>
<body>
    <div class="container">
        <h1>Change Password</h1>
        <form action="process-change-password" method="POST">
        	<div class="form-group">
                <label for="email">Email</label>
                <input type="text" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="currentPassword">Current Password</label>
                <input type="password" id="passWord" name="passWord" required>
            </div>
            <div class="form-group">
                <label for="newPassword">New Password</label>
                <input type="password" id="newPassword" name="newPassword" required>
            </div>
            <div class="form-group">
                <label for="confirmPassword">Confirm New Password</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
            </div>
            <button type="submit" class="btn-submit">Change Password</button>
        </form>
        <a href="<c:url value='profile-page' />" class="btn-back">Back to Dashboard</a>
    </div>
</body>
</html>