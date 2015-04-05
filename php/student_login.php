<?php
	include '../include/core.inc.php';  
	require '../include/database.inc.php';
	$error = "";
	if(isset($_POST['rollno']) && isset($_POST['password'])){
		$rollno = strtoupper(trim($_POST['rollno']));
		$password = trim($_POST['password']);
		if(!empty($rollno) && !empty($password)){
			
			$password_hash = md5($password);
			
			$query = "SELECT `students`.`roll no` , `students`.`name` ,`students`.`class_id`,`students`.`section` ,`classes`.`dept_id` FROM students JOIN  classes ON `students`.`class_id` = `classes`.`class_id` WHERE `students`.`roll no` = '$rollno' && `students`.`password` = '$password_hash' ";
			
			if($query_run = mysql_query($query)){
				if(mysql_num_rows($query_run)>0){
					$userDetails = mysql_fetch_assoc($query_run);
					$_SESSION['name'] = $userDetails['name'];
					$_SESSION['rollno'] = $userDetails['roll no'];
					$_SESSION['dept_id'] = $userDetails['dept_id'];
					$_SESSION['class_id'] = $userDetails['class_id'];
					$_SESSION['section'] = $userDetails['section'];
					header('Location: submit.php');
				}
				else{
					 $error = "Invalid Username and password";
				}
			}else{
				$error = 'Cannot Log In.Please Try Again Later';
			}
		}
		else{
			$error = "Please input both Username and password.";
		}
	}	
?>
<html>
	<head>
	
	<head>
		<link rel = "stylesheet" type = "text/css" href = "../css/semantic/dist/semantic.min.css"/>
		<link rel = "stylesheet" type = "text/css" href = "../css/css.css"/>
	</head>
	<body>
		<div class = "header">
			<h1 class = "ui black header">Department of Computer Science And Engineering</h1>
			<h2 class ="ui green header">Assignment Submission Portal</h2>
		</div>
	
	
	<form id="student_form" class="student_form ui fluid form segment" action = "student_login.php" method = "post" >
		<span id ="student_form_error" ><?php if(!empty($error)){echo $error;}?>
			<div class="required field">
			  <label>Roll No:</label>
				<input placeholder="Roll Number" type="text" name="rollno" 
					  pattern= "\d\d\d\d\w\w\w\d\d\d\d" title = "Eg: 2013CSA1020"
					  maxlength = "11" required="required">
			</div>
			
			<div class="required field">
			  <label>Password:</label>
				<input placeholder="Password"  name="password" type="password" required="required">
			</div>
			 <input type ="submit" class="ui submit button" value="LOG IN" />
  </form>
		
	</body>
</html>
