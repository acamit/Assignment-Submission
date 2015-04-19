<?php
	
	$host = '192.163.240.195';
	$user = 'tssgndu_asg';
	$pass = 'KM9Q9fO2P?zh';
	$database = 'tssgndu_asg' ;
	/*$host = 'localhost';
	$user = 'root';
	$pass = '';
	$database = 'tssgndu_asg' ;*/
	if(!mysql_connect($host , $user , $pass) || !mysql_select_db($database)){
		die(mysql_error());
	}
?>