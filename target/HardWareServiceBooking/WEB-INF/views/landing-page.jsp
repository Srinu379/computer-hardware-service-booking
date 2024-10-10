<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Computer Hardware Service - Welcome</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/landing-page.css' />">
</head>
<body>
    <div class="container">
        <header>
            <h1>Computer Hardware Service</h1>
            <p>Your one-stop solution for hardware issues</p>
        </header>
        
        <main>
            <section class="auth-options">
                <div class="auth-card">
                    <h2>Customer Login</h2>
                    <p>Already have an account? Sign in here.</p>
                    <a href="<c:url value='login' />" class="btn btn-primary">Login</a>
                </div>
                
                <div class="auth-card">
                    <h2>Register</h2>
                    <p>New to our service? Create an account.</p>
                    <a href="<c:url value='register' />" class="btn btn-secondary">Register</a>
                </div>

                <div class="auth-card">
                    <h2>Computer Engineer Login</h2>
                    <p>For authorized engineers only.</p>
                    <a href="<c:url value='login-page' />" class="btn btn-tertiary">Engineer Login</a>
                </div>
            </section>
        </main>
        
        <footer>
            <p>&copy; 2023 Computer Hardware Service. All rights reserved.</p>
        </footer>
    </div>
</body>
</html>