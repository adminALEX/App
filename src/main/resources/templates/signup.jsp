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
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Archivo+Black&family=Righteous&family=Sacramento&display=swap');
/*
font-family: 'Archivo Black', sans-serif;
font-family: 'Righteous', cursive;
font-family: 'Sacramento', cursive;
*/

.body{
    position:absolute;
    top:0;
    left:0;
    bottom:0;
    right:0;
    overflow-y: scroll;
    background-image: url("../assets/15628839_5591276.jpg");
    background-repeat: no-repeat;
    background-size: 100% 100% !important;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    font-family: 'Nova Oval', cursive !important;
    color:rgb(0, 0, 0);
}
.student-body{
    position: absolute;
    top:0;
}
.row-header{
    align-content: center;
    justify-content: center;
    text-align: center;
    vertical-align: middle;
    margin: 1rem;
    padding-top: 1rem;
}
.button-view{
    width: 150%;
    flex-direction: flex-end;
    display: flex;
    justify-content: center;
}
.button-add{
    width: 50%;
    display: flex;
    flex-direction: flex-start;
    justify-content: center;
}
.nav-buttons{
    margin-left: auto;
    margin-right: auto;
    display: grid;
    grid-template-columns: 1fr 1fr;
}
.button-51 {
  background-color: transparent;
  border: 1px solid #18A795;
  box-sizing: border-box;
  color: #00132C;
  font-family: "Avenir Next LT W01 Bold",sans-serif;
  font-size: 16px;
  font-weight: 700;
  line-height: 24px;
  padding: 16px 23px;
  position: relative;
  text-decoration: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-51:hover,
.button-51:active {
  outline: 1px solid #18A795;
  transform: translateX(0px);
  transition: width;
  color: #FFFFFF;
  transform: translateY(0px);
}

.button-51:hover {
  background-color: transparent;
  cursor: pointer;
}

.button-51:before {
  background-color: #D5EDF6;
  content: "";
  height: calc(100% + 3px);
  position: absolute;
  right: -7px;
  top: -9px;
  transition: background-color 300ms ease-in;
  width: 100%;
  z-index: -1;
}

.button-51:hover:before {
  background-color: #18a794a8;
}

@media (min-width: 768px) {
  .button-51 {
    padding: 16px 32px;
  }
}


/* overall container */
.overall-container{
    height: 400px;

}
.row-header{
margin: 50px;
}
.row-header h1{
    font-size:5.5rem;
    font-family: 'Sacramento', cursive;
    color: #fc9621dd;
    /* text-shadow: 2px 2px 4px #000000; */
}

.view{
    color: #18A795;
}

.add{
    color: #18A795;
}

.header-md{
    font-size: 5rem !important;
}
.btn-1 a{
  text-decoration: none;
  border: 2px solid #010100;
  color: #000;
  letter-spacing: 2px;
  position: relative;
  display: inline-block;
}

span {
  position: relative;
  /* z-index coz when we put bg to before and after this span text will not be visible */
  z-index: 3;
}

/* Button 1 styles */
.btn-1 a{
    font-family: 'Righteous', 'cursive' !important; 
    font-size: 15px;
    cursor: pointer;
}
.btn-1 a::before {
  content: "";
  position: absolute;
  top: 5px;
  left: -2px;
  width: calc(100% + 6px);
  /*100% plus double the times left values*/
  height: calc(100% - 10px);
  background-color: #ffffff;
  transition: all 0.5s ease-in-out;
  transform: scaleY(1);
}

.btn-1 a:hover::before,
 a:hover::before {
  transform: scaleY(0);
}

.btn-1 a::after {
  content: "";
  position: absolute;
  left: 5px;
  top: -5px;
  width: calc(100% - 10px);
  /*100% plus double the times left values*/
  height: calc(100% + 10px);
  background-color: #ffffff;
  transition: all 0.5s ease-in-out;
  transform: scaleX(1);
}
/* Created by http://grohit.com/  */

.btn-1 a:hover::after {
  transform: scaleX(0);
}
.form{
    width: 25rem;
    display: grid;
    grid-template-rows: 1fr 1fr 1fr;
    grid-gap: 2px;
    margin: auto;
}

.btn-0{
    border-radius: 20px;
    padding:5px;
    outline-width: 0;
    border-color: transparent;
    background-image: url("../assets/15628839_5591276.jpg");
    background-repeat: no-repeat;
    background-position-y: -41.625rem;
    background-position-x: left;  
    box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px;
}
.btn-0:hover{
    animation: scroll linear 5s infinite;
    background-position-y: bottom;
    background-position-x: left;
}

@keyframes scroll {
    0%{
        background-position-y: -41.625rem;
        background-position-x: left;
    }
    50%{
        background-position-y: bottom;
        background-position-x: left;
    }
    100%{
        background-position-y: -41.6rem;
        background-position-x: left;
    }
}

    </style>
    <title>S.M.S.</title>
</head>
<body>
    <div class="body">
        <div class="container overall-container student-body">
            <div class="row row-header">
                <div class="col-md-12 col-header">
                    <h1 class="header header-md">SIGN UP</h1>
                </div>
            </div>
            <form th:action="@{/signup}" th:method="post" class="form">
                <label>E-mail :</label><input required type="email" id="email" name="email"><br>
                <label>Password</label><input required type="password" id="pass" name="pass"><br>
                <label>Confirm Password :</label><input onkeypress="check()" onkeyup="check()" onkeydown="check()" id="con_pass" required type="password" name="con_pass"><br>
                <input type="submit" value="SIGN UP">
                <span id="alert"></span>
            </form>
        </div>
        </div>
        <script>
            function check(){
                var pass = document.getElementById("pass").value;
                var cpass = document.getElementById("cpass").value;
                var alert = document.getElementById("alert");
                if(pass != cpass){
                    alert.innerHTML = "Password does not match";
                }
                if(pass == cpass){
                    alert.innerHTML = "Password does match";
                }
            }
        </script>
</body>
</html>