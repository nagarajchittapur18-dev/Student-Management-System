# Student Management System

## Project Overview

Student Management System is a web-based application developed using Java Servlets, JSP, SQLite Database, JDBC, Maven, and Apache Tomcat 11.

This project helps manage student records such as:

- Add Student
- View Students
- Update Student
- Delete Student

The project follows MVC architecture using:
- Model
- View
- Controller

---

# Technologies Used

- Java
- JSP
- Servlets
- JDBC
- SQLite
- Maven
- Bootstrap 5
- Apache Tomcat 11
- VS Code

---

# Features

✅ Add Student  
✅ View Students  
✅ Update Student  
✅ Delete Student  
✅ Responsive UI  
✅ SQLite Database Integration  
✅ Bootstrap Frontend  
✅ Maven Project Structure  

---

# Project Structure

```text
StudentManagementSystem
│
├── src
│   └── main
│       ├── java
│       │   └── com
│       │       └── sms
│       │           ├── controller
│       │           ├── dao
│       │           └── model
│       │
│       └── webapp
│           ├── WEB-INF
│           ├── index.jsp
│           ├── addStudent.jsp
│           ├── students.jsp
│           └── editStudent.jsp
│
├── database
│   └── student1.db
│
├── pom.xml
└── README.md
```

---

# Database

Database Used:
- SQLite

Database File:
```text
student1.db
```

Table Name:
```sql
students
```

SQL Query:

```sql
CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    course TEXT NOT NULL,
    phone TEXT NOT NULL,
    address TEXT NOT NULL
);
```

---

# Setup Instructions

## 1. Clone Repository

```bash
git clone https://github.com/yourusername/StudentManagementSystem.git
```

---

## 2. Open Project

Open project in VS Code.

---

## 3. Configure Database Path

Update database path in:

```text
DBConnection.java
```

Example:

```java
jdbc:sqlite:C:/path/database/student1.db
```

---

## 4. Build Project

```bash
mvn clean package
```

---

## 5. Deploy WAR File

Copy generated WAR file from:

```text
target/
```

Paste into:

```text
Tomcat11/webapps
```

---

## 6. Start Tomcat

Run:

```text
startup.bat
```

from:

```text
Tomcat11/bin
```

---

## 7. Run Project

Open browser:

```text
http://localhost:8080/StudentManagementSystem/
```

---

# Screenshots

- Home Page
- Add Student Page
- Students List Page
- Update Student Page

---

# Future Enhancements

- Login Authentication
- Search Student
- Attendance Module
- Dashboard Analytics
- Export PDF
- Dark Mode

---

# Author

Nagaraj Chitapur

---

# License

This project is developed for educational purposes.
