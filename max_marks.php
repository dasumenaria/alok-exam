<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");

if(isset($_POST['sub']))
{
	$class_id=$_POST['class_id'];
	$reduse_to=$_POST['reduse_to'];
	$subject_id=$_POST['subjc'];
	$section_id=$_POST['section_id'];
	$term_id=$_POST['term_id'];
 	$category_id=$_POST['category_id'];
	$mark_value=$_POST['mark_value'];
	echo "<pre>";
	print_r($term_id);
	echo "</pre>";
 
	 foreach($mark_value as $key => $value){
 
		 $update_id=$key;
		 $marks=$value;
		 mysql_query("update `exam_mapping` SET `max_marks`='$marks' where `id`='$update_id'");
	 }
	 foreach($reduse_to as $keys => $values){
 
		 $subject_id=$keys;
		  
		 $redese='no';
		 if($values>0){$redese='yes';}
		 mysql_query("update `exam_mapping` SET `reduse_to`='$values',`reduse`='$redese' where `class_id`='$class_id' && `section_id`='$section_id' && `subject_id`='$subject_id' && `term_id`='$term_id' && `exam_category_id` ='$category_id'");
	 }
	 echo "<meta http-equiv='refresh' content='0;url=max_marks.php'>";
 }



 ?>
<html >
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master | Marks</title>
</head>
<?php contant_start(); menu();  ?>
<body>
<div class="page-content-wrapper">
		<div class="page-content">
			<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-puzzle"></i> Assign Marks 
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

		$.ajax({
		url: "ajax_max_marks.php?pon="+t,
		}).done(function(response) {
			$("#dt").html(""+response+"");
			$("#data").html("");
		});
	});	  
	
	
	
	$(".user1").live("change",function(){
		var s=$(this).val();
		if(s.length > 0)
		{
			var t=$(".user").val();
			$.ajax({
			url: "ajax_max_marks.php?pon="+t+"&pon1="+s,
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
		if(m.length > 0)
		{
			var t=$(".user").val();
			
			$.ajax({
			url: "ajax_max_marks.php?pon="+t+"&pon1="+m,
				}).done(function(response) {
				$("#ms").html(""+response+"");
			});
		}
		else
		{
			$("#ms").html("");
		}
	});
	
	$(".user4").live("change",function(){
		var l=$(this).val();
		if(l.length > 0)
		{
			var m=$(".user3").val();
			var t=$(".user").val();
			
			$.ajax({
			url: "ajax_max_marks.php?pon="+t+"&pon1="+m+"&pon3="+l,
			}).done(function(response) {
				$("#cs").html(""+response+"");
			});
		}
		else
		{
			$("#cs").html("");
		}
	});
	
	
	$(".ust").live("change",function(){
		var q=$(this).val();
		if(q.length > 0)
		{
			var l=$(".user4").val();
			var t=$(".user").val();
			var s=$(".user1").val();
			var v=$(".user3").val();
	
			$.ajax({
			url: "ajax_max_marks.php?pon="+t+"&pon1="+v+"&pon3="+l+"&pon5="+q,
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