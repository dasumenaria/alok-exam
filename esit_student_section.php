<?php 
include("index_layout.php"); 
include("database.php");
include("authentication.php");

if(isset($_POST['submit_sec_change']))
{
	$update_id=$_POST['update_id'];
	$name=$_POST['name'];
	$roll_no=$_POST['roll_no'];
 	$gallery_pic=$_FILES["upload_image"]["tmp_name"];
 	$file_name=$_FILES["upload_image"]["name"];
	  echo"<pre>";
	//print_r($gallery_pic); exit;
	//print_r($update_id); exit;
	echo"</pre>"; 
	
	$dob=$_POST['dob'];
	$new_sec=$_POST['new_sec'];
	$t=0;
	
	
	foreach($update_id as $updates_id)
	{
		 
		$fileacutal_name=$file_name[$t];
		$Studntname=$name[$t];
		$imageupdated=$gallery_pic[$t];
 		$Studntroll_no=$roll_no[$t];
		$Studntdob=$dob[$t];
		$Studntnew_sec=$new_sec[$t];
 		if(!empty($Studntdob))
		{
			$Studntdob=date('Y-m-d',strtotime($Studntdob));	
		}
		if(!empty($imageupdated))
		{
			$file_name='student'.$updates_id;  
 			$target ="user/";
			
  			@$ext = pathinfo($fileacutal_name,  PATHINFO_EXTENSION); 
 			$random=rand(100, 10000);
			$target=$target.basename($file_name.'.'.$ext);
			move_uploaded_file($imageupdated,$target);
 			$item_image=$file_name.'.'.$ext;  
 			mysql_query("update `student` set `name`='$Studntname' ,`roll_no`='$Studntroll_no',`dob`='$Studntdob',`section_id`='$Studntnew_sec',`photo_path`='$item_image' where `id` = '$updates_id'");
 		}
		else
		{
 			mysql_query("update `student` set `name`='$Studntname' ,`roll_no`='$Studntroll_no',`dob`='$Studntdob',`section_id`='$Studntnew_sec' where `id` = '$updates_id'");
 		}
		$t++;
	}
}		
		
?>
<html>
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Index</title>
</head>
<?php contant_start(); menu();  ?>
<body>
	<div class="page-content-wrapper">
		 <div class="page-content">
			 <div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-puzzle"></i> Student Section Change
				</div>
			</div>			 
			<div class="portlet-body">
				<div class="table-responsive">
				<form method="post" enctype="multipart/form-data">
					<table width="80%" style="text-align:center">
					<tr>
					<td width="40%">Enter Class</td>
					<td width="60%">
					<select name="class" class="form-control input-medium" id="autocomplete_class"  onchange="show_secc_change()">
					<option value=""> -Select-</option>
					<?php
							$resultx=mysql_query("SELECT * FROM `master_class`");
							while($rowc=mysql_fetch_array($resultx))
							{
							 $clsss=$rowc['class'];
							  $clsss_id=$rowc['id'];
							?>
					<option value="<?php echo $clsss_id; ?>"> <?php echo $clsss; ?></option>
					<?php } ?>
					</select>
					 </td>
					 </tr>
					 </table>
					<span  class="hide_print" id="list_rol_sc"></span>
					<span id="list_stddl_sec"></span>
				 
				</form>
								
				</div>
			</div>
		</div>
	</div>
</div>
</body>

<?php footer();?>
<script>
	function show_secc_change()
	{  
		var c1=$('#autocomplete_class').val(); 
		var query="?con=" + encodeURIComponent(c1);
		$('#list_rol_sc').load('stdnt_sec_chng_all.php'+query)   
	}
	function std_edit_sec()
	{
		var c1=$('#cls').val(); 
		var c2=$('#autocomplete_section').val(); 
		var query="?con=" + encodeURIComponent(c1) + "&con1=" + encodeURIComponent(c2);
		$('#list_stddl_sec').load('std_dtl_section.php'+query); 
	}
	function auto_roll_no()
	{ 
		var first_roll=eval($("#start_roll_no").val());
		var std_cnt=eval($("#tot_student").val());
		for(var i=1;i<=std_cnt;i++)	
		{
			$("#roll_no"+ i).val(first_roll) ;	
			first_roll=eval(first_roll + 1) ;
		}
	}
</script>
<?php scripts();?>

</html>
