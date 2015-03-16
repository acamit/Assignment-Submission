<?php
	include 'include/core.inc.php';
	session_destroy();
?>

<html>
	<head>
		<script type = "text/javascript" src = "js/index.js"></script>
		<link rel= "stylesheet" type = "text/css" href = "css/css.css" />
		<link rel= "stylesheet" type = "text/css" href = "css/semantic.min.css" />
		
	</head>
	<body class = "index">
		<div class="teacher">
			<a href="php/teacher_login.php">
						<img src = "user.jpg" class="teacher_image" name="teacher_image"/>
						<br/>
						<label for="teacher_image">TEACHER</label>
				</a>
		</div>
			<div class = "student">
				<a href="php/student_login.php">
					<img src = "user.jpg" class="stud_image" name="stud_image"/> <br/>
					<label for="stud_image">STUDENT</label>
			</a>
			</div>
		
	</body>
</html>