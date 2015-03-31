<?php
	include '../include/core.inc.php'; 
	include '../include/header.html';
	require '../include/database.inc.php';
	
	$error = "";
	if(isset($_POST['t_id']) && isset($_POST['password'])){
		$t_id = strtoupper(htmlentities(mysql_real_escape_string(trim($_POST['t_id']))));
		$password = htmlentities(mysql_real_escape_string(trim($_POST['password'])));
		
			if(!empty($t_id) && !empty($password)){
			$password_hash = md5($password);
			
			$query = "SELECT `id` , `teacher` , `dept_id` FROM teachers WHERE `id` = '$t_id' && `password` = '$password_hash'";
			
			if($query_run = mysql_query($query)){
				if(mysql_num_rows($query_run)>0){
					$userDetails = mysql_fetch_assoc($query_run);
					$_SESSION['name'] = $userDetails['teacher'];
					$_SESSION['t_id'] = $t_id;
				 	$_SESSION['dept_id'] = $userDetails['dept_id'];
					
					header('Location: teacher_home.php');
				}
				else{
					$error = "Invalid User Name and password";
				}
			}else{
				$error = 'Cannot Log In.Please Try Again Later';
			}
		
		}else{
			$error = "Please input both teacher id and password";
		}
	}	
?>
<html>
	<head>
	</head>
	
	<body>
	
	<form id="teacher_form" class="teacher_form ui fluid form segment" action = "teacher_login.php" method = "post" >
		<span id ="teacher_form_error" class = "ui form error" ><?php if(!empty($error)){echo $error;}?>
			<div class="required field">
			  <label>Teacher Id:</label>
				<input placeholder="Teacher Id" type="text" name="t_id" id = "t_id" 
					  pattern= "\w\w\w" title = "Eg: 2013CSA1020"
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
