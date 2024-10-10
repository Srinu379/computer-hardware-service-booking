<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Service Booking - Home</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/homepage.css' />">
</head>
<body>
    <header>
        <nav>
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
        <section id="hero">
            <h1>Book Your Service Today</h1>
            <p>Fast, reliable, and professional services at your fingertips</p>
            <a href="<c:url value='services' />" class="btn-cta">Book Now</a>
        </section>

        <section id="services">
            <h2>Our Services</h2>
            <div class="service-grid">
                <div class="service-card">
                    <h3>Repair</h3>
                    <p>Quick and efficient repair services</p>
                </div>
                <div class="service-card">
                    <h3>Cleaning</h3>
                    <p>Professional cleaning services</p>
                </div>
                <div class="service-card">
                    <h3>Delivery</h3>
                    <p>Fast and secure delivery services</p>
                </div>
            </div>
        </section>

        <section id="why-choose-us">
            <h2>Why Choose Us</h2>
            <div class="features-grid">
                <div class="feature">
                    <h3>Expert Technicians</h3>
                    <p>Our team consists of highly skilled and certified professionals</p>
                </div>
                <div class="feature">
                    <h3>Quick Response</h3>
                    <p>We prioritize your time with our prompt and efficient service</p>
                </div>
                <div class="feature">
                    <h3>Quality Guarantee</h3>
                    <p>We stand behind our work with a 100% satisfaction guarantee</p>
                </div>
            </div>
        </section>

        <section id="testimonials">
            <h2>What Our Customers Say</h2>
            <div class="testimonial-grid">
                <div class="testimonial">
                    <p>"Excellent service! Very professional and timely."</p>
                    <cite>- Nithin</cite>
                </div>
                <div class="testimonial">
                    <p>"The repair was done quickly and efficiently. Highly recommend!"</p>
                    <cite>- Jayanth</cite>
                </div>
                <div class="testimonial">
                    <p>"Great customer service and attention to detail. Will use again!"</p>
                    <cite>- Dhruva</cite>
                </div>
                <div class="testimonial">
                    <p>"Impressed with the quality of work. Exceeded my expectations!"</p>
                    <cite>- Sai</cite>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="footer-content">
            <div class="footer-section">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="<c:url value='homepage' />">Home</a></li>
                    <li><a href="<c:url value='services' />">Services</a></li>
                    <li><a href="<c:url value='about-us' />">About</a></li>
                    <li><a href="<c:url value='contact-us' />">Contact</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h3>Contact Us</h3>
                <p>Email: info@servicebooking.com</p>
                <p>Phone: (123) 456-7890</p>
            </div>
            <div class="footer-section">
                <h3>Follow Us</h3>
                <div class="social-icons">
                    <a href="#">Facebook</a>
                    <a href="#">Twitter</a>
                    <a href="#">Instagram</a>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2023 Service Booking. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>