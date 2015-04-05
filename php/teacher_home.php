<?php
	require '../include/database.inc.php';
	require '../include/core.inc.php';
	
	if(teacher_login()){
		$id = $_SESSION['t_id'];
?>
<html>
	<head>
		<link rel = "stylesheet" type = "text/css" href = "../css/semantic/dist/semantic.min.css" />
		<link rel = "stylesheet" type = "text/css" href = "../css/css.css"/>	
	</head>
	<body>
		<br/>
		<div class="ui secondary pointing  menu">
		  <a class="active item">
			<i class="home icon" href="teacher_home.php"></i> Home
		  </a>
		  <a class="item" href = "addNewAssignment.php">
			<i class="upload icon"></i> Upload New Assignment
		  </a>
		  <a class="item" href="check_assignments.php" >
			<i class = "download icon"></i> Check Assignments
		  </a>
		  <a class="item">
			<i class="edit icon"></i> Edit Assignment
		  </a>
		  <div class="right menu">
			<a class="ui item">
				<i class = "user icon"></i><?php echo $_SESSION['name']; ?> 
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
	
	<div class = "content" id = "content" name = "content" >
		<div class="ui cards">
		  <div class="card">
			<a class="image" href = "addNewAssignment.php">
			  <img src="../images/upload.png">
			</a>
			<div class="content">
			  <a class="header" href = "addNewAssignment.php">Upload New Assignment</a>
			  <div class="meta">
				<a></a>
			  </div>
			  <div class="description">
				
			  </div>
			</div>
		  </div>
		 <div class="card">
			<a class="image">
			  <img src="../images/edit.png">
			</a>
			<div class="content">
			  <a class="header">Edit Uploaded Assignment</a>
			  <div class="meta">
				<a></a>
			  </div>
			  <div class="description">
				
			  </div>
			</div>
		  </div>
		  <div class="card">
			<a class="image" href="check_assignments.php">
			  <img src="../images/download.png">
			</a>
			<div class="content">
			  <a class="header" href="check_assignments.php">Check Submitted Assignments</a>
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