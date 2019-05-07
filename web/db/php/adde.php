<?php
function conn(){
		$conn = new mysqli("localhost", "root","", "stocking");
		return $conn;
	}
$user_id = $_POST["user_id"];
$emp_name = $_POST["emp_name"];
$role = $_post["role"];
$checkEmpID =  $conn->query("SELECT LAST(emp_id) FROM employees");
$RanPass = rand(100000,999999);
$sqlinsert = "INSERT INTO employees (emp_id,user_id,user_pass,emp_name,role) VALUES ('$checkEmpID', '$user_id', '$ranpass', '$emp_name', '$role')";
$conn = conn();
$result = $conn->query($sql);

?>