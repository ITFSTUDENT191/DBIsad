<?php
session_start();
function conn(){
		$conn = new mysqli("localhost", "root","", "stock");
		return $conn;
	}
$user_id = $_POST['user_id'];
$user_pass = $_POST['user_pass'];
$emp_name = $_POST['emp_name'];
$role= $_POST['role'];
$conn = conn();
$sql = "UPDATE employees SET user_id = '$user_id',user_pass ='$user_pass',emp_name ='$emp_name',role ='$role' WHERE emp_id = '$emp_id'";
$result = $conn->query($sql);
echo "Update success";

?>