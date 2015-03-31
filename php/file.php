<?php
require '../include/core.inc.php';
if(teacher_login() ){
	if(isset($_GET['file'])){

		$file = $_GET['file'];
		$info = new SplFileInfo($file);
		$extension = $info->getExtension();
		$extension_length = strlen($extension)+1;
		$base_name = $info->getBasename();
		$base_name_length = strlen($base_name);

		$name = substr_replace($base_name ,"" , $base_name_length-$extension_length , $base_name_length);

		switch($extension){
			case 'doc' : $mime = 'application/msword';
				break;
			case 'docx' :$mime = 'application/vnd.openxmlformats-officedocument.wordprocessingml.document';
				break;
			case 'ppt' : $mime = 'application/vnd.ms-powerpointtd';
				break;
			case 'pptx' : $mime = 'application/vnd.openxmlformats-officedocument.presentationml.presentation';
				break;
			case 'pdf' : $mime = 'application/pdf';
				break;
			case 'xlsx' : $mime = 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet';
				break;
			case 'xls' : $mime = 'application/vnd.ms-excel';
				break;
		}

		header('Content-Type:'.$mime);
		header('Content-Disposition: attachment; filename="'.$name.'.'.$extension.'"');

		echo file_get_contents($_GET['file']);
	}
}else{
	header('Location: teacher_login.php');
}
?>