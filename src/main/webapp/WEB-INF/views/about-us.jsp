<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Service Booking</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/about-us.css' />">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
  <header>
    <nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn">
            <i class="fas fa-bars"></i>
        </label>
        <div class="logo">Service Booking</div>
        <ul>
            <li><a href="<c:url value='homepage' />">Home</a></li>
            <li><a href="<c:url value='services' />">Services</a></li>
            <li><a href="<c:url value='about-us' />">About</a></li>
            <li><a href="<c:url value='contact-us' />">Contact</a></li>
            <li><a href="<c:url value='service-now' />">ServiceNow</a></li>
            <li><a href="<c:url value='/' />" class="btn-logout">Logout</a></li>
        </ul>
    </nav>
  </header>
       <main>
        <section class="hero">
            <h1>About Service Booking</h1>
            <p>Your trusted partner in professional services</p>
        </section>
        <section class="about-content">
            <div class="mission">
                <h2><i class="fas fa-bullseye"></i> Our Mission</h2>
                <p>To provide high-quality, reliable services that make our customers' lives easier and more convenient.</p>
            </div>

            <div class="vision">
                <h2><i class="fas fa-eye"></i> Our Vision</h2>
                <p>To become the leading service booking platform, known for excellence and customer satisfaction.</p>
            </div>
            <div class="values">
                <h2><i class="fas fa-heart"></i> Our Values</h2>
                <ul>
                    <li>Customer-Centric Approach</li>
                    <li>Quality Service</li>
                    <li>Integrity and Transparency</li>
                    <li>Innovation</li>
                </ul>
            </div>
            <h2><i class="fas fa-users"></i> Our Team</h2>
            <div class="team-members">
                <div class="member">
                    <img src="<c:url value='/resources/images/team-member1.jpg' />" alt="Nithin">
                    <h3>Nithin</h3>
                    <p>Founder & CEO</p>
                </div>
                <div class="member">
                    <img src="<c:url value='/resources/images/team-member2.jpg' />" alt="Sai">
                    <h3>Sai</h3>
                    <p>Operations Manager</p>
                </div>
                <div class="member">
                    <img src="<c:url value='/resources/images/team-member3.jpg' />" alt="Venkat Ram">
                    <h3>Venkat Ram</h3>
                    <p>Customer Relations</p>
                </div>
            </div>
        </section>
    </main>
    <footer>
        <p>&copy; 2023 Service Booking. All rights reserved.</p>
    </footer>
</body>
</html>