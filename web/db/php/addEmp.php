<?php  
include 'connectDB.php';

$user_id = $_POST['user_id'];
$user_pass = $_POST['user_pass'];
$emp_name = $_POST['emp_name'];
$role = $_POST['role'];

$sql = "INSERT INTO employees(user_id,user_pass,emp_name,role) values ('$user_id', '$user_pass', '$emp_name', '$role')";
$result = $conn->query($sql);
echo "Add Employee Success.";

?>