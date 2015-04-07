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
			  <!--<a class="item">
				<i class="edit icon"></i> Edit Assignment
			  </a>-->
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
			
				//echo $result['file'].'<br/>';
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
						<div class="two column black row">
						  <div class= "check column" onclick = "loadfiles(\''.$result['file'].'\')">
							<h2 class="ui inverted header"><img src = "../images/folder.png" /><small>Click to see Assignments Submitted till Now</small></h2>
							<div></div>
						  </div>
						  <!--<div class= "edit column" onclick = "">
							<h2 class="ui inverted header"><img src = "../images/edit2.png" /><small> Click to Edit The Assignment</small></h2>
							<div></div>
						  </div>-->
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
		<div class="ui first long modal">
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
			</div>
		  </div>
		  <div class="actions">
			<div class="ui black button">
			  Close
			</div>
			<div class="ui positive right labeled icon button">
			  <a href = "" id = "download">Download All</a>
			  <i class="download icon"></i>
			</div>
		  </div>
		</div>
		
		<div class="ui second small modal">
			  <i class="close icon"></i>
			  <div class="header">
				
			  </div>
			  <div class="content">
				
				<div class="description">
				  <div class="ui header">Edit the Fields You want to Change</div>
				  <div class = "edit form"><form class = "ui form" method = "GET" action = "addNewAssignment.php">
			
				<?php if(isset($error) &&!empty($error)){
						echo '<div class = "error">'.ucwords($error).'</div>';
				}
				?>
				<div class="required field">
					<label for = "topic">Topic Name</label>
					<input name = "topic" id = "topic" placeholder="Topic" type="text" required = "required">
				</div>
				 
				
				<label>Due Date</label>
				<div class="three fields">
					
					<div class = "required field">
						<input name="month" id = "month" placeholder="mm" type="number" min = "1" max = "12" required = "required">
					</div>
					
					<div class = "required field">
						<input name="day" id = "day" placeholder="dd" type="number" min = "1" required = "required" >
					</div>
					
					<div class = "field">
						<input name = "year" id = "year" placeholder="yyyy" type="text" value = "<?php echo date('Y'); ?>" readonly = "readonly"  required = "required">
					</div>
				</div>
				
				<br/>
				
				<button type = "submit" class="ui positive right labeled icon button">
				  Make Changes
				  <i class="checkmark icon"></i>
				</button>
			  
			
				</form></div>
				 
				</div>
			  </div>
			  <form>
			  <div class = "actions">
				<button type = "submit" class="ui red button" name = "Discard_Assignment">
				  Discard Assignment
				</button>
			  </div>
			  </form>
			</div>
		<script type = "text/javascript" src = "../js/view.js"></script>
	</body>
</html>