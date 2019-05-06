<?php
session_start();
function conn(){
		$conn = new mysqli("localhost", "root","", "stock");
		return $conn;
	}
$emp_id = $_POST['emp_id'];
$sql = "SELECT * from employees where emp_id = '$emp_id'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
	header( "location: edit2.php" );
	$_SESSION['emp_id'];
}
else{
	echo("No employees that use this id");
}

?>