<?php

if(isset($_GET['path']) && !empty($_GET['path'])){
	$path = $_GET['path'];
	if($handle = opendir($path)){
		$handle1 = fopen($path.'/student list.txt' , 'w');
				
		while($file = readdir($handle)){
			if($file!='.' && $file!='..'){
				$info = new SplFileInfo($file);
				$extension = $info->getExtension();
				$extension_length = strlen($extension)+1;
				$base_name = $info->getBasename();
				$base_name_length = strlen($base_name);

				$name = substr_replace($base_name ,"" , $base_name_length-$extension_length , $base_name_length);

				echo '<a href = "file.php?file='.$path.'/'.$file.'">'.$name.'</a><br/>';
				
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