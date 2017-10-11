<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");


if(isset($_POST['sub']))
{
	
	$class_id=$_POST['class_id'];
	$optional_id=$_POST['optional'];
	$section_id=$_POST['section_id'];
	
	if($optional_id=='1')
	{
		mysql_query("DELETE FROM `subject_allocation` WHERE `class_id`='$class_id' && `elective`='0' && `section_id`='$section_id'");
	}
	
	if($optional_id=='2')
	{
		mysql_query("DELETE FROM `subject_allocation` WHERE `class_id`='$class_id' && `elective`!='0' && `section_id`='$section_id'");
	}
	 $chk=$_POST['check'];	 
	if($optional_id=='1'){
			
	
					if (is_array($chk))
						{
						
							foreach ($chk as $value)
							{
								$sub_subject=$_POST['sub_subject_'.$value];
								
									if(!empty($sub_subject)){  
									
								 foreach($sub_subject as $sub_value){
								 
								mysql_query("insert into `subject_allocation` set `class_id`='$class_id',`subject_id`='$value',`sub_subject_id`='$sub_value',`section_id`='$section_id'");
								 }
								}else{
									 $sub_value=0;
									mysql_query("insert into `subject_allocation` set `class_id`='$class_id',`subject_id`='$value',`sub_subject_id`='$sub_value',`section_id`='$section_id'");
								}
								
							}
						}
	         }
			 
			
	if($optional_id=='2'){
			
	
					if (is_array($chk))
						{
											
							foreach ($chk as $value)
							{
								$sub_subject=$_POST['sub_subject_'.$value];
								if(!empty($sub_subject)){  
								
								foreach($sub_subject as $sub_value){
 									mysql_query("insert into `subject_allocation` set `class_id`='$class_id',`elective`='$value',`sub_subject_id`='$sub_value',`section_id`='$section_id'");
								 }
								}else{
									 $sub_value=0;
									mysql_query("insert into `subject_allocation` set `class_id`='$class_id',`elective`='$value',`sub_subject_id`='$sub_value',`section_id`='$section_id'");
 								}
							}
						}
	         } 
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
					<i class="icon-puzzle"></i> Add SUBJECT IN CLASS
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
									<select class="form-control cl" required name="class_id" >
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
						<div id="ds"></div>
						
						
						
						
						<div class="form-group">
							<label class="control-label col-md-3">Category</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user" required name="optional" >
									<option value="">---Select Subject Type---</option>
									<option value="1">Common</option>									
									<option value="2">Elective</option>
								
									</select>
								</div>
								<span class="help-block">
								please select category type</span>
							</div>
						</div>
					
					 <div id="data"></div>
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
		
			// initiate layout and plugins
			  $(".user").live("change",function(){
				   var k=$(this).val();
				   var t=$(".cl").val();
				   var j=$(".user1").val();
				$.ajax({
				url: "ajax_cls_sub.php?pon="+t+"&pon1="+k+"&pon2="+j,
				}).done(function(response) {
					$("#data").html(""+response+"");
				});
			  });


		 $(".cl").live("change",function(){
			  var t=$(".cl").val();
			   $.ajax({
					url: "ajax_cls_sub.php?pon="+t,
					}).done(function(response) {
						$("#ds").html(""+response+"");
					   $("#data").html("");
				});
		  });
	$(".user1").live("change",function(){
		$("#data").html("");
	});
	
});
	</script>
		
<?php scripts();?>
<script> 
function check(){
 
	var c=$(".chk_input").val();
	value = +$('.chk_input').is( ':checked' );
	
	if(value==0)
		{
			$(".all_chk" ).parent('span').removeClass('checked');
			$(".all_chk" ).removeAttr('checked','checked');
		}
	else
		{
			$(".all_chk" ).parent('span').addClass('checked');
			$(".all_chk" ).attr('checked','checked');
		}
} 
</script>
   
</html>