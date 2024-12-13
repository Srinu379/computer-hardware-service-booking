<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile - Medical Services Portal</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="<c:url value='/resources/css/profile.css' />">
</head>
<body>
    <div class="container">
        <main class="main-content">
            <header class="header">
                <div class="header-content">
                    <a href="<c:url value='e-homepage' />" class="back-link">
                        <i class="fas fa-arrow-left"></i> Back
                    </a>
                    <h1 class="page-title">
                        <i class="fas fa-clipboard-list"></i>
                        Profile
                    </h1>
                </div>
            </header>

            <div class="profile-card">
                <div class="profile-header">
                    <div class="profile-avatar">
                        <i class="fas fa-user-circle"></i>
                    </div>
                    <div class="profile-info">
                        <h2 class="profile-name">${users.userName}</h2>
                        <p class="profile-subtitle">
                            <i class="fas ${gender == 'FEMALE' ? 'fa-female' : 'fa-male'}"></i>
                            ${gender} - 20 years
                        </p>
                    </div>
                </div>

                <div class="profile-details">
                    <div class="detail-group">
                        <div class="detail-item">
                            <span class="detail-label">
                                <i class="fas fa-envelope"></i> Email
                            </span>
                            <span class="detail-value">${users.email}</span>
                        </div>
                        <div class="detail-item">
                            <span class="detail-label">
                                <i class="fas fa-phone"></i> Phone
                            </span>
                            <span class="detail-value">9842771911</span>
                        </div>
                    </div>
                </div>

                <div class="action-buttons">
                    <a href="<c:url value='change-password' />" class="btn btn-secondary">
                        <i class="fas fa-key"></i> Change Password
                    </a>
                </div>
            </div>
        </main>
    </div>
</body>
</html>