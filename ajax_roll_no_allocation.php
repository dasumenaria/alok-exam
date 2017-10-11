<?php
include("database.php");
	$class_id=$_GET['pon'];
	$section_id=$_GET['pon1'];
	
 if(!empty($class_id) && empty($section_id))
 {  
	 ?>
     <div class="form-group">
        <label class="control-label col-md-3">Section</label> 
            <div class="col-md-4">
               <div class="input-icon right">
                    <i class="fa"></i>
                    <select class="form-control user3" required name="section_id">
                        <option value="">---Select Section---</option>
                            <?php 
                                $query2=mysql_query("select * from `mapping_section` where `class_id`='$class_id'"); 
                                while($fetch2=mysql_fetch_array($query2))
                                {
                                    $i++;
                                     
                                    $section_id=$fetch2['section_id'];
                                    
                                $qt=mysql_query("select * from `master_section` where `id`='$section_id'");
                                $ft=mysql_fetch_array($qt);
    
                                $section_id=$ft['id'];
                                $section_name=$ft['section'];	
                                    
                                ?>
                                <option value="<?php echo $section_id; ?>"><?php echo $section_name; ?></option>
                            <?php } ?>
                    </select>
                </div>
                <span class="help-block">
                Please select Section </span>
            </div>
    </div>
    <div id="ms" ></div>	
     <?php
 }

else if(!empty($class_id) && !empty($section_id)){
?>	 
<div class="portlet-body">
    <div class="table-responsive">
        <table class="table table-bordered">
        <thead>
        <tr>
        	<th>S.No</th>         
            <th>Name</th>
            <th>Scholar No</th>
            <th>Class</th>
            <th>Section</th>
            <th>Roll No<br /><input id="start_roll_no" onKeyUp="auto_roll_no()" class="form-control input-small" type="text">
			</th>
        </tr>
        </thead>
        <tbody>
	<?php 
		$i=0;
		$query=mysql_query("select * from `student` where `class_id`='$class_id' && `section_id`='$section_id' ORDER BY `name` ASC");
		while($fetch=mysql_fetch_array($query))
		{	$i++;
			$id=$fetch['id'];
			$name=$fetch['name'];
			$scholar_no=$fetch['scholar_no'];
			$roll_no=$fetch['roll_no'];
			$class_id=$fetch['class_id'];
			$section_id=$fetch['section_id'];
			$set=mysql_query("select `roman` from `master_class` where `id`='$class_id'");
			$fet=mysql_fetch_array($set);
			$class_name=$fet['roman'];
			$set1=mysql_query("select `section` from `master_section` where `id`='$section_id'");
			$fet1=mysql_fetch_array($set1);
			$section_name=$fet1['section'];
			?>
		<tr>
			<td><?php echo $i; ?></td>
			<td><?php echo $name; ?></td>
			<td><?php echo $scholar_no; ?></td>
			<td><?php echo $class_name; ?></td>
			<td><?php echo $section_name; ?></td>
            <td><input name="roll_no<?php echo $i ; ?>" id="roll_no<?php echo $i ; ?>"  value=" <?php echo $roll_no ; ?>"  width="100px" type="text" class="form-control input-medium"></td>
            </tr>
        <?php } ?>
        <input id="tot_student" value=" <?php echo $i ; ?>"  type="hidden">
    </tbody>
    </table>
    </div>
</div>
		 
							 
				
 
        <div class="row">
            <div class="col-md-offset-3 col-md-9">
                <button type="submit" name="update_rollNo" class="btn green">Submit</button>
                <button type="button" class="btn default">Cancel</button>
            </div>
        </div>
					 
		<?php
	}
	 
 
 ?>
	<script>
		var test = $("input[type=checkbox]:not(.toggle), input[type=radio]:not(.toggle)");
		if (test) {
		test.uniform();
		}
	</script>
 
 