<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Service Booking</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="<c:url value='/resources/css/contact.css' />">
</head>
<body>
    <header>
    <nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn">
            <i class="fas fa-bars"></i>
        </label>
        <div class="logo">Tech Fix</div>
        <ul>
            <li><a href="<c:url value='homepage' />">Home</a></li>
            <li><a href="<c:url value='services' />">Services</a></li>
            <li><a href="<c:url value='about-us' />">About</a></li>
            <li><a href="<c:url value='contact-us' />">Contact</a></li>
            <li><a href="<c:url value='service-now' />">Service Status</a></li>
            <li><a href="<c:url value='/' />" class="btn-logout">Logout</a></li>
        </ul>
    </nav>
    </header>

    <main>
        <section class="contact-content">
            <h1>Contact Us</h1>
            <p>We'd love to hear from you. Please fill out the form below or use our contact information.</p>
            <div class="contact-info">
                <div>
                    <h2>Our Office</h2>
                    <p>Gachibowli, 	Hyderabad</p>
                </div>
                <div>
                    <h2>Email</h2>
                    <p>2210030391@klh.edu.in</p>
                </div>
                <div>
                    <h2>Phone</h2>
                    <p>+91 9876543210</p>
                </div>
            </div>
            <form:form class="contact-form" action="contact-success?emailUser=${email}" modelAttribute="user">
                <form:input name="name" path="userName" placeholder="Enter your name" readonly="true" />
                <form:input name="email" path="email" placeholder="Enter your email" readonly="true" />
                <form:textarea name="message" path="message" placeholder="Enter your message"/>
                <input type="submit" value="Submit" />
            </form:form>
        </section>
    </main>

    <footer>
        <p>&copy; 2023 Service Booking. All rights reserved.</p>
    </footer>
</body>
</html>