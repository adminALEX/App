<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" th:href="@{css/index.css}" />
    <title>S.M.S.</title>
</head>
<body>
    <div class="body">
        <div class="container overall-container">
            <div class="row row-header">
                <div class="col-md-12 col-header">
                    <h1 class="header">Students Management System</h1>
                </div>
            </div>
        <div class="nav-buttons">
            <div class="button-view">
            <button onclick="window.location.href='/viewStudents'" class="button-51 view">View Students</button>
            </div>
            <div class="button-add">
            <button onclick="window.location.href='/addStudent'" class="button-51 add">Add Students</button>
            </div>
        </div>
        </div>
    </div>
</body>
</html>