<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" th:href="@{css/index.css}" />
    <title>S.M.S</title>
</head>
<body>
    <div class="body ">
    <div class="container overall-container student-body">
        <div class="row row-header">
            <div class="col-md-12 col-header">
                <h1 class="header header-md">Students List</h1>
            </div>
        </div>
    <div class="main-content table-responsive">
        <table class="table table-responsive">
            <thead>
                <tr>
                    <th>Student ID</th>
                    <th>Name</th>
                    <th>DOB</th>
                    <th>Email</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr th:each="student : ${students}">
                    <td th:text="${student.id}"></td>
                    <td th:text="${student.name}"></td>
                    <td th:text="${student.dob}"></td>
                    <td th:text="${student.email}"></td>
                    <td style="display: flex;">
                        <div class="btn-1">
                            <a th:attr="onclick=${'updateStudent('+student.id+')'}" class="btn-update"><span>Update</span></a>
                          </div>
                          <div class="btn-1" style="margin-left: 25px;">
                            <a th:attr="onclick=${'deleteStudent('+student.id+')'}" class="btn-delete"><span>Delete</span></a>
                          </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    </div>
</div>
</body>
<script>
    function updateStudent(id) {
        window.location.href = "/updateStudent/" + id;
    }
    function deleteStudent(id) {
        if (confirm("Are you sure you want to delete this student?")) {
            window.location.href = "/deleteStudent/" + id;
        }
    }
</script>
</html>