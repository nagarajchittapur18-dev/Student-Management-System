<%@ page import="java.util.*,com.sms.dao.StudentDAO,com.sms.model.Student" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Students List</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
    background:#f4f6f9;
}

.container-box{

    margin-top:40px;
    background:white;
    padding:30px;
    border-radius:15px;
    box-shadow:0px 0px 15px rgba(0,0,0,0.2);
}

.table th{
    background:#243b55;
    color:white;
}

.btn-delete{
    background:red;
    color:white;
}

.btn-update{
    background:#ffc107;
    color:black;
}

.btn-add{
    background:#243b55;
    color:white;
}

</style>

</head>

<body>

<div class="container">

<div class="container-box">

<div class="d-flex justify-content-between mb-3">

<h2>Students List</h2>

<a href="addStudent.jsp"
   class="btn btn-add">

Add Student

</a>

</div>

<table class="table table-bordered table-hover">

<tr>

<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Course</th>
<th>Phone</th>
<th>Address</th>
<th>Actions</th>

</tr>

<%

StudentDAO dao = new StudentDAO();

List<Student> list = dao.getAllStudents();

for(Student s : list){

%>

<tr>

<td><%= s.getId() %></td>
<td><%= s.getName() %></td>
<td><%= s.getEmail() %></td>
<td><%= s.getCourse() %></td>
<td><%= s.getPhone() %></td>
<td><%= s.getAddress() %></td>

<td>

<a href="editStudent.jsp?id=<%= s.getId() %>"
   class="btn btn-update btn-sm">

Update

</a>

<a href="deleteStudent?id=<%= s.getId() %>"
   class="btn btn-delete btn-sm">

Delete

</a>

</td>

</tr>

<%
}
%>

</table>

</div>

</div>

</body>
</html>