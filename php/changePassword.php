
<?php
	require '../include/database.inc.php';
	require '../include/core.inc.php';
	if(student_login()){
		$table = "students";
		$field = "roll no";
		$id = $_SESSION['rollno'];
	}
	else if(teacher_login()){
		 $table = "teachers";
		 $id = $_SESSION['t_id'];
		 $field = "id";
	}
	else{
		header('Location: ../');
	}
	
	if(isset($_POST['old_password']) && isset($_POST['new_password']) &&isset($_POST['new_password1'])){
		$old = htmlentities(mysql_real_escape_string(trim($_POST['old_password'])));
		$new =  htmlentities(mysql_real_escape_string(trim($_POST['new_password'])));
		$new1 =  htmlentities(mysql_real_escape_string(trim($_POST['new_password1'])));
		if(!empty($old) && !empty($new) && !empty($new1)){
			$md5old = md5($old);
			$md5new = md5($new);
			
		$query = 'SELECT `password` FROM '.$table.' WHERE `'.$field.'` = \''.$id.'\' AND `password` = '.'\''.$md5old.'\'';
		if($query_run = mysql_query($query)){
			if(mysql_num_rows($query_run) == 1){
				if($new == $new1){
					
					$query = 'UPDATE '.$table.' SET `password` = \''.$md5new.'\' WHERE `'.$field.'` = \''.$id.'\'';
					if($query_run = mysql_query($query)){
						
						if(mysql_affected_rows() == 1){
							if($table == "students"){
								header('Location: student_login.php');
							}
							else{
								header('Location: teacher_login.php');
							}
						}
					}
				}
				else{
					$error = 'New Passwords Do Not Match.'; 
				}
			}
			else{
				$error = 'Invalid Old Password';
			}
		}
		}
	}
?>
	
<html>
	<head>
		<link rel = "stylesheet" type = "text/css" href = "../css/semantic/dist/semantic.min.css"/>
		<link rel = "stylesheet" type = "text/css" href = "../css/css.css"/>
	</head>
	<body>
		<div class = "header">
			<h1 class = "ui black header">Department of Computer Science And Engineering</h1>
			<h2 class ="ui green header">Assignment Submission Portal</h2>
		</div>
	<form id="changePassword" class="changePassword_form ui fluid form segment" action = "changePassword.php" method = "post" >
	
		<span id ="teacher_form_error" class = "ui form error" ><?php if(!empty($error)){echo $error;}?></span>
		
			<div class="required field">
			  <label>Old Password:</label>
				<input placeholder="oldPassword" type="password" name="old_password" id = "old_password" title = "old password" required="required">
			</div>
			
			<div class="required field">
			  <label>New Password:</label>
				<input placeholder="New Password"  name="new_password" type="password" required="required">
			</div>
		
		<div class="required field">
			  <label>Re-Enter Password:</label>
				<input placeholder="Re-Enter Password"  name="new_password1" type="password" required="required">
			</div>
			 <input type ="submit" class="ui submit button" value="Change Password" />
  </form>
<html>
