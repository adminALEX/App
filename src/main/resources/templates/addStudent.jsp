<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" th:href="@{css/index.css}" />
    <link rel="stylesheet" th:href="@{css/form.css}" />
    <title>S.M.S.</title>
</head>
<body>
    <div class="body">
        <div class="container overall-container student-body">
            <div class="row row-header">
                <div class="col-md-12 col-header">
                    <h1 class="header header-md">Enter Student details</h1>
                </div>
            </div>
            <form th:action="@{/addStudent}" method="post" class="form">
                <label>Name :</label><input required type="text" name="name"><br>
                <label>Date of Birth :</label><input required type="date" name="dob"><br>
                <label>E-mail :</label><input required type="email" name="email"><br>
                <input type="submit" class="btn-0"value="Add Student">
            </form>
        </div>
        </div>
</body>
</html>