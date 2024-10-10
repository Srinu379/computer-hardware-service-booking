<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Engineer Dashboard - TechFix Solutions</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/e-homepage.css' />">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
    <header>
        <nav>
            <div class="logo">TechFix Solutions</div>
            <ul>
                <li><a href="#overview">Overview</a></li>
                <li><a href="<c:url value='view-pending-issues' />">Issues</a></li>
                <li><a href="<c:url value='profile-page' />">Profile</a></li>
                <li><a href="<c:url value='/' />" class="btn-logout">Logout</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section id="hero">
            <h1>Welcome, ${userName}</h1>
            <p>Here's your overview for today</p>
        </section>

        <section id="overview">
            <h2>Dashboard</h2>
            <div class="service-grid">
                <div class="service-card">
                    <i class="fas fa-clipboard-list"></i>
                    <h3>Total Issues</h3>
                    <p class="count">${totalCount}</p>
                </div>
                <div class="service-card">
                    <i class="fas fa-clock"></i>
                    <h3>Pending Issues</h3>
                    <p class="count">${pendingCount}</p>
                </div>
                <div class="service-card">
                    <i class="fas fa-check-circle"></i>
                    <h3>Completed Issues</h3>
                    <p class="count">${completedCount}</p>
                </div>
            </div>
        </section>

        <section id="quick-actions">
            <h2>Quick Actions</h2>
            <div class="features-grid">
                <div class="feature">
                    <a href="<c:url value='view-all-issues' />" class="btn-cta">View All Issues</a>
                </div>
                <div class="feature">
                    <a href="<c:url value='view-completed-issues' />" class="btn-cta">View Completed Issues</a>
                </div>
                <div class="feature">
                    <a href="<c:url value='send-email' />" class="btn-cta">Send Email</a>
                </div>
                <div class="feature">
                    <a href="<c:url value='view-pending-issues' />" class="btn-cta">View Pending Issues</a>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="footer-content">
            <div class="footer-section">
                <h3>About Us</h3>
                <p>TechFix Solutions provides top-notch IT support and services.</p>
            </div>
            <div class="footer-section">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="#overview">Overview</a></li>
                    <li><a href="<c:url value='view-pending-issues'/>">Issues</a></li>
                    <li><a href="<c:url value='profile-page' />">Profile</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h3>Contact Us</h3>
                <p>Email: support@techfixsolutions.com</p>
                <p>Phone: (123) 456-7890</p>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2023 TechFix Solutions. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>