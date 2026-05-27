<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Student Management System</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<style>

body{
    background: linear-gradient(to right,#141e30,#243b55);
    font-family: Arial;
}

.main-card{

    margin-top:70px;
    background:white;
    padding:50px;
    border-radius:20px;
    box-shadow:0px 0px 20px rgba(0,0,0,0.3);
}

.title{

    font-size:40px;
    font-weight:bold;
    color:#243b55;
}

.subtitle{
    color:gray;
    margin-bottom:40px;
}

.card-box{

    border-radius:15px;
    padding:30px;
    color:white;
    transition:0.3s;
}

.card-box:hover{
    transform:scale(1.05);
}

.add-box{
    background:#0d6efd;
}

.view-box{
    background:#198754;
}

.update-box{
    background:#ffc107;
    color:black;
}

.delete-box{
    background:#dc3545;
}

.icon{
    font-size:45px;
    margin-bottom:15px;
}

.btn-custom{
    width:100%;
    border-radius:10px;
}

</style>

</head>

<body>

<div class="container">

    <div class="main-card">

        <div class="text-center">

            <h1 class="title">

                Student Management System

            </h1>

            <p class="subtitle">

                Manage Student Records Easily

            </p>

        </div>

        <div class="row g-4">

            <!-- Add Student -->

            <div class="col-md-3">

                <div class="card-box add-box text-center">

                    <i class="fa-solid fa-user-plus icon"></i>

                    <h3>Add Student</h3>

                    <p>Add new student records</p>

                    <a href="addStudent.jsp"
                       class="btn btn-light btn-custom">

                       Open
                    </a>

                </div>

            </div>

            <!-- View Students -->

            <div class="col-md-3">

                <div class="card-box view-box text-center">

                    <i class="fa-solid fa-users icon"></i>

                    <h3>View Students</h3>

                    <p>Display all students</p>

                    <a href="students.jsp"
                       class="btn btn-light btn-custom">

                       Open
                    </a>

                </div>

            </div>

            <!-- Update Student -->

            <div class="col-md-3">

                <div class="card-box update-box text-center">

                    <i class="fa-solid fa-pen-to-square icon"></i>

                    <h3>Update Student</h3>

                    <p>Edit student details</p>

                    <a href="students.jsp"
                       class="btn btn-dark btn-custom">

                       Open
                    </a>

                </div>

            </div>

            <!-- Delete Student -->

            <div class="col-md-3">

                <div class="card-box delete-box text-center">

                    <i class="fa-solid fa-trash icon"></i>

                    <h3>Delete Student</h3>

                    <p>Remove student records</p>

                    <a href="students.jsp"
                       class="btn btn-light btn-custom">

                       Open
                    </a>

                </div>

            </div>

        </div>

    </div>

</div>

</body>
</html>