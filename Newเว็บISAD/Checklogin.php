<?php 
	/**
	 * 
	 */
	class Checklogin
	{
		private $user_login = new Login();
		private $db;
		private $username;
		private $password;

		public function __construct($conn)
		{
			$this->db = $conn;
			$this->username = $user_login->getUsername();
			$this->password = $user_login->getPassword();
		}

		public function authorized(){
				$sql = "SELECT * FROM employee
						WHERE username = $username
						AND password = $password";
				$result = $conn->query($sql);
				$row = $result->fetch_assoc();
				if(!$row){
					return false;
				}else{
					return true;
				}











			// try {
	  //           // Define query to insert values into the users table
	  //           $sql = "SELECT * FROM users WHERE username=username";

	  //           // Prepare the statement
	  //           $query = $this->db->prepare($sql);

	  //           // Bind parameter
	  //           $query->bindParam("username", $username);

	  //           // Execute the query
	  //           $query->execute();

	  //           // Return row as an array indexed by both column name
	  //           $returned_row = $query->fetch(PDO::FETCH_ASSOC);

	  //           // Check if row is actually returned
	  //           if ($query->rowCount() > 0) {
	  //               // Verify hashed password against entered password
	  //               if (password_verify($user_password, $returned_row['user_password'])) {
	  //                   // Define session on successful login
	  //                   $_SESSION['user_session'] = $returned_row['user_id'];
	  //                   return true;
	  //               } else {
	  //                   // Define failure
	  //                   return false;
	  //               }
	  //           }
	  //       } catch (PDOException $e) {
	  //           array_push($errors, $e->getMessage());
	  //       }
		}
	}
	

 ?>