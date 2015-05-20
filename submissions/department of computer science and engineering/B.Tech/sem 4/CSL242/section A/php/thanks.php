<?php
	include_once '../include/core.inc.php';
?>
<html>
<head>
		<link rel = "stylesheet" type = "text/css" href = "../css/semantic/dist/semantic.min.css" />
		<link rel = "stylesheet" type = "text/css" href = "../css/css.css"/>
		
	</head>
	<body>
		<div class = "header">
			<h1 class = "ui black header">Department of Computer Science And Engineering</h1>
			<h2 class ="ui green header">Assignment Submission Portal</h2>
		</div>
		
	<br/>
	<br/>
	<br/>
		<div class="ui massive message">Assignment Successfully Submitted.</div>
			<?php
				if(student_login()){
					echo '<a href = "submit.php"> Submit Another Assignment</a><br/>
					<a href = "logout.php"> Log Out</a>';
				}
				else if(teacher_login()){
					echo '<a href = "teacher_home.php">Home</a><br/>
					<a href = "logout.php"> Log Out</a>';
				}
				else{
					header('Location: ../');
				}
			?>
</body>
</html>		
 		
 