<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Services - Computer Hardware Service</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="<c:url value='/resources/css/services.css' />">
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
                <li><a href="<c:url value='service-now' />">ServiceNow</a></li>
                <li><a href="<c:url value='/' />" class="btn-logout">Logout</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section class="hero">
            <h1>Our Services</h1>
            <p>Professional computer hardware services tailored to your needs</p>
        </section>

        <section class="services-grid">
            <div class="service-card">
                <h2>Hardware Repair</h2>
                <p>Expert repair services for all types of computer hardware issues.</p>
                <a href="<c:url value='book-now?Service=Hardware Repair' />" class="btn-book">Book Now</a>
            </div>
            <div class="service-card">
                <h2>System Upgrades</h2>
                <p>Enhance your computer's performance with our upgrade services.</p>
                <a href="<c:url value='book-now?Service=System Upgrades'/>" class="btn-book">Book Now</a>
            </div>
            <div class="service-card">
                <h2>Data Recovery</h2>
                <p>Recover lost or corrupted data from your hard drives and storage devices.</p>
                <a href="<c:url value='book-now?Service=Data Recovery'/>" class="btn-book">Book Now</a>
            </div>
            <div class="service-card">
                <h2>Network Setup</h2>
                <p>Professional setup and configuration of home and office networks.</p>
                <a href="<c:url value='book-now?Service=Network Setup'/>" class="btn-book">Book Now</a>
            </div>
            <div class="service-card">
                <h2>Virus Removal</h2>
                <p>Comprehensive malware and virus removal services.</p>
                <a href="<c:url value='book-now?Service=Virus Removal'/>" class="btn-book">Book Now</a>
            </div>
            <div class="service-card">
                <h2>Custom PC Building</h2>
                <p>Build your dream PC with our custom building services.</p>
                <a href="<c:url value='book-now?Service=Custom PC Building'/>" class="btn-book">Book Now</a>
            </div>
        </section>

        <section class="cta">
            <h2>Need a service not listed here?</h2>
            <p>Contact us for custom solutions tailored to your specific needs.</p>
            <a href="<c:url value='/contact-us' />" class="btn-contact">Contact Us</a>
        </section>
    </main>

    <footer>
        <p>&copy; 2023 Service Booking. All rights reserved.</p>
    </footer>
</body>
</html>