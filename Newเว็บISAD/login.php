<?php 
	require_once('./includes/db.inc.php');//include

	/**
	 * 
	 */

	class Login
	{
		private $autherized = new Checklogin();
		if (isset($_POST['log_in'])) {
	    // Retrieve form input
	    public $username = $_POST['username'];
	    public $password = $_POST['password'];

		public function __construct($conn)
		{
			$this->db = $conn;
		}

		public function getUsername()
		{
			return $username;
		}
		public function getPasswordd(){
			return $password;
		}
	}






	// if (isset($_POST['log_in'])) {
	//     // Retrieve form input
	//     $username = $_POST['username'];
	//     $password = $_POST['password'];

	//     // Check for empty and invalid inputs
	//     if (empty($username)){
	//         array_push($errors, "Please enter a valid username or e-mail address");
	//     } elseif (empty($password)) {
	//         array_push($errors, "Please enter a valid password.");
	//     } else {
	//         // Check if the user may be logged in
	//         if ($check->login($username, $password)) {
	//             // Redirect if logged in successfully
	//             $check->redirect('home.php');
	//         } else {
	//             array_push($errors, "Incorrect log-in credentials.");
	//         }
	//     }
	// }

 ?>