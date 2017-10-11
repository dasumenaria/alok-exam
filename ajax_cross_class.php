<?php 
include("database.php");
include("authentication.php");

$login_id=$_SESSION['id'];
$term=$_GET['pon3'];
$class=$_GET['pon'];
$section=$_GET['pon1'];
$sect=$section;	

if((!empty($class)) && (empty($section)) ){
?>
<a style="padding: 12px 17px; text-decoration: none; background-color:rgba(218, 73, 73, 0.74); color:#FFF;margin-left:30%" href="cross_class_list.php?cls=<?php echo $class; ?>" target="_blank"><strong>View Report</strong></a>
		 
<?php } ?>