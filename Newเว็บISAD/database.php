<?php 

/**
 * 
 */
class Database
{
	public $conn;
	public $error;
	public function __construct()
	{
		$this->conn = mysqli_connect("localhost", "root", "", "testing");  
           if(!$this->conn)  
           {  
                echo 'Database Connection Error ' . mysqli_connect_error($this->con);  
           }
        $check = new Checklogin ($conn)
    }
}



 ?>