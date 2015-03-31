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
