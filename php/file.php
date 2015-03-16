<?php
ob_start();
header('Content-Type:application/vnd.openxmlformats-officedocument.wordprocessingml.document');
header('Content-Disposition: attachment; filename="amit.docx"');
echo file_get_contents($_GET['file']);

?>