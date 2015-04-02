<?php
	require '../include/database.inc.php';
	require '../include/core.inc.php';
	
	if(teacher_login()){
		include '../include/header.html';
		$id = $_SESSION['t_id'];
?>
<html>
	<div class="ui secondary  menu">
  <a class="item" href="teacher_home.php">
    <i class="home icon"></i>Home
  </a>
  <a class="item" href = "addNewAssignment.php">
    <i class="home icon"></i>Add New Assignment
  </a>
  <a class="active item" href="check_assignments.php">
    <i class="mail icon"></i> Check Assignments
  </a>
  <a class="item">
    <i class="user icon"></i> Edit Assignment
  </a>
  <div class="right menu">
	<a class="ui item">
    <?php echo $_SESSION['name']; ?> 
    </a>
	<a class="ui item" href="changePassword.php">
    Change Password
	</a>
	<a class="ui item" href="logout.php">
      Logout
    </a>
  </div>
</div>
		
	
	
	
	
	
	
	
	
	
	
	
	<div class = "content" id = "content" name = "content" >
		<!-- All Content Will Be Displayed Here -->
	</div>
</html>
<?php
	}
	else{
		header('Location: ../');
	}

?>