<?php
	require 'include/database.inc.php';
	require 'include/core.inc.php';
	$query = "SELECT * FROM students";
	if($query = mysql_query($query)){
		while($result = mysql_fetch_assoc($query)){
			$roll = $result['roll no'];
			$query1 = "update students set `password` = '".md5($roll)."' where `rollno` = '$roll'";
			if($run = mysql_query($query1) ){
				echo 'password added for '.$roll.'  '. $result['name'];
			}
			else{
				echo 'could not set password for '. $roll;
			}
		}
	}else{
		echo 'could not select';
	}
?>