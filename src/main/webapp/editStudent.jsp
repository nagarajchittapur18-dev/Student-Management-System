<%@ page import="com.sms.dao.StudentDAO,com.sms.model.Student" %>

<%

int id = Integer.parseInt(request.getParameter("id"));

StudentDAO dao = new StudentDAO();

Student s = dao.getStudentById(id);

%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Edit Student</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body style="background:#f4f6f9;">

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-7">

<div class="card">

<div class="card-header bg-warning">

<h2>Update Student</h2>

</div>

<div class="card-body">

<form action="updateStudent" method="post">

<input type="hidden"
       name="id"
       value="<%= s.getId() %>">

<div class="mb-3">

<label>Name</label>

<input type="text"
       name="name"
       value="<%= s.getName() %>"
       class="form-control">

</div>

<div class="mb-3">

<label>Email</label>

<input type="email"
       name="email"
       value="<%= s.getEmail() %>"
       class="form-control">

</div>

<div class="mb-3">

<label>Course</label>

<input type="text"
       name="course"
       value="<%= s.getCourse() %>"
       class="form-control">

</div>

<div class="mb-3">

<label>Phone</label>

<input type="text"
       name="phone"
       value="<%= s.getPhone() %>"
       class="form-control">

</div>

<div class="mb-3">

<label>Address</label>

<textarea name="address"
          class="form-control"><%= s.getAddress() %></textarea>

</div>

<button class="btn btn-warning">

Update Student

</button>

</form>

</div>

</div>

</div>

</div>

</div>

</body>
</html>