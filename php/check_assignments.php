<?php
	require '../include/database.inc.php';
	require '../include/core.inc.php';
	include '../include/header.html';?>
<html>
	<body>
		
	<div class="ui secondary  menu">
  <a class="item" href="teacher_home.php">
    <i class="home icon"></i>Home
  </a>
  <a class="item">
    <i class="home icon"></i>Add New Assignment
  </a>
  <a class="active item" href="">
    <i class="mail icon"></i> Check Assignments
  </a>
  <a class="item">
    <i class="user icon"></i> Edit Assignment
  </a>
  <div class="right menu">
	<a class="ui item">
    <?php echo $_SESSION['name']; ?> 
    </a>
	<a class="ui item" href="">
    Change Password
	</a>
	<a class="ui item" href="logout.php">
      Logout
    </a>
  </div>
</div>
	
	</body>
</html>
<?php

	
	if(teacher_login()){
		
		$id = $_SESSION['t_id'];
	
		$query = "SELECT DISTINCT `file` FROM `submissions` WHERE `teacher_id` = '$id'";
		
		if($query_run = mysql_query($query)){
		
		while($result = mysql_fetch_assoc($query_run)){
				//echo $result['file'].'<br/>';
				$path = explode('/' , $result['file'] );
				echo '<div class="column">
							  <div class="ui segment">
								<div class="ui items">
							  <div class="item">
							<div class="ui small image">
								<img src = "../folder.jpg" />
							</div>
								<div class="content">
								  <div class="header" onclick = "loadfiles(\''.$result['file'].'\')">'.$path[6].'</div>
								  <div class="meta">
								  </div>
								  <div class="description">
									<div class="subject">'.$path[5].'</div>
									<div class="dept">'.$path[2].'</div>
									<div class="class">'.$path[3].'</div>
									<div class="semester">'.$path[4].'</div>
								  </div>
								</div>
							  </div>
							 </div>
						</div>
					</div>';

			}
			
		}else{
			echo 'query_not_run';
		}
	}else{
		header('Location: teacher_login.php');
	}
?>

<html>
	<head>
		<script type = "text/javascript" src = "../js/view.js">
		</script>
	</head>
	<body>
	<div id ="div">
	</div>
	</body>
<html>