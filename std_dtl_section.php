<?php
include("database.php");
$class_id=$_GET['con'];
$sec=$_GET['con1'];
$sle_sectio=mysql_query("select * from `school`");
$ftc_sectisson=mysql_fetch_array($sle_sectio);
$school=$ftc_sectisson['school'];

if(!empty($class_id) && !empty($sec) )
{  
	$sel_class=mysql_query("select * from `master_class` where `id`='$class_id' ");
	$ftc_class=mysql_fetch_array($sel_class);
	$cls=$ftc_class['class'];

	$sle_section=mysql_query("select * from `master_section` where `id`='$sec'");
	$ftc_section=mysql_fetch_array($sle_section);
	$sec_nm=$ftc_section['section'];
 
?>
 
<table width="90%" align="center" style="text-align:center;font-size:15px; margin-top:5px; border-collapse:collapse">
	<tr style="font-size:20px">
		<td style="padding:5px" >
			<h3><strong><?php echo $school; ?>  (SECTION LIST)</strong></h3>
		</td>
	</tr >
	<tr >
		<td style="padding-left:10px">
			<strong>Class</strong> - <?php echo $cls ; ?> <strong>Section - </strong> <?php echo $sec_nm; ?>
		</td>
	</tr>
</table>
<br />
<table class="table table-bordered table-hover">	
<tr>
	<th width="5%">S.No.</th>
	<th width="7%">Scholar No.</th> 
    <th width="10%">Name</th> 
	<th width="10%">Roll No.<input type="text" onkeyup="auto_roll_no()" class="form-control input-xsmall" id="start_roll_no" /></th> 
    <th width="10%">DOB (DD-MM-YYYY)</th> 
    <!--<th width="7%">Class</th>--->
    <th width="10%">Section</th>
    <!--th width="10%">Photo</th>
    <th width="10%">Change Image</th-->
   </tr>
<?php
$x=0;
$sle_stdnt_reg=mysql_query(" select * from `student` where `class_id`='$class_id' && `section_id`='$sec' order by `name` ASC");
 while($ftc_stdnt_reg=mysql_fetch_array($sle_stdnt_reg))
  {
	$x++;
	$update_id=$ftc_stdnt_reg['id'];
	$roll_noo=$ftc_stdnt_reg['roll_no'];
	$fnamee=$ftc_stdnt_reg['name'];
	$scholar_no=$ftc_stdnt_reg['scholar_no'];
	$dob_nw=$ftc_stdnt_reg['dob'];
	$photo_path=$ftc_stdnt_reg['photo_path'];
	if($dob_nw!='0000-00-00')
	{
		$dob=date("d-m-Y",strtotime($dob_nw));
	}
	else
	{
		$dob='';
	}
	
	$sec_id_current=$ftc_stdnt_reg['section_id'];
	
 ?>
 
<tr>
    <td><?php echo $x; ?><input name="update_id[]" type="hidden" value="<?php echo $update_id; ?>" /></td>
    <td><?php echo $scholar_no; ?></td>
    <td><input name="name[]" type="text" class="form-control input-medium" value="<?php echo $fnamee; ?>" /></td>
    <td><input name="roll_no[]" id="roll_no<?php echo $x; ?>" type="text" class="form-control input-xsmall" value="<?php echo $roll_noo; ?>" /></td>
    <td><input  name="dob[]" type="text" class="form-control input-small" value="<?php echo $dob; ?>" /></td>
    <!--<td><?php echo $cls; ?></td>-->
    <td>
	<select class="form-control input-small" name="new_sec[]" >
	 	<option value=""> -Select-</option>
		<?php 
            $results=mysql_query("select * from `mapping_section` where `class_id`='$class_id'");
            while($arr=mysql_fetch_array($results))
            {
				$sec_id=$arr['section_id'];
				$sle_section=mysql_query("select * from `master_section` where `id`='$sec_id'");
				$ftc_section=mysql_fetch_array($sle_section);
				$sec_nm=$ftc_section['section'];
			?>
			<option <?php if($sec_id_current==$sec_id) { ?> selected <?php } ?> value="<?php echo $sec_id; ?>"><?php echo $sec_nm; ?></option>	<?php
         }
         ?>
    </select>
    </td>
	<!--td><img src="user/<?php //echo $photo_path; ?>" height="30px" width ="30px"/></td>
	<td><input type="file" name="upload_image[]" /></td-->
</tr>
 	 <?php
	 }
	?>
<input type="hidden" id="tot_student" value="<?php echo $x; ?>"/>

</table>
<br/>
<input name="submit_sec_change" style="margin-left:50%" class="btn btn-primary" value="Update" type="submit">

 <?php
  }
  else
  {
$sel_class=mysql_query("select * from `master_class` where `id`='$class_id' ");
$ftc_class=mysql_fetch_array($sel_class);
$cls=$ftc_class['class'];
	  ?>
<div style="width:100%" id="display">
	<table width="90%" align="center" style="text-align:center;font-size:15px; margin-top:5px; border-collapse:collapse">
		<tr style="font-size:20px">
			<td style="padding:5px" >
				<h3><strong><?php echo $school; ?> (SECTION LIST)</strong></h3>
			</td>
		</tr>
 		<tr>
			<td style="padding-left:10px">
					<strong>Class</strong>&nbsp; - <?php echo $cls ; ?> 
			</td>
 		</tr>
 </table>
<br />
 <table class="table table-bordered table-hover">	
<tr>
	<th width="5%">S.No.</th>
	<th width="7%">Scholar No.</th> 
    <th width="10%">Name</th> 
	<th width="10%">Roll No.<input type="text" onkeyup="auto_roll_no()" class="form-control input-xsmall" id="start_roll_no" /></th> 
    <th width="10%">DOB (DD-MM-YYYY)</th> 
    <!--<th width="7%">Class</th>-->
    <th width="10%">Section</th>
	<!--th>Photo</th>
	<th>Change Image</th-->
   </tr>
<?php
$x=0;
$sle_stdnt_reg=mysql_query(" select * from `student` where `class_id`='$class_id' order by `name` ASC");
 while($ftc_stdnt_reg=mysql_fetch_array($sle_stdnt_reg))
  {
	$x++;
	$update_id=$ftc_stdnt_reg['id'];
	$roll_noo=$ftc_stdnt_reg['roll_no'];
	$fnamee=$ftc_stdnt_reg['name'];
	$scholar_no=$ftc_stdnt_reg['scholar_no'];
	$photo_path=$ftc_stdnt_reg['photo_path'];
	$dob_nw=$ftc_stdnt_reg['dob'];
	if(!empty($dob_nw))
	{
		$dob=date("d-m-Y",strtotime($dob_nw));
	}
	else
	{
		$dob='';
	}
	
	$sec_id_current=$ftc_stdnt_reg['section_id'];
	
 ?>
 
<tr>
    <td><?php echo $x; ?><input name="update_id[]" type="hidden" value="<?php echo $update_id; ?>" /></td>
    <td><?php echo $scholar_no; ?></td>
    <td><input name="name[]" type="text" class="form-control input-medium" value="<?php echo $fnamee; ?>" /></td>
    <td><input name="roll_no[]" type="text" id="roll_no<?php echo $x; ?>" class="form-control input-xsmall" value="<?php echo $roll_noo; ?>" /></td>
    <td><input  name="dob[]" type="text" class="form-control input-small" value="<?php echo $dob; ?>" /></td>
    <!--<td><?php echo $cls; ?></td>-->
    <td><select class="form-control input-small" name="new_sec[]" >
	 	<option value=""> -Select-</option>
		<?php 
            $results=mysql_query("select * from `mapping_section` where `class_id`='$class_id'");
            while($arr=mysql_fetch_array($results))
            {
            $sec_id=$arr['section_id'];
            
            $sle_section=mysql_query("select * from `master_section` where `id`='$sec_id'");
            $ftc_section=mysql_fetch_array($sle_section);
            
            $sec_nm=$ftc_section['section'];
			?>
			<option <?php if($sec_id_current==$sec_id) { ?> selected <?php } ?> value="<?php echo $sec_id; ?>"><?php echo $sec_nm; ?></option>	<?php
         }
         ?>
     </select>
    </td>
	<!--td><img src="user/<?php //echo $photo_path; ?>" height="30px" width ="30px"/></td>
	<td><input type="file" name="upload_image[]" /></td-->
</tr>
 	 <?php
	 }
	?>
	<input type="hidden" id="tot_student" value="<?php echo $x; ?>"/>	

</table>
<br/>
<input name="submit_sec_change" style="margin-left:50%" class="btn btn-primary" value="Update" type="submit">
            
</div> 
	  
<?php  }
  ?>

            