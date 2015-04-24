<?php
require '../include/database.inc.php';
require '../include/core.inc.php';
if(isset($_POST['path']) && isset($_POST['id']) && isset($_POST['topic']) && isset($_POST['day']) && isset($_POST['month'])&& isset($_POST['year']) && !isset($_POST['Discard_Assignment'])){
			$new_name = $_POST['topic'];
			$id = $_POST['id'];
			$day = $_POST['day'];
			$month = $_POST['month'];
			$year = $_POST['year'];
			$path1 = $_POST['path'];
			if(!empty($new_name) && !empty($day) &&!empty($month) &&!empty($year)){
				$date = $year.'-'.$month.'-'.$day;
				$path = explode('/' , $path1);
				$path_length = count($path);
				$new_path = "";
				for($i = 0 ; $i<$path_length-1; $i++){
					$new_path = $new_path.$path[$i].'/';
				}
				$new_path = $new_path.$new_name;
			
				$query = "update topics set `topic` = '$new_name' , `due_date` = '$date' , `file` = '$new_path' where `topic_id` = '$id'";
				if($query_run = mysql_query($query)){
					/*rename the folder*/
					rename($path1 , $new_path);
					header('Location: check_assignments.php');
				}else{
				 echo 'cannot edit the assignment. please contact the admin.';
				}
			}
		}
		if(isset($_POST['discard_path']) && isset($_POST['discard_id'])){
			$id = $_POST['discard_id'];
			$path = $_POST['discard_path'];
			$query = "delete from topics where `topic_id` = '$id'";
			$query1 = "delete from submissions where `topic_id` = '$id'";
				if($query_run = mysql_query($query) && $query_run1 = mysql_query($query1)){
					/*delete the folder*/
					if(Delete($path)){
						header('Location: check_assignments.php');
					}
					else{
						echo 'Could not delete the folder. Please contact admin.';
					}
					
				}else{
				 echo 'cannot discard the assignment. please contact the admin.';
				}
			
		}
		
		
		function Delete($path)
{
    if (is_dir($path) === true)
    {
        $files = array_diff(scandir($path), array('.', '..'));

        foreach ($files as $file)
        {
            Delete(realpath($path) . '/' . $file);
        }

        return rmdir($path);
    }

    else if (is_file($path) === true)
    {
        return unlink($path);
    }

    return false;
}

?>