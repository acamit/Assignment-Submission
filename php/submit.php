<?php

	
	include '../include/core.inc.php';
	require '../include/database.inc.php';
	if(student_login()){
		$date = date('Y-m-d');
		if(isset($_SESSION['rollno'])&&isset($_SESSION['name'])&& isset($_POST['department'])&&isset($_POST['class'])&&isset($_POST['semester'])&&isset($_POST['subjects'])&&isset($_POST['topic'])&&isset($_FILES['file']['name']) ){
			
			
			$name = $_FILES['file']['name'];
			$tmp_name = $_FILES['file']['tmp_name'];
			$type = $_FILES['file']['type'];
			$sname = htmlentities(trim($_SESSION['name']));
			$rollno = htmlentities(trim(strtolower($_SESSION['rollno'])));
			$dept_id = htmlentities($_POST['department']);
			$class_id = htmlentities($_POST['class']);
			$semester = htmlentities($_POST['semester']);
			$subject = htmlentities($_POST['subjects']);
			$topic_id = mysql_real_escape_string(htmlentities($_POST['topic']));
					
			/*check file type */
			$query = "select `topic`, `filetype` , `filetype2` from topics where `topic_id` = '$topic_id'";
			if($query_run = mysql_query($query)){
				if(mysql_num_rows($query_run)>0){
					
					$required_type1 =  mysql_result($query_run , 0 , 'filetype');
					$required_type2 =  mysql_result($query_run , 0 , 'filetype2');
					$topic = mysql_result($query_run , 0 , 'topic');
					$info = new SplFileInfo($name);
					$extension = $info->getExtension();
					
					if($extension == $required_type1 || $extension == $required_type2){
						$class_query = "SELECT `class` FROM classes WHERE `class_id`= '$class_id'";
						$dept_query = "SELECT `department` FROM departments WHERE `dept_id`= '$dept_id'";
						$teacher_query = "SELECT `teacher_id` FROM subjects WHERE `sub_id`= '$subject' AND `class_id` = '$class_id'";
						if($query_run = mysql_query($class_query)){
							if($dept_query_run = mysql_query($dept_query)){
								if($teacher_query_run = mysql_query($teacher_query)){
									
							$department = mysql_result($dept_query_run,0,'department');
							
							$class = mysql_result($query_run,0,'class');
							$teacher = mysql_result($teacher_query_run ,0 , 'teacher_id');
							
							$location ='../submissions/'.$department.'/'.$class.'/sem '.$semester.'/'.$subject.'/'.$topic.'/';
					
								/*check if already submitted*/
							$query = "SELECT `rollno` from submissions where `topic_id` = '$topic_id' && `rollno` = '$rollno'";
							if($query_run = mysql_query($query)){
								if(mysql_num_rows($query_run)>0){

							echo 'You have already submitted the assignment. Cannot Edit';
								}
								else{
									$sid = $rollno.$topic_id;
									if(move_uploaded_file($tmp_name , $location.$rollno.'.'.$extension)){
									$query = "INSERT INTO submissions(`id` , `topic_id` , `rollno` , `date` , `file`, `teacher_id`) values('$sid' , '$topic_id' , '$rollno' , '$date' , '$location' , '$teacher' )"; 
									
									if($query_run = mysql_query($query)){
									echo 'assignment successfully submitted.';
									header('Location: student_home.php');
									
								}
								else{
									echo 'no submission';
								}
							}
								}
							}
							}
						}
						}
					}
					else{
						
						echo 'invalid file type. <br/>Required:' . $required_type1 ;
						if(!empty($required_type2))
							echo ' OR .'.$required_type2;
					}
				}
			}
			
			
	}	

}
else{
	header('Location: ../index.php');
}
?>

<html>
	<head>
	
	<head>
		<link rel = "stylesheet" type = "text/css" href = "../css/semantic/dist/semantic.min.css"/>
		<link rel = "stylesheet" type = "text/css" href = "../css/css.css"/>
		<script src= "../js/submission.js" type = "text/javascript"></script>
	</head>
	
	<body>
		<div class = "header">
			<h1 class = "ui black header">Department of Computer Science And Engineering</h1>
			<h2 class ="ui green header">Assignment Submission Portal</h2>
		</div>
		<form class = "ui form"action = "submit.php" method = "post" enctype="multipart/form-data" name ="submit" id = "submit" >
		<fieldset>
			<legend>Assignment Submission</legend>
			
				<label for ="rollno">Roll no :</label>
				<div class = "field">
					<input type =  "text" name = "rollno" id = "rollno" maxlength =11 pattern = "\d\d\d\d\w\w\w\d\d\d\d" required="required" value="<?php echo $_SESSION['rollno']; ?>"/>
				</div>
			
			
			<label for="name">Name: </label>
			<div class = "field">
				<input type =  "text" name = "name" id = "name" required="required" value="<?php echo $_SESSION['name']; ?>"/>
			</div>	
		
			<div class = "field">
			<label for = "department">Department:</label>
			<select class = "ui search dropdown" id = "department" name = "department" required="required" >
			<?php
				if(isset($_SESSION['dept_id'])){
					$dept_id_s = $_SESSION['dept_id'];
					$query = "SELECT `department` FROM departments WHERE `dept_id` = '$dept_id_s'";
						if($query_run = mysql_query($query)){
							while($dept_s = mysql_fetch_assoc($query_run)){
								echo '<option value="'.$dept_id_s.'">'.$dept_s['department'].'</option>';
							}
						}
				}
			
				else{
					echo '<option value="">Select Department</option>';
					$query = "SELECT `department` , `dept_id` FROM departments WHERE 1";
				if($query_run = mysql_query($query)){
					while($dept = mysql_fetch_assoc($query_run)){
						echo '<option value="'.$dept['dept_id'].'">'.$dept['department'].'</option>';
				}
				
					}
				}
			?>
			</select>
			</div>
			
			<div class = "field">
			<label for="class" > Class:</label>
				<select id = "class" name = "class" required="required"><?php
					if(isset($_SESSION['class_id'])){
					$class_id = $_SESSION['class_id'];
					$query = "SELECT `class` FROM classes WHERE `class_id` = '$class_id'";
						if($query_run = mysql_query($query)){
							while($class = mysql_fetch_assoc($query_run)){
								echo '<option value="'.$class_id.'">'.$class['class'].'</option>';
							}
						}
				}
				else{
					echo '<option value="">Select Class</option>';
				}
			?>
			
			</select>
			</div>
		
			<div class = "field">
				<label for = "semester">semester :</label>
				<select class = "ui search dropdown" id = "semester" name = "semester" required="required">
					<option value = "">Select Semester</option>			
					<option value = "1">1</option>			
					<option value = "2">2</option>			
					<option value = "3">3</option>			
					<option value = "4">4</option>			
					<option value = "5">5</option>			
					<option value = "6">6</option>			
					<option value = "7">7</option>			
					<option value = "8">8</option>			
								
				</select>
			</div>
			<div class = "field">
				<label for = "subjects">subject :</label>
				<select id = "subjects" name = "subjects" required = "required">
				<option value ="">Select Subject</option>
				</select>
			</div>
			
			<div class = "field">
			Topic : <select id ="topic" name = "topic" required="required">
				<option value = "">Select Topic</option>			
						
			</select>
			</div>
			
			<div class = "field">
				<label>Upload Assignment:</label>
				<input type = "file" name = "file" id = "file" required="required"  />
			</div>
			
			<div class = "field">
				<input class = "ui submit button" type = "submit" value = "submit">
			</div>
			</fieldset>
		<form>
		<a href="logout.php" >Log out</a>
	</body>
<html>

