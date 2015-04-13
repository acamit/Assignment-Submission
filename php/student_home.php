<?php
	require '../include/database.inc.php';
	require '../include/core.inc.php';
	
	if(student_login()){
?>
<html>
	<head>
		<link rel = "stylesheet" type = "text/css" href = "../css/semantic/dist/semantic.min.css" />
		<link rel = "stylesheet" type = "text/css" href = "../css/css.css"/>	
	</head>
	<body>
		<br/>
		<div class="ui secondary pointing  menu">
		  <a class="active item" href="student_home.php">
			<i class="home icon" ></i> Home
		  </a>
		  <a class="item" href = "submit.php">
			<i class="upload icon"></i> Submit Assignment
		  </a>
		  <!--<a class="item" href="" >
			<i class = "download icon"></i> Check Marks
		  </a>-->
		  <div class="right menu">
			<a class="ui item">
				<i class = "user icon"></i><?php echo 'Name of Student'; ?> 
			</a>
			<a class="ui item" href="changePassword.php">
				<i class = "server icon"></i>Change Password
			</a>
			<a class="ui item" href="logout.php">
			  <i class = "power icon"></i>Logout
			</a>
			</div>
		</div>
		<div class = "header">
			<h1 class = "ui black header">Department of Computer Science And Engineering</h1>
			<h2 class ="ui green header">Assignment Submission Portal</h2>
		</div>
		<div class = "content" id = "content" name = "content" style = "padding-left:40%;">
		<div class="ui cards" >
		  <div class="card">
			<a class="image" href = "submit.php">
			  <img src="../images/upload.png">
			</a>
			<div class="content">
			  <a class="header" href = "submit.php">Submit Assignment</a>
			  <div class="meta">
				<a></a>
			  </div>
			  <div class="description">
				
			  </div>
			</div>
		  </div>
		</div>
	</div>
	</body>
</html>
<?php
	}
	else{
		header('Location: ../');
	}

?>