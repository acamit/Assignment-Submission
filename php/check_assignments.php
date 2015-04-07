<?php
	require '../include/database.inc.php';
	require '../include/core.inc.php';
 ?>
<html>
	<head>
		<link rel = "stylesheet" type = "text/css" href = "../css/semantic/dist/semantic.min.css"/>
		<link rel = "stylesheet" type = "text/css" href = "../css/css.css"/>
		<script type = "text/javascript" src = "../js/jquery.min.js"></script>
		<script type = "text/javascript" src = "../css/semantic/dist/semantic.min.js"></script>
	</head>
	<body class = "check" ><br/>
		<div class="ui secondary pointing  menu">
			  <a class="item" href="teacher_home.php">
				<i class="home icon" ></i> Home
			  </a>
			  <a class=" item" href = "addNewAssignment.php">
				<i class="upload icon"></i> Upload New Assignment
			  </a>
			  <a class="active item" href="check_assignments.php" >
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
		
		
<?php

	
	if(teacher_login()){
		
		$id = $_SESSION['t_id'];
	
		$query = "SELECT DISTINCT `file` FROM `submissions` WHERE `teacher_id` = '$id'";
		
		if($query_run = mysql_query($query)){
		
		while($result = mysql_fetch_assoc($query_run)){
				$path = explode('/' , $result['file'] );
				echo '<div class="ui padded grid">
						<div class="two column row">
						  <div class="white column">
							<h2 class="ui header">'.$path[2].'</h2>
							<p>'.$path[3].' '.$path[4].'</p>
						  </div>
						  <div class="teal column">
							<h2 class="ui inverted header">'.$path[6].'</h2>
							<p>'.$path[5].'</p>
						  </div>
						</div>
						<div class="black row">
						  <div class= "column" onclick = "loadfiles(\''.$result['file'].'\')">
							<h2 class="ui inverted header"><img src = "../images/folder.png" /></h2>
							<div>Click to see Assignments Submitted till Now</div>
						  </div>
						</div>
					  </div> <br/><br/>';
			
			}
			
		}else{
			echo 'query_not_run';
		}
	}else{
		header('Location: teacher_login.php');
	}
?>
		<div class="ui modal">
		  <i class="close icon"></i>
		  <div class="header">
			Assignments Submitted till Now
		  </div>
		  <div class="content">
			<div class="ui medium image">
			  <img src="../images/folder.png">
			</div>
			<div class="description">
			  <div class="ui header"></div>
			  <div id = "div"></div>
			  <p>Is it okay to use this photo?</p>
			</div>
		  </div>
		  <div class="actions">
			<div class="ui black button">
			  Close
			</div>
			<div class="ui positive right labeled icon button" >
			<a href="" id = "download">Download</a>
			<i class="download icon"></i>
			</div>
		  </div>
		</div>

		<script type = "text/javascript" src = "../js/view.js"></script>
	</body>
</html>