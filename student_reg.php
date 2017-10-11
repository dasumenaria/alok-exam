<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");

if(isset($_POST['sub']))
{
	
	$first_name=$_POST['first_name'];
	$last_name=$_POST['last_name'];
	$father=$_POST['father'];
	$mother=$_POST['mother'];
	$scholor_no=$_POST['scholor_no'];
	$roll_no=$_POST['roll_no'];
	$class_id=$_POST['class_id'];
	$section_id=$_POST['section_id'];
	$address=$_POST['address'];
	$full_name=$first_name.' '.$last_name;
	$dob=$_POST['dob'];
	$real_dob=date('Y-m-d', strtotime($dob));
	
 	
	mysql_query("insert into `student` SET `dob`='$real_dob',`name`='$full_name',`father_name`='$father',`mother_name`='$mother',`scholar_no`='$scholor_no',`roll_no`='$roll_no',`class_id`='$class_id',`section_id`='$section_id',`address`='$address'");
	

	
}


///////////////////////////////EXCEL FILE UPLOAD//////////////////////////////////////////
	
if(isset($_POST["Import"]))
{
	/* $session=$_SESSION['sess'];
    //First we need to make a connection with the database
    $host='localhost'; // Host Name.
    $db_user= 'wwwsmtma_session';
    $db_password= '14rlT1}w77PS';
    $db= 'wwwsmtma_'.$session;
    $conn=mysql_connect($host,$db_user,$db_password) or die (mysql_error());
    mysql_select_db($db) or die (mysql_error());
	 */
      $filename=$_FILES["file"]["tmp_name"];
		  $fil=$_FILES['file']['name'];
	   $ext=pathinfo($fil, PATHINFO_EXTENSION);
 	

    if($_FILES["file"]["size"] > 0 && $ext=='csv')
    {
        $file = fopen($filename, "r");
//$sql_data = "SELECT * FROM student ";

$count = 0;                                         // add this line
while (($emapData = fgetcsv($file, 10000, ",")) !== FALSE)
{
   // print_r($emapData);
   // exit();
    $count++;                                      // add this line

    if($count>2){                                  // add this line
	
	
	$dob=date('Y-m-d', strtotime($emapData[4]));
	 
	
	$sql4 = "SELECT `id` from `master_class` where `roman`='$emapData[7]'";
	$sets1=mysql_query($sql4);
	$fets1=mysql_fetch_array($sets1);
	$class_id=$fets1['id'];
	 
	$sql5 = "SELECT `id` from `master_section` where `section`='$emapData[8]'";
	$sets2=mysql_query($sql5);
	$fets2=mysql_fetch_array($sets2);
	 $section_id=$fets2['id'];
	
	    
      $sql1 = "INSERT into student(name,father_name,mother_name,dob,scholar_no,roll_no,class_id,section_id,address) values ('$emapData[1]','$emapData[2]','$emapData[3]','$dob','$emapData[5]','$emapData[6]','$class_id','$section_id','$emapData[9]')";
      mysql_query($sql1);
	
    }                                              // add this line
	
}	
	
fclose($file);
        //echo 'CSV File has been successfully Imported';
        header('Location: student_reg.php');
    }  	
    else{
		$msg=1;
        //echo 'Invalid File:Please Upload CSV File';
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
											<i class="fa fa-gift"></i>Student Registration
										</div>
									 
									</div>
									<div class="portlet-body form">
									<div>
	  
	

<form enctype="multipart/form-data" method="post" role="form">
    <div class="form-group">
	<br>
	<table style="margin-left:2%;">
	<tr>
	<td width="1%"> 
	    <p class="help-block" style="color:green">Only CSV File Import.</p><?php if($msg=='1'){ ?> <font color="red">Try Again</font><?php }?>
        <input type="file" name="file" id="file"  color="blue" > 
     	
   </td>
   </div>
   
   <td>
      <button type="submit" name="Import" class="btn green" style="border-radius:7px !important"><i class="fa fa-check"></i> Save</button>
	  </form>
</td>

<td width="45%">
</td>

<td width="30%" style="margin-right:2%;">
<font color="blue" size="3px"><b>CSV Format</b></font> &nbsp; :&nbsp; <a style="padding: 3px 15px; background-color:rgba(218, 73, 73, 0.74); color:#FFF" href="download.php" target="blank"><strong>Download</strong></a>
</td>
</td>
</tr>
	  
</table>
</div>
</div> 
	<hr>
										<!-- BEGIN FORM-->
										<form method="post" id="form_sample_2">
											<div class="form-body">
											 
 
											
												
										<div class="col-md-6">
											<div class="form-group">
											<label class="control-label">First Name</label>
											
											<div class="input-icon right">
											<i class="fa"></i>
											<input class="form-control" required name="first_name" type="text">
											</div>
											<span class="help-block">
											Provide your First Name</span>
											</div>
										</div>

									<div class="col-md-6">
										<div class="form-group">
										  <label class="control-label">Last Name</label>
												<div class="input-icon right">
												  <i class="fa"></i>
													<input class="form-control" required name="last_name" type="text">
												</div>
											<span class="help-block">
											Provide your Last Name</span>
										</div>
									</div>

													
													
													<!--<div class="col-md-6">
														<div class="form-group">
															<label class="control-label">Gender</label>
															<div class="radio-list">
																<label class="radio-inline">
																<div id="uniform-optionsRadios1" class="radio"><span class=""><input name="optionsRadios" id="optionsRadios1" value="Male" checked="" type="radio"></span></div> Male </label>
																<label class="radio-inline">
																<div id="uniform-optionsRadios2" class="radio"><span class="checked"><input name="optionsRadios" id="optionsRadios2" value="Female" type="radio"></span></div> Female </label>
															</div>
														</div>
													</div>
												 
												 	<div class="col-md-6">
														<div class="form-group">
															<label class="control-label">Gender</label>
															<div class="radio-list">
																<label class="radio-inline">
																<div id="uniform-optionsRadios1" class="radio"><span class=""><input name="gender" id="optionsRadios1" value="Male" checked="" type="radio"></span></div> Male </label>
																<label class="radio-inline">
																<div id="uniform-optionsRadios2" class="radio"><span class="checked"><input name="gender" id="optionsRadios2" value="Female" type="radio"></span></div> Female </label>
															</div>
														</div>
													</div>-->
												 
												 
												 
									<div class="col-md-6">
										<div class="form-group">
										  <label class="control-label">Father's Name</label>
												<div class="input-icon right">
												  <i class="fa"></i>
													<input class="form-control" required name="father" type="text">
												</div>
											<span class="help-block">
											Provide your Father's Name</span>
										</div>
									</div>

									
									
									
									<div class="col-md-6">
										<div class="form-group">
										  <label class="control-label">Mother's Name</label>
												<div class="input-icon right">
												  <i class="fa"></i>
													<input class="form-control" required name="mother" type="text">
												</div>
											<span class="help-block">
											Provide your Mother's Name</span>
										</div>
									</div>
									
									
									<div class="col-md-6">
										<div class="form-group">
										  <label class="control-label">Scholor Number</label>
												<div class="input-icon right">
												  <i class="fa"></i>
													<input class="form-control" required name="scholor_no" type="text">
												</div>
											<span class="help-block">
											Provide Scholor</span>
										</div>
									</div>


									<div class="col-md-6">
										<div class="form-group">
										  <label class="control-label">Roll Number</label>
												<div class="input-icon right">
												  <i class="fa"></i>
													<input class="form-control" required name="roll_no" type="text">
												</div>
											<span class="help-block">
											Provide Roll No.</span>
										</div>
									</div>

												 
					<div class="col-md-6">		 							 
						<div class="form-group">
							<label class="control-label col-md-3">Class</label>
							
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
					

						   <div class="col-md-6">		 							 
						
						<div class="form-group">
							<label class="control-label col-md-3">Section</label>
							
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user" required name="section_id" >
									<option value="">---Select Section---</option>
								    <?php 
									$query1=mysql_query("select * from `master_section` order by `id`");
									while($fetch1=mysql_fetch_array($query1))
									{$i++;
										$sec_id=$fetch1['id'];
										$sect=$fetch1['section'];
									?>
									<option value="<?php echo $sec_id; ?>"><?php echo $sect; ?></option>
									<?php } ?>
									</select>
								</div>
								<span class="help-block">
								please select Section category</span>
							</div>
						</div>
					
					
								
								   

																 

										
									<div class="col-md-6">
										<div class="form-group">
										  <label class="control-label">D-O-B</label>
												<div class="input-icon right">
												  <input class="form-control form-control-inline input-large date-picker" required data-date-format="dd-mm-yyyy" size="16" value="" type="text" name="dob" >
											<span class="help-block">
											Select Date Of Birth </span>
												</div> 
										</div>
									</div>
									
									
									<div class="col-md-6">
										<div class="form-group">
										  <label class="control-label">Address</label>
												<div class="input-icon">
												  <i class="fa"></i>
													<textarea class="form-control" required name="address" rows="3"></textarea>
												</div>
											<span class="help-block">
											Provide Address </span>
										</div>
									</div>
												 
								  
												 
												</div> 
											</div>

											<div class="form-actions right" style="margin-left:40%">
											<button type="submit" name="sub" class="btn blue"><i class="fa fa-check"></i> Save</button>
											<button type="reset" class="btn default">Cancel</button>
												
											</div>
											<br>
										</form>
										<!-- END FORM-->
									</div>
								</div>
			 
	</div>
</body>

<?php footer();?>
<?php scripts();?>

</html>