<?php
require 'include/core.inc.php';
echo '<div class="column">
							  <div class="ui segment">
								<div class="ui items">
							  <div class="item">
							<div class="ui small image">
								<img src = "folder.jpg" />
							</div>
								<div class="content">
								  <div class="header" onclick = "loadfiles(.$result[\'file\']\')">$path[6].</div>
								  <div class="meta">
								  </div>
								  <div class="description">
									<div class="subject">$path[5]</div>
									<div class="dept">$path[2]</div>
									<div class="class">$path[3]</div>
									<div class="semester">$path[4]</div>
								  </div>
								</div>
							  </div>
							 </div>
						</div>
					</div>';
?>
