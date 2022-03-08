<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "hms";

$general= $_POST["general"];
$oxygen= $_POST["oxygen"];
$ventilator= $_POST["ventilator"];



// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "INSERT INTO ambulance (general, oxygen, ventilator)
VALUES ('$general', '$oxygen', '$ventilator')";

if (mysqli_query($conn, $sql)) {
    

    header("location: ambulance.php");
    echo "Enquiry form submitted successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>
