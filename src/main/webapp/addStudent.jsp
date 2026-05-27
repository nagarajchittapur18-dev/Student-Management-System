<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Add Student</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
    background:#f4f6f9;
}

.card{
    margin-top:40px;
    border-radius:15px;
    border:none;
    box-shadow:0px 0px 15px rgba(0,0,0,0.2);
}

.card-header{
    background:#243b55;
    color:white;
    border-radius:15px 15px 0px 0px;
}

.btn-save{
    background:#243b55;
    color:white;
    width:100%;
}

</style>

</head>

<body>

<div class="container">

<div class="row justify-content-center">

<div class="col-md-7">

<div class="card">

<div class="card-header text-center">

<h2>Add Student</h2>

</div>

<div class="card-body">

<form action="addStudent" method="post">

<div class="mb-3">

<label>Name</label>

<input type="text"
       name="name"
       class="form-control"
       required>

</div>

<div class="mb-3">

<label>Email</label>

<input type="email"
       name="email"
       class="form-control"
       required>

</div>

<div class="mb-3">

<label>Course</label>

<input type="text"
       name="course"
       class="form-control"
       required>

</div>

<div class="mb-3">

<label>Phone</label>

<input type="text"
       name="phone"
       class="form-control"
       required>

</div>

<div class="mb-3">

<label>Address</label>

<textarea name="address"
          class="form-control"></textarea>

</div>

<button class="btn btn-save">

Save Student

</button>

</form>

</div>

</div>

</div>

</div>

</div>

</body>
</html>