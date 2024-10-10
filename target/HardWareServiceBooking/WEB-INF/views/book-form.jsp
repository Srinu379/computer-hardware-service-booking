<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Computer Hardware Service - Issue Report</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/book-form.css' />">
</head>
<body>
    <div class="login-container">
        <h2><i class="fas fa-laptop-code"></i> Hardware Issue Report</h2>
        <form:form action="process-book-form" modelAttribute="UserBookDto">
            <label for="email">Email:</label>
            <form:input path="email" readonly="true" />
            
            <label for="userName">Username:</label>
            <form:input path="userName" readonly="true" />
            
            <label for="issue">Issue Type:</label>
            <form:select path="issue">
                <form:option value="${UserBookDto.issue}" label="${UserBookDto.issue}"/>
            </form:select>   
            
            <label for="description">Description:</label>
            <form:textarea path="description" />
            <form:errors path="description" cssClass="error" />
            
            <input type="submit" value="Submit" />
        </form:form>
    </div>
</body>
</html>