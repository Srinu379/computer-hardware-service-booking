<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Password Updated</title>
  <link rel="stylesheet" href="<c:url value='/resources/css/update-successful.css' />">
</head>
<body>
  <div class="container">
    <h1>Password Updated Successfully!</h1>
    <p>Your password has been successfully updated. You can now use your new password to log in to your account.</p>

    <a href="<c:url value='login' />" class="btn-back">Back to Login</a>
  </div>
</body>
</html>