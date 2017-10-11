<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");

if(isset($_POST['sub']))
{
		$class_id=$_POST['class_id'];
		$section_id=$_POST['section_id'];
		$frms=$_POST['frms'];
		$to=$_POST['to'];
		$grade=$_POST['grade'];

	$i=0;
	 foreach($to as $value){

		 $data_from=$frms[$i];
		 $data_to=$value;
		 $data_gade=$grade[$i];
		  
		 mysql_query("insert into `master_grade` SET `class_id`='$class_id',`section_id`='$section_id',`range_from`='$data_from',`range_to`='$data_to',`grade`='$data_gade'"); 
		 $i++;
	 }
	 echo "<meta http-equiv='refresh' content='0;url=master_grade.php'>";
 
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
					<i class="icon-puzzle"></i> Grade Master 
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
			url: "ajax_grade.php?pon="+t,
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
			url: "ajax_grade.php?pon="+t+"&pon1="+m,
			}).done(function(response) {
			$("#ms").html(""+response+"");
		});
		}
		else
		{$("#ms").html("");
		}
	});
	
$(document).on('click','.remove',function()
{
	$(this).closest('div .main').remove();
});	
	
	 
});
</script>
<script>
	function adds(){
 		var t=$("#total").val();
 		var tot=parseInt(t)+1;
 		$.ajax({
			url: "ajax_grade_addRow.php?total="+t,
			}).done(function(response) {
			$("#cs"+t).html(""+response+"");
			$("#total").val(tot);
		});
	}
	
	</script>
		
<?php scripts();?>
		 
  
</html>