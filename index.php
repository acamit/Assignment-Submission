<?php
	include 'include/core.inc.php';
	session_destroy();
?>

<html>
	<head>
	
	<head>
		<link rel = "stylesheet" type = "text/css" href = "css/semantic/dist/semantic.min.css"/>
		<link rel = "stylesheet" type = "text/css" href = "css/css.css"/>
	</head>
	<body class = "index">
		
		<div class = "header">
			<h1 class = "ui black header">Department of Computer Science And Engineering</h1>
			<h2 class ="ui green header">Assignment Submission Portal</h2>
		</div>
	
		<div class="teacher">
			<a href="php/teacher_login.php">
						<div class="ui animated button design">
						   <div class="visible content">
							Teacher Login							
							</div>
						   <div class="hidden content">
								<i class="right arrow icon"></i>
							</div>
						</div>
			</a>
		</div>
		<div class = "student">
			<a href="php/student_login.php">
				<div class="ui animated button">
				   <div class="visible content">Student Login </div>
				   <div class="hidden content">
					 <i class="right arrow icon"></i>
				   </div>
				</div>
			</a>
		</div>
		<script type = "text/javascript" src = "js/index.js"></script>
	
	</body>
</html>