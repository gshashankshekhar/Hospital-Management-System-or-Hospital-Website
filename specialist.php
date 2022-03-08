<?php include 'header.html'?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@300;400&display=swap" rel="stylesheet">
    <script src="js/jquery.js"></script> 
    <script src="js/bootstrap.min.js"></script>
    <script src="js/project.js"></script>
    
	<title><a class="nav-link" href="specialist.php">Specialist</a></title>
</head>
<body>
	<!--*****************Navitation bar embeded by php*******-->
    <div class="container">
    <div class="table">
     <br>         
  <?php
        $mysqli = new mysqli('localhost','root','','hms') or die(mysqli_error($mysqli));
        $result = $mysqli->query("SELECT * FROM doctors") or die($mysqli->error);
        //pre_r($result);
        ?>
  
    <table class="table table-hover table table-bordered">
      <thread>
        <tr bgcolor="#33FFFC">
          <th>Specialist</th>
          <th>Name</th>
          <th>Email</th>
          <th>Mobile No</th>
          <th>Fees</th>
        </tr>
      </thread>
   <?php
        while($row = $result->fetch_assoc()):?>
          <tr>
            <td><?php echo $row['specilization']; ?></td>
            <td><?php echo $row['doctorName']; ?></td>
            <td><?php echo $row['docEmail']; ?></td>
            <td><?php echo $row['contactno']; ?></td>
            <td><?php echo $row['docFees']; ?></td>
            
          
          </tr>
          <?php endwhile; ?>
    </table>
    </div>  
  </div>

</body>
</html>