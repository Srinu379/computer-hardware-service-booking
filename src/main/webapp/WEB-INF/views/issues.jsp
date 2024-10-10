 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Complaints Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="<c:url value='/resources/css/issues.css' />">
</head>
<body>
    <div class="container">
        <h1><i class="fas fa-clipboard-list"></i> My Complaints Dashboard</h1>

        <div class="complaints-grid">
           <c:if test="${not empty users}" >
            <c:forEach items="${users}" var="user">
                <div class="complaint-card">
                    <i class="fas fa-tools complaint-icon"></i>
                    <h2>Issue: ${user.issue}</h2>
                    <p>Description: ${user.description}</p>
                    <p>Email: ${user.email}</p>
                    <p>Username: ${user.userName}</p>
                    <p>
                        <span class="status status-${user.status.toLowerCase()}">Status: ${user.status}</span>
                    </p>
                    <p class="date">
                        <i class="far fa-calendar-alt"></i>
                        Registered time: ${user.createdAt}
                    </p>
                    <a href="<c:url value='edit-page'/>" class="edit-btn">Edit</a>
                </div>
            </c:forEach>
            </c:if>
            <c:if test="${empty users}" >
            	<h2 align="center">No Complaints</h2>
            </c:if>
        </div>
    </div>
  </body>
</html>