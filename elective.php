<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");

if(isset($_POST['sub']))
{
	$class_id=$_POST['class_id'];
	$section_id=$_POST['section_id'];
	
						
							$f1=0;
							$que=mysql_query("select `scholar_no`,`name` from `student` where `class_id`='$class_id' && `section_id`='$section_id' ORDER BY `name`");
							while($fet=mysql_fetch_array($que))
							{$f1++;
						
							$scholar_no=$fet['scholar_no'];
							$student_name=$fet['name'];
							
 									   mysql_query("delete from `elective` where `scholar_id`='$scholar_no'");
							
							$i=0;
									  $qur1=mysql_query("select DISTINCT(`elective`) from `subject_allocation` where `class_id`='$class_id' && `subject_id`='0'");
									  while($fet1=mysql_fetch_array($qur1))
									  {
										  $elec_id=$fet1['elective'];
										  
										$sets=mysql_query("select * from `elective` where `scholar_id`='$scholar_no' && `subject_id`='$elec_id'");
											$count=mysql_num_rows($sets);
										  
										  $i++;
										    $scholar_no;
										    $elec_id;
										  
										    $qqqq= (int)@$_POST["check_".$f1."_".$elec_id];
											 
										  if($qqqq==1){
 											 mysql_query("insert into `elective` SET `scholar_id`='$scholar_no',`subject_id`='$elec_id'");
										  }
									}  
							} 
	echo "<meta http-equiv='refresh' content='0;url=elective.php'>";									 
  }



 ?>
<html >
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master | Class</title>
</head>
<?php contant_start(); menu();  ?>
<body>
<div class="page-content-wrapper">
		<div class="page-content">
			<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-puzzle"></i> Add Elective
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
					<div id="dt"></div>
					 <div id="data"></div>
					</div>
				</form>
			</div>
				<!-- END FORM-->
				 
				   
			</div>
	</div>
</div>
</body>
<?php footer();?>
<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script>
		$(document).ready(function() {

$(".chk_input").live("click",function(){
				  
	var attr_val= $(this).attr('chk_val');			   
	var valu=$(this).is( ':checked' );
	
if(valu==0)
	{
		$(".all_chk"+attr_val ).parent('span').removeClass('checked');
		$(".all_chk"+attr_val ).removeAttr('checked','checked');
	}
else
	{
		$(".all_chk"+attr_val ).parent('span').addClass('checked');
		$(".all_chk"+attr_val ).attr('checked','checked');
	}
});
	
			 


		
	
	// initiate layout and plugins
	$(".user").live("change",function(){
		var t=$(this).val();
		if(t.length > 0)
		{
			$.ajax({
				url: "ajax_elective.php?pon="+t,
				}).done(function(response) {
				$("#dt").html(""+response+"");
			});
		}
		else
		{
			$("#dt").html("");
		}
	});	  
	
	
	
	$(".user1").live("change",function(){
		var s=$(this).val();
		if(s.length > 0)
		{
			var t=$(".user").val();
			$.ajax({
				url: "ajax_elective.php?pon="+t+"&pon1="+s,
				}).done(function(response) {
				$("#data").html(""+response+"");
			});
		}
		else
		{
			$("#data").html("");
		}
	});
});
</script>
		
<?php scripts();?>
		 
  
</html>