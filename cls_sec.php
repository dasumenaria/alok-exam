<?php
include("index_layout.php");
include("database.php");
include("authentication.php");

if(isset($_POST['sub'])){
	
  $class_id=$_POST['class_id'];	
  $section_id=$_POST['section_id'];
  
  $select=mysql_query("select * from `mapping_section` where `class_id`='$class_id' && `section_id`='$section_id'");
  $count=mysql_num_rows($select);
  
  if($count>0){
	   
	  ?>
	<script>
		alert("Data is already exist");
	</script>	
	  
	  <?php
  }
  else{
		mysql_query("insert into `mapping_section` SET `class_id`='$class_id',`section_id`='$section_id'");	
      }
	 echo "<meta http-equiv='refresh' content='0;url=cls_sec.php'>";
}

if(isset($_POST['sub1']))
{
	$del_id=$_POST['del_id'];	 
	mysql_query("delete from `mapping_section` where `id`='$del_id'");
	echo "<meta http-equiv='refresh' content='0;url=cls_sec.php'>"; 
}



 ?>
<html >
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master | Class</title>
<link rel="stylesheet" href="css/select2.min.css">
</head>
<?php contant_start(); menu();  ?>
<body>
<div class="page-content-wrapper">
	<div class="page-content">
			<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-puzzle"></i> Add Section
				</div>
			</div>
			<div class="portlet-body form">
			<!-- BEGIN FORM-->
				<form  class="form-horizontal" id="form_sample_2"  role="form" method="post"> 
					<div class="form-body">
						<div class="form-group">
							<label class="control-label col-md-1">Class</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control select2" required name="class_id" style="width: 100%; padding-right: 0px; padding-left: 0px;">
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
								
							</div>
							
							<label class="control-label col-md-1">Section</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control select2" required name="section_id" style="width: 100%; padding-right: 0px; padding-left: 0px;">
									<option value="">---Select Section---</option>
								    <?php 
									$query1=mysql_query("select * from `master_section` order by `id`");
									while($fetch1=mysql_fetch_array($query1))
									{
										$i++;
										$sec_id=$fetch1['id'];
										$section=$fetch1['section'];
									?>
									<option value="<?php echo $sec_id; ?>"><?php echo $section; ?></option>
									<?php } ?>
									</select>
								</div>
								
							</div>
							<div class="col-md-2">
								<button type="submit" name="sub" class="btn btn-primary">Submit</button>
								
							</div>
						</div>
					
					
					 	 
					</div>
					

				</form>
			</div>
				   
			</div>

	 
        <div class="portlet box blue">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-book"></i> View Section
                </div>
            </div>
        	<div class="portlet-body form">
			<!-- BEGIN FORM-->
				<form  class="form-horizontal" id="form_sample_2"  role="form" method="post"> 
					<div class="form-body">
						<div class="form-group">
							<label class="control-label col-md-1">Class</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control select2 user" required  style="width: 100%; padding-right: 0px; padding-left: 0px;">
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
				
					 	<div id="data"></div>
					</div>
				</form>
			</div>				<!-- END FORM-->
		</div>
	</div>
			
	</div>

</body>

<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="js/select2.full.min.js"></script>	
<script>
	$(document).ready(function() {
			$(".select2").select2(); 
			$(".user").live("change",function(){ 
				var t=$(this).val();
				$.ajax({
				url: "ajax_cls_sec_update.php?cls="+t,
				}).done(function(response){
					$("#data").html(""+response+"");
				});
			});	  
				  
				   
	});
</script>
<?php footer();?>
<?php scripts();?> 
</html>