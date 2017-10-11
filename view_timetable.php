<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");
if(isset($_POST['sub_add']))
{
	$term_id=$_POST['term_id'];
 	$category_id=$_POST['category_id'];
	header("location:timetable_report.php?term=".$term_id."&category_id=".$category_id."");
  exit;
}
?>
<html >
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Time Table</title>
</head>
<?php contant_start(); menu();  ?>
<body>
<div class="page-content-wrapper">
		<div class="page-content">
			<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-puzzle"></i>View Time Table
				</div>
			</div>
			<div class="portlet-body form">
			<!-- BEGIN FORM-->
				<form  class="form-horizontal" id="form_sample_2"  role="form" method="post"> 
					<div class="form-body">
						<div class="form-group">
						<label class="control-label col-md-3">Term</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user4" required name="term_id">
										<option value="">---Select Term---</option>
											<?php 
												$query2=mysql_query("select * from `master_term` ORder By `id`"); 
												while($fetch2=mysql_fetch_array($query2))
												{
													$i++;
													$exam_id=$fetch2['id'];
													$exam_name=$fetch2['name'];
												?>
												<option value="<?php echo $exam_id; ?>"><?php echo $exam_name; ?></option>
											<?php } ?>
									</select>
								</div>
								<span class="help-block">
								Please select Term category</span>
							</div>
					</div>
					<div id="cs" ></div>
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

  	
			  
	$(".user4").live("change",function(){
		var l=$(this).val();
		if(l.length > 0)
		{
			var m=$(".user3").val();
			var t=$(".user").val();
			
			$.ajax({
				url: "ajax_time_table_report.php?pon="+t+"&pon1="+m+"&pon3="+l,
				}).done(function(response){
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
	
			$.ajax({
				url: "ajax_time_table_report.php?pon3="+l+"&pon5="+q,
				}).done(function(response) {
				$("#dys").html(""+response+"");
			});
		}
		else
		{
			$("#dys").html("");
		}
	});
 });
	</script>
	 
<?php scripts();?>
		 
  
</html>