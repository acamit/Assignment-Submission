<?php

if(isset($_GET['path']) && !empty($_GET['path'])){
	$path = $_GET['path'];
	if($handle = opendir($path)){
		$handle1 = fopen($path.'/student list.txt' , 'w');
				
		while($file = readdir($handle)){
			if($file!='.' && $file!='..'){
				
				echo '<a href = "file.php?file='.$path.'/'.$file.'">'.$file.'</a><br/>';
				
				fwrite($handle1 , "\n".$file."\n");
				
			}
		}
		fclose($handle1);
	}
	else{
		echo $path.' not found';
	}
}
?>