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
							<div class="col-md-3">
							   <div class="input-icon right">
									<i class="fa"></i>
									 <input class="form-control" placeholder="Range-To" type="text" value="" name="frms[]" aria-invalid="false">
								</div>
							</div>
			
							<div class="col-md-3">
							   <div class="input-icon right">
									<i class="fa"></i>
									 <input class="form-control" placeholder="Range-To" type="text" value="" name="to[]" aria-invalid="false">
								</div>
							</div>
		
							<div class="col-md-3">
							   <div class="input-icon right">
									<i class="fa"></i>
									 <input class="form-control" type="text" placeholder="Grade" value="" name="grade[]" aria-invalid="false">
								</div>
							</div>
							
							<div class="col-md-3">
							<button type="button" name="add_more" onclick="adds();" class="btn btn-sm yellow ads"><i class="fa fa-plus"></i></button>
							</div>
						 
<input type="hidden" id="total" value="1" />				<div id="cs1" ></div>	
				
				
	 <br />
<br /><br />
<br />

 

						<div class="row">
							<div class="col-md-offset-3 col-md-9">
								<button type="submit" name="sub" class="btn green">Submit</button>
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
 
 