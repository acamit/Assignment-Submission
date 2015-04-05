<?php
	include '../include/core.inc.php';  
	require '../include/database.inc.php';
	
	if(teacher_login()){
		if( isset( $_GET['topic']) && isset( $_GET['department']) && isset( $_GET['class']) && isset( $_GET['section']) && isset( $_GET['day']) && isset( $_GET['month']) && isset( $_GET['subject']) && isset( $_GET['semester']) && isset( $_GET['year'] ) && isset( $_GET['files']) ){
			
			 $topic = $_GET['topic'];
			 $department = $_GET['department'];
			 $class = $_GET['class'];
			 $semester = $_GET['semester'];
			 $subject = $_GET['subject'];
			 $section = $_GET['section'];
			 $day = $_GET['day'];
			 $month = $_GET['month'];
			 $year = $_GET['year'];
			 $files = $_GET['files'];
			
			if(!empty($topic) &&!empty($department) && !empty($class) && !empty($semester) && !empty($subject) && !empty($day) && !empty($month) && !empty($year) && !empty($files)){
				if(empty($section)){
					$section = "0";
				}
				$count = 0;
				foreach($files as $filetype){
					if($count == 0){
						$filetypes = $filetype; 
						$count++;
					}
					$filetypes = $filetypes.'/'.$filetype; 
				}
				
				
				$query = "SELECT `department` FROM departments WHERE `dept_id` = '$department'";
				if($query_run = mysql_query($query)){
					$dept = mysql_result($query_run , 0 , 'department');
				}
				
				$query = "SELECT `class` FROM classes WHERE `class_id` = '$class'";
				if($query_run = mysql_query($query)){
					$class_name = mysql_result($query_run , 0 , 'class');
				}
				
				$semester = 'sem '.$semester;
				if($section != "0"){
					
					$sec = 'section '.$section;
					 $path = '../submissions/'.$dept.'/'.$class_name.'/'.$semester.'/'.$subject.'/'.$sec.'/'.$topic;
				}
				else{
				 $path = '../submissions/'.$dept.'/'.$class_name.'/'.$semester.'/'.$subject.'/'.$topic;
				}
				
				$topic_id = substr(md5($department.$class.$subject.$semester.$topic),0,10);
				
				$date = $year.'-'.$month.'-'.$day;
				
				$query = "INSERT INTO topics VALUES('$topic_id', '$topic' , '$subject' , '$date' , '$filetypes', '$class' , '$section')";
				if($query_run = mysql_query($query)){
					if(mkdir($path)){
						header('Location: thanks.php');
					}
					else{
						$query = "DELETE FROM topics WHERE ``topic_id = '$topic_id'";
						$query_run = mysql_query($query);
						$error =  'failed to submit new assignment';
					}
				}
				
			}
			
	}
?>

<html>
	<head>
		<link rel = "stylesheet" type = "text/css" href = "../css/semantic/dist/semantic.min.css" />
		<link rel = "stylesheet" type = "text/css" href = "../css/css.css"/>
		
		<script type = "text/javascript" src = "../js/newAssignment.js"></script>
		
	</head>
	<body><br/>
		<div class="ui secondary pointing  menu">
			  <a class="item" href="teacher_home.php">
				<i class="home icon" ></i> Home
			  </a>
			  <a class="active item" href = "addNewAssignment.php">
				<i class="upload icon"></i> Upload New Assignment
			  </a>
			  <a class="item" href="check_assignments.php" >
				<i class = "download icon"></i> Check Assignments
			  </a>
			  <a class="item">
				<i class="edit icon"></i> Edit Assignment
			  </a>
			  <div class="right menu">
				<a class="ui item">
					<i class = "user icon"></i><?php echo $_SESSION['name']; ?> 
				</a>
				<a class="ui item" href="changePassword.php">
					<i class = "server icon"></i>Change Password
				</a>
				<a class="ui item" href="logout.php">
				  <i class = "power icon"></i>Logout
				</a>
			</div>
		</div>
		<div class = "header">
			<h1 class = "ui black header">Department of Computer Science And Engineering</h1>
			<h2 class ="ui green header">Assignment Submission Portal</h2>
		</div>
		
		<form class = "ui form" method = "GET" action = "addNewAssignment.php">
			<fieldset>
				<legend>Add New Assignment</legend><br/>
				<?php if(isset($error) &&!empty($error)){
						echo '<div class = "error">'.ucwords($error).'</div>';
				}
				?>
				<div class="required field">
					<label for = "topic">Topic Name</label>
					<input name = "topic" id = "topic" placeholder="Topic" type="text" required = "required">
				</div>
				 
				<div class=" required field">
					<label>Department </label>
					<select class="ui search dropdown" id = "department" name = "department" required = "required">
						<option value="">Department</option>
						<option value="101">Department of Computer Science And Engineering</option>
						<option value="102">Department of Electronics Engineering</option>
					</select>
				</div>
				
				<div class="two fields">
					<div class="required field">
						<label>Class</label>
						<select class="ui search dropdown" id = "class" name="class" required = "required">
						<option value = "">Select</option>
						</select>
					</div>
					
					<div class = "requied field">
						<label for = "section">Section</label>
						<select class="ui search dropdown" id = "section" name = "section" required = "required">
							<option value="0">-</option>
							<option value="A">A</option>
							<option value="B">B</option>
							<option value="C">C</option>
						</select>
					</div>
				</div>

				<div class="two fields">
					<div class="required field">
						<label>Semester</label>
						<select class="ui search dropdown" id = "semester" name = "semester" required = "required">
						
							<option value="">Select</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
						
						</select>
					</div>	
				</div>
				
				<div class="field">
					<label>Subject</label>
					<select class="ui search dropdown" id = "subject" name="subject" required = "required">
						<option value ="">Select</option>
					</select>
				</div>
				
				<label>Due Date</label>
				<div class="three fields">
					
					<div class = "required field">
						<input name="month" id = "month" placeholder="mm" type="number" min = "1" max = "12" required = "required">
					</div>
					
					<div class = "required field">
						<input name="day" id = "day" placeholder="dd" type="number" min = "1" required = "required" >
					</div>
					
					<div class = "field">
						<input name = "year" id = "year" placeholder="yyyy" type="text" value = "<?php echo date('Y'); ?>" readonly = "readonly"  required = "required">
					</div>
				</div>
				
				<br/>
				<label>File Types Allowed :</label>
				<br/><br/>
					<div class="inline field">
					
							   <input type="checkbox" name = "files[]" value = "doc/docx" id = "word">
							   <label for = "word">Microsoft Word Document</label>
							&nbsp;&nbsp;&nbsp;
							
							<input type="checkbox" name = "files[]" value = "pdf" id = "pdf">
							   <label for = "pdf">PDF</label>
							&nbsp;&nbsp;&nbsp;
							
							   <input type="checkbox" name = "files[]" value = "ppt/pptx" id = "ppt">
							   <label for= "ppt" >PowerPoint Presentation</label>
							&nbsp;&nbsp;&nbsp;<br/>
							
							   <input type="checkbox" name = "files[]" value = "c" id = "C">
							   <label for = "C">C Source Code</label>
							&nbsp;&nbsp;&nbsp;
							
							<input type="checkbox" name = "files[]" value = "txt" id = "text">
							   <label for = "text">Text File(.txt)</label>
							&nbsp;&nbsp;&nbsp;
					</div>
				
				<div class = "field" >
					<input class = "ui button" type = "submit" value = "Upload Assignment"> 
				</div>
			</fieldset>
		</form>
	</body>
</html>

<?php
	}
	else{
		header('Location: ../');
	}
?>