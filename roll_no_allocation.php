<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");

if(isset($_POST['update_rollNo']))
{
	$class_id=$_POST['class_id'];
	$section_id=$_POST['section_id'];
	$i=0;
		$query=mysql_query("select * from `student` where `class_id`='$class_id' && `section_id`='$section_id' ORDER BY `name` ASC");
		while($fetch=mysql_fetch_array($query))
		{	$i++;
			$id=$fetch['id'];
		 	$roll_no_new=$_POST['roll_no'.$i];
  			mysql_query("update `student` set `roll_no`='$roll_no_new' where `id`='$id'");
		}
	echo "<meta http-equiv='refresh' content='0;url=roll_no_allocation.php'>";
}

 ?>
<html >
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master </title>
</head>
<?php contant_start(); menu();  ?>
<body>
<div class="page-content-wrapper">
		<div class="page-content">
			<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-puzzle"></i> Roll No Allocation  
				</div>
			</div>
			<div class="portlet-body form">
			<!-- BEGIN FORM-->
				<form  class="form-horizontal" id="form_sample_2"  role="form" method="post"> 
					<div class="form-body">
						<div class="form-group">
							<label class="control-label col-md-3">Class</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user" required name="class_id" >
									<option value="">---Select Class---</option>
								    <?php 
									$query=mysql_query("select * from `master_class` order by `id`");
									while($fetch=mysql_fetch_array($query))
									{$i++;
										$class_id=$fetch['id'];
										$roman=$fetch['roman'];
									?>
									<option value="<?php echo $class_id; ?>"><?php echo $roman; ?></option>
									<?php } ?>
									</select>
								</div>
								<span class="help-block">
								please select Class category</span>
							</div>
						</div>
						<div id="tr"></div>
 					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
<?php footer();?>
<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script>
$(document).ready(function() {
	   

	$(".user").live("change",function(){
		var t=$(this).val();
		if(t.length > 0){
		//var t=$(".user").val();
		$.ajax({
			url: "ajax_roll_no_allocation.php?pon="+t,
			}).done(function(response) {
			$("#tr").html(""+response+"");
		});
		}
		else
		{
			$("#tr").html("");
		}
	});
	
	$(".user3").live("change",function(){
	
		var m=$(this).val();
		if(m.length > 0){
		var t=$(".user").val();
		$.ajax({
			url: "ajax_roll_no_allocation.php?pon="+t+"&pon1="+m,
			}).done(function(response) {
			$("#ms").html(""+response+"");
		});
		}
		else
		{$("#ms").html("");
		}
	});
	
 });
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