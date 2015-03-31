<?php

if(isset($_GET['path']) && !empty($_GET['path'])){
	$path = $_GET['path'];
	if($handle = opendir($path)){
		while($file = readdir($handle)){
			if($file!='.' && $file!='..'){
				
				echo '<a href = "file.php?file='.$path.$file.'">'.$file.'</a><br/>';
				
			}
		}
	}
	else{
		echo $path.' not found';
	}
}
?>