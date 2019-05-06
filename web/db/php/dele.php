<?php
function conn(){
		$conn = new mysqli("localhost", "root","", "stock");
		return $conn;
	}
$emp_id = $_POST['emp_id'];
$sql = "DELETE from employees where emp_id = '$emp_id'";
$result = $conn->query($sql);
echo "Delete Success";

?>