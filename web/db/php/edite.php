<?php
include 'connectDB.php';
$emp_id = $_POST['emp_id'];
$sql = "SELECT * from employees where emp_id = '$emp_id'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
	header( "location: edit2.php" );
}
else{
	echo("No employees that use this id");
}

?>