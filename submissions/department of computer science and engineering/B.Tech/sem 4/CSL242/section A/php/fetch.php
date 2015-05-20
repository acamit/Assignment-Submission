<?php
	require '../include/database.inc.php';
	session_start();
	/*for classes*/
	if(isset($_GET['dept_id'])){
		$dept_id = $_GET['dept_id'];
		
		$query = "SELECT `class_id` , `class` FROM classes WHERE `dept_id` = '$dept_id'";
		@$query_run = mysql_query($query);
		if($query_run){
			
			$count = 0;
			$cls_id_list="";
			$cls_list="";
			
			while($class = mysql_fetch_assoc($query_run)){
				if(!$count){
					$cls_id_list =$cls_id_list.$class['class_id'];
					$cls_list =$cls_list.$class['class'];
					$count++;
				}
				else
					$cls_list.'#'.$class['class'];
					
			}
			echo $cls_id_list.'@'.$cls_list;
			
		}
	}
	/*for subjects*/
	if(isset($_GET['class_id'])&&isset($_GET['semester'])){
		$class_id = $_GET['class_id'];
		$sem = $_GET['semester'];
		if(isset($_SESSION['t_id']) && !empty($_SESSION['t_id'])){
			
			$t_id = $_SESSION['t_id'];
			$query = "SELECT `sub_id` , `subject` FROM subjects WHERE `class_id` = '$class_id' && `semester` = '$sem' && `teacher_id` = '$t_id'";
		}
		else{
			$query = "SELECT `sub_id` , `subject` FROM subjects WHERE `class_id` = '$class_id' && `semester` = '$sem'";
		 
		}
		@$query_run = mysql_query($query);
		if($query_run){
			$count = 0;
			$sub_id_list ="";
			$sub_list ="";
			while($subject = mysql_fetch_assoc($query_run)){
				if(!$count){
					$sub_id_list= $sub_id_list.$subject['sub_id'];
					$sub_list= $sub_list.$subject['subject'];
					$count++;
				}
				else{
					$sub_id_list= $sub_id_list.'^'.$subject['sub_id'];
					$sub_list= $sub_list.'#'.$subject['subject'];
				}
			}
			
			echo $sub_id_list.'@'.$sub_list;
		}
	}
	
	
/*for topics*/

	$count=0;
	if(isset($_GET['sub_id'])&&isset($_GET['class_id'])){
		$subject = $_GET['sub_id'];
		$class = $_GET['class_id'];
		$section = $_SESSION['section'];
		$topic_list = "";
		$topic_id_list = "";
		if(!empty($subject)&&!empty($class)){
			 $query = "SELECT `topic` , `topic_id`,`due_date` FROM topics WHERE `sub_id` = '$subject' && `class_id` = '$class' && `section` = '$section'";
			if($query_run = mysql_query($query)){
				while($topics = mysql_fetch_assoc($query_run)){
					
					$due = $topics['due_date'];
					$due = explode('-' , $due);
					$flag = 0;
					$date = date('Y-m-d');
					$date = explode('-' , $date);
					
					if($due[0]>=$date[0]){
						if($due[1]>$date[1]){
									$flag =1;
								}
						else if($due[1]==$date[1]){
									if($due[2]>$date[2]){
										$flag=1;
									}	
								}
						}
					if($flag){
						if(!$count){
							$topic_id_list = $topic_id_list.$topics['topic_id'];
							$count++;
							$topic_list = $topic_list.$topics['topic'];
						}
						else{
							$topic_id_list = $topic_id_list.'^'.$topics['topic_id'];
							$topic_list = $topic_list.'#'.$topics['topic'];
						}

					}
					
				}
				
				echo $topic_id_list.'@'.$topic_list;
			}
		}
	}

	
	
	
?>