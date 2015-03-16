<?php
	ob_start();
	session_start();
	$current_file = $_SERVER['SCRIPT_NAME'];
	date_default_timezone_set('asia/kolkata');

	
/*design header
form css
redirect to page for my submissions or submit new assignment
*/
	function student_login(){
		if(isset($_SESSION['rollno']) && !empty($_SESSION['rollno'])){
			return true;
		}
		else
			return false;
	}
	function teacher_login(){
		if(isset($_SESSION['t_id']) && !empty($_SESSION['t_id'])){
			return true;
		}
		else
			return false;
	}
	
?>


<html>
	<head>
		<link rel = "stylesheet" type = "text/css" href = "../css/semantic.min.css"/>
		<link rel = "stylesheet" type = "text/css" href = "../css/css.css"/>
	</head>
	<body>
		<h1>DEPARMENT OF COMPUTER SCIENCE AND ENGINEERING</h1>
		<h3>ASSIGNMENT SUBMISSION PORTAL</h3>
	</body>
</html>