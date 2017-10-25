<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");

if(isset($_POST['sub_dl'])){
	
$delete_id=$_POST['del_id'];

mysql_query("delete from `student` where `id`='$delete_id'");	

}

if(isset($_POST['sub_up'])){
	 
	 $user_id=$_POST['updt'];
	 $new_name=$_POST['new_name'];
	 $father=$_POST['father'];
	 $dob=$_POST['dob'];
	 $real_date=date('Y-m-d', strtotime($dob));
	 $mother=$_POST['mother'];
	 $class=$_POST['class'];
	 $section=$_POST['section'];
	 $scholar=$_POST['scholar'];
	 $roll=$_POST['roll'];
	 $address=$_POST['address'];
	 mysql_query("update `student` SET `dob`='$real_date',`name`='$new_name',`father_name`='$father',`mother_name`='$mother',`class_id`='$class',`section_id`='$section',`scholar_no`='$scholar',`roll_no`='$roll',`address`='$address' where `id`='$user_id'");
	 
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
					<i class="icon-puzzle"></i> Select Info
				</div>
			</div>
			<div class="portlet-body form">
			<!-- BEGIN FORM-->
  
					<div class="form-body">
						 
							 
						
						        <div class="col-md-4">
        <div class="form-group">
        <label class="control-label">Class</label>
        <select class="select2me form-control" id="cls" tabindex="1" onChange="number()" >
        
        <option value="">--Select Class--</option>
        
        <?php 
        
        
        $set=mysql_query("select `roman`,`id` from `master_class` order by `id`");
        while($fet=mysql_fetch_array($set)) 
        {$k++;
        $cls_id=$fet['id'];
        $class_name=$fet['roman'];
        ?>
        <option value="<?php echo $cls_id; ?>"><?php echo $class_name; ?></option>
        <?php } ?>
        </select>
        </div>
        </div>
        
        
        
        <div class="col-md-4">
        <div class="form-group">
        <label class="control-label">Section</label>
        <select class="select2me form-control" id="sec" tabindex="1" onChange="number()" >
        
        <option value="">--Select Section--</option>
        
        <?php  
        
        $set1=mysql_query("select `section`,`id` from `master_section` order by `id`");
        while($fet1=mysql_fetch_array($set1))
        {$g++;
        $sec_id=$fet1['id'];
        $section_name=$fet1['section'];
        ?>
        <option value="<?php echo $sec_id; ?>"><?php echo $section_name; ?></option>
        <?php } ?>
        </select>
        </div>
        </div>

						
						<div class="col-md-4	">
														<div class="form-group">
															<label class="control-label">Scholar No</label>
															<select class="select2me form-control" id="schlr" tabindex="1" onChange="number()" >
																
																<option value="">--Scholar No--</option>
																
															<?php 
																$query1=mysql_query("select `scholar_no` from `student` order by `id`");
																while($fetch1=mysql_fetch_array($query1))
																{$f++;
																	
																	$scholar_no=$fetch1['scholar_no'];
															
															 ?>
																<option value="<?php echo $scholar_no; ?>"><?php echo $scholar_no; ?></option>
														  <?php } ?>															</select>
														</div>
													</div>
								 
					 
						
						<div class="col-md-3">
												 
							</div>
								
						
						 </div>
					</div>
					<div class="form-actions top">
						<div class="row">
							<div class="col-md-offset-3 col-md-9">
								 
							</div>
						</div>
					</div>
			</div>
				<!-- END FORM-->
				<div id="data"></div>
				<!--hds-->
			</div>
	</div>

</body>
<?php footer();?>
<?php scripts();?>
<script>
function number(){
	 
	
	    
	   var schlr=$("#schlr").val();
	   var roll='';
	   var cls=$("#cls").val();
	   var sec=$("#sec").val();
	    
	     
	  	$.ajax({
			url: "ajax_student_edit.php?sch="+schlr+"&rol="+roll+"&cls="+cls+"&sec="+sec,
			}).done(function(response) {
 
		   $("#data").html(""+response+"");
				
			
			});
	
	
}

</script>
</html>