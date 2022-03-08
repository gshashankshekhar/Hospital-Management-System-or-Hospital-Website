<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "hms";

$name= $_POST["name"];
$email= $_POST["email"];
$mobile= $_POST["mobile"];
$description= $_POST["description"];


// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "INSERT INTO feedback (name, email, mobile,description)
VALUES ('$name', '$email', '$mobile','$description')";

if (mysqli_query($conn, $sql)) {
    

    header("location: index.php");
    echo "Enquiry form submitted successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>
