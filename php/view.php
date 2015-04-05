
<?php

	require '../include/database.inc.php';
	require '../include/core.inc.php';
	


	$id = $_SESSION['t_id'];
	$query = "SELECT DISTINCT `file` FROM `submissions` WHERE `teacher_id` = '$id'";
	if($query_run = mysql_query($query)){
		while($result = mysql_fetch_assoc($query_run)){
			echo $result['file'].'<br/>';
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
								<span class="subject">'.$path[5].'</span>
								<span class="dept">'.$path[2].'</span>
								<span class="class">'.$path[3].'</span>
								<span class="semester">'.$path[4].'</span>
							  </div>
							  <div class="description">
								<p>This is the description</p>
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