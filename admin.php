<?php include 'header.html'?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@300;400&display=swap" rel="stylesheet">
<title>login page</title>

<style type="text/css">


</style>
</head>

<body>

<section class="container_fluid">
        <section class="row justify-content-center">
            <section class="col-lg-5 col-md-8 col-10 ">
                <form class="form-container" name="f1" action = "authentication.php" onsubmit = "return validation()" method = "POST">
                  <div class="imgcontainer">
                    <h1> Admin Login </h1>
                    <img src="image/admin.png" alt="Avatar" class="avatar">
                  </div>

                  <div class="container">
                    <label for="username"><b>Username</b></label>
                    <input type="text" placeholder="Enter Username" name="username" required>

                    <label for="password"><b>Password</b></label>
                    <input type="password" placeholder="Enter Password" name="password" required>

                    <button type="submit" value="login">Login </button>
                  </div>
                </form>  
            </section>
        </section>
        
    </section>


    <script>  
            function validation()  
            {  
                var id=document.f1.user.value;  
                var ps=document.f1.pass.value;  
                if(id.length=="" && ps.length=="") {  
                    alert("User Name and Password fields are empty");  
                    return false;  
                }  
                else  
                {  
                    if(id.length=="") {  
                        alert("User Name is empty");  
                        return false;  
                    }   
                    if (ps.length=="") {  
                    alert("Password field is empty");  
                    return false;  
                    }  
                }                             
            } 
    <script src="js/jquery.js"></script> 
    <script src="js/bootstrap.min.js"></script>
    <script src="js/project.js"></script>
    <script type="text/javascript"></script>
</body>
</html>
