# 🛠️ Computer Hardware Service Booking System

A web-based application designed to digitize and streamline hardware service request management by replacing manual tracking with an organized, centralized system.

---

## 🚀 Problem Statement

Manual service request handling often leads to:

* Poor tracking of repair requests
* Loss of customer/service records
* Lack of service status visibility
* Inefficient handling of multiple requests

This system addresses these issues by providing a structured platform for managing hardware service bookings efficiently.

---

## 💡 Solution

Developed a centralized system where users can:

* Submit hardware service requests
* Track service status
* Manage and organize service records digitally

---

## 🛠️ Tech Stack

| Layer           | Technology                   |
| --------------- | ---------------------------- |
| Backend         | Java, Spring MVC, Spring IoC |
| Database Access | Spring JDBC, JdbcTemplate    |
| View            | JSP                          |
| Database        | MySQL                        |
| Server          | Apache Tomcat 9              |

---

## ✨ Key Features

### 🧾 Service Booking

* Submit hardware repair/service requests
* Capture issue type and description

### 📋 Service Management

* View all service requests
* Track status (Pending / Completed)
* Organized record management

### 🔍 Data Handling

* Structured storage using MySQL
* Efficient retrieval using joins

### 🔐 Authentication

* Secure login for users and admin
* Password update and recovery support

---

## 🏗️ Architecture

The application follows MVC (Model-View-Controller) architecture:

* **Controller Layer** → Handles HTTP requests
* **Service Layer** → Business logic and validation
* **DAO Layer** → Database operations using JdbcTemplate
* **View Layer (JSP)** → UI rendering

**Flow:**
Client → Controller → Service → DAO → Database → Response

---

## 🗂️ Project Structure

```
src/main/java/hardware/service/booking/
├── controllers/     → Request handling
├── DAO/             → Database access layer
├── DTO/             → Data transfer objects
└── servicelayer/    → Business logic

src/main/webapp/
├── WEB-INF/
│   ├── views/       → JSP pages
│   ├── web.xml      → Dispatcher configuration
│   └── beans.xml    → Spring configuration
```

---

## 🗄️ Database Schema

The system uses a relational database with the following core tables:

### 👤 Users Table

Stores registered user details.

| Column   | Description    |
| -------- | -------------- |
| id       | Unique user ID |
| email    | User email     |
| userName | Username       |
| passWord | User password  |

---

### 👨‍💼 Admin Users Table (`Ausers`)

Stores admin credentials.

| Column   | Description    |
| -------- | -------------- |
| id       | Admin ID       |
| email    | Admin email    |
| passWord | Admin password |

---

### 🛠️ Issues Table

Stores service requests.

| Column      | Description         |
| ----------- | ------------------- |
| id          | Issue ID            |
| userid      | References users.id |
| issue       | Issue type          |
| description | Issue details       |
| createdAt   | Timestamp           |
| status      | Pending / Completed |

---

### 💬 Messages Table

Stores communication messages.

| Column  | Description         |
| ------- | ------------------- |
| id      | Message ID          |
| userid  | References users.id |
| message | Message content     |

---

## 🔗 Relationships

* One user can have multiple service requests
* One user can have multiple messages
* Issues are linked to users via `userid`

---

## ⚙️ Setup Instructions

### Local Setup

```bash
git clone https://github.com/Srinu379/computer-hardware-service-booking
```

1. Import as Maven project
2. Configure MySQL database
3. Set database credentials
4. Deploy on Apache Tomcat 9
5. Run at: http://localhost:8080

---

## ⚙️ Challenges & Solutions

* **Problem:** Managing multiple service requests
  **Solution:** Designed structured database with status tracking

* **Problem:** Tracking service progress
  **Solution:** Added status field (pending/completed)

* **Problem:** Avoiding data inconsistency
  **Solution:** Used relational mapping with joins

---

## ⚠️ Limitations

* No real-time notifications
* No pagination for large datasets
* Basic UI design

---

## 📌 Key Takeaways

* Demonstrates backend development using Spring MVC
* Implements relational database design with joins
* Shows practical service booking workflow
* Highlights structured problem-solving approach

---

## 👨‍💻 Author

**Vanam Srinivas**

* GitHub: https://github.com/Srinu379
* LinkedIn: https://linkedin.com/in/srinivas-vanam-79a72829b
