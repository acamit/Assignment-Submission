<?php
	require '../include/database.inc.php';
	require '../include/core.inc.php';
	
	if(teacher_login()){
		include '../include/header.html';
		$id = $_SESSION['t_id'];
?>
<html>
	<script type = "text/javascript" src = "../js/view.js"></script>
	
	<div class="ui secondary  menu">
  <a class="active item">
    <i class="home icon"></i> Home
  </a>
  <a class="item">
    <i class="mail icon"></i> Messages
  </a>
  <a class="item">
    <i class="user icon"></i> Friends
  </a>
  <div class="right menu">
    <div class="item">
      <div class="ui icon input">
        <input placeholder="Search..." type="text">
        <i class="search link icon"></i>
      </div>
    </div>
    <a class="ui item">
      Logout
    </a>
  </div>
</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<div>
	
	
	
	
	
	
		<div>Add New Assignment</div>
		<div id = "check_assignments">Check Assignments</div>
		<div>Edit Assignment</div>
		<div> <?php echo $_SESSION['name']; ?> </div>
		<div>
			<ul>
				<li><a href = "logout.php"> Log Out </a> </li>
				<li>Change Password</li>
			</ul>
		</div>
	</div>
	
	
	<div class = "content" id = "content" name = "content" >
		<!-- All Content Will Be Displayed Here -->
	</div>
</html>
<?php
	}

?>