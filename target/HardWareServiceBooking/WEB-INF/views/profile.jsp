<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Engineer Profile</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/profile.css' />">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="<c:url value='e-homepage' />"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
                <li><a href="<c:url value='/view-pending-issues' />"><i class="fas fa-tasks"></i> Issues</a></li>
                <li><a href="#" class="active"><i class="fas fa-user"></i> Profile</a></li>
                <li><a href="<c:url value='/' />" class="btn-logout"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section class="profile-header">
            <h1>${engineer.name}</h1>
            <p>${engineer.jobTitle}</p>
        </section>

        <section class="detail-card">
            <h2>Personal Information</h2>
            <p><i class="fas fa-envelope"></i> Name: ${users.userName}</p>
            <p><i class="fas fa-envelope"></i> Email: ${users.email}</p>
        </section>

        <section class="profile-actions">
            <button class="btn-change-password" onclick="location.href='<c:url value='/change-password' />'">
                <i class="fas fa-key"></i> Change Password
            </button>
        </section>
    </main>

    <footer>
        <p>&copy; 2023 All rights reserved.</p>
    </footer>
</body>
</html>