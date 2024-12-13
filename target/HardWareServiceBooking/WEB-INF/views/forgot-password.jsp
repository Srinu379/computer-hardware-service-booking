<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Forgot Password</title>
  <link rel="stylesheet" href="<c:url value='/resources/css/forgot-password.css' />">
</head>
<body>
  <div class="container">
    <h1>Forgot Your Password?</h1>
    <form action="send-forgot-password-otp">
      <div class="form-group">
        <div class="input-group">
          <label for="email">Email Address :</label>
          <input type="email" id="email" name="email" required placeholder="Enter your email">
        </div>
        <c:if test="${not empty userDoesNotExist}">
          <span class="error-message">${userDoesNotExist}</span>
        </c:if>
        <div class="input-group">
          <label for="password">Password :</label>
          <input type="password" id="password" name="password" required placeholder="Enter your new password">
        </div>
      </div>
      <div class="form-group">
        <button type="submit" class="btn-submit">Send-otp</button>
      </div>
    </form>
    <div class="back-to-login">
      <p>Remember your password? <a href="<c:url value='/login' />">Go back to login</a>.</p>
    </div>
  </div>
</body>
</html>