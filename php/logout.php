<?php

	require '../include/core.inc.php';
	$path = '../zip/';
	$handle = opendir($path);
	while($file = readdir($handle)){
		if($file!='.' && $file!='..'){
			unlink($path.$file);
		}
	}
	session_destroy();
	header('Location: ../index.php');
?>