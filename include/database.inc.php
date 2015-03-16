<?php
	
	$host = 'localhost';
	$user = 'root';
	$pass = '';
	$database = 'assignment' ;
	if(!mysql_connect($host , $user , $pass) || !mysql_select_db($database)){
		die(mysql_error());
		
	}
?>