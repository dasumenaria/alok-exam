<?php
include("database.php");

	$class_id=$_GET['cls'];
	$section_id=$_GET['sec'];
	$exam_name=$_GET['ex'];
	$flag=$_GET['flag'];
	$check=$exam_name;
   

   if((empty($class_id)) && (!empty($section_id))){?>
   
   <div class="form-group">
							<label class="control-label col-md-3 ">Exam</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control ex" required name="roman">
									<option value="">---Select Exam---</option>
								   <?php 
								   $query2=mysql_query("select * from `master_term` Order by `id`");
								   while($fetch2=mysql_fetch_array($query2))
								   {$u++;
										$exam_id=$fetch2['id'];
										$exam_name=$fetch2['name'];
							   ?>
								   
									<option value="<?php echo $exam_id; ?>"><?php echo $exam_name; ?></option>
								   <?php } ?>
									</select>
								</div>
								<span class="help-block">
								please select exam category</span>
							</div>
							
							 
					<div id="row"></div>
							
					
							
							
			</div>
   
   
   
   <?php }
   
   if((!empty($class_id)) && (empty($section_id))){?>
	   
	   <div class="form-group">
							<label class="control-label col-md-3 ">Section</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control sec" required name="roman">
									<option value="">---Select Section---</option>
								   <?php 
								   $query1=mysql_query("select `section_id` from `mapping_section` where `class_id`='$class_id'");
								   while($fetch1=mysql_fetch_array($query1))
								   {$k++;
										$sect_id=$fetch1['section_id'];
									$ster=mysql_query("select * from `master_section` where `id`='$sect_id'");
									$fter=mysql_fetch_array($ster);	
										$section_id=$fter['id'];
										$section_name=$fter['section'];
							   ?>
								   
									<option value="<?php echo $section_id; ?>"><?php echo $section_name; ?></option>
								   <?php } ?>
									</select>
								</div>
								<span class="help-block">
								please select section category</span>
							</div>
						</div>
						
						<div id="tr"></div>
					
					
	   
<?php	   
   }
   
   
   
if($flag=='HELLO'){
/////mark_3_5?>
          <div class="col-md-offset-3 col-md-9">				    
			<button type="button" class="btn yellow" id="single" >Single</button>
			<?php if($class_id<=6){ ?>
			<a target="_blank" href="view_marksheet_primary_term1_all.php?sch=<?php echo $scholar_no; ?>&cls=<?php echo $class_id; ?>&sec=<?php echo $section_id; ?>
			&exm=<?php echo $exam_name; ?>" <button type="button" class="btn yellow">All</button></a>
				
			<?php }else{ ?>
 			<a target="_blank" href="others6.php?sch=<?php echo $scholar_no; ?>&cls=<?php echo $class_id; ?>&sec=<?php echo $section_id; ?>
			&exm=<?php echo $exam_name; ?>" <button type="button" class="btn yellow">All</button></a>
			<?php } ?>
 		</div>

 <?php } if((!empty($class_id)) && (!empty($section_id)) && (!empty($exam_name)) && $flag!='HELLO'){?>


					<div class="table-responsive">
						<table class="table table-bordered">
						<thead>
							<tr>
								<th>
									 Sr.no
								</th>
								<th>
									 Name
								</th>
								<th>
									 Scholar
								</th>
								<th>
									 Roll no
								</th>
								<th>
									 Class
								</th>
								<th>
									 Section
								</th>
								<th>
									 Marksheet
								</th>

							</tr>
						</thead>
						<tbody>
							<?php 
							$query=mysql_query("select * from `student` where `class_id`='$class_id' && `section_id`='$section_id' order by `name`");
							while($fetch=mysql_fetch_array($query))
							{$f++;
								
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
								<td><?php echo $f; ?></td>
								<td><?php echo $name; ?></td>
								<td><?php echo $scholar_no; ?></td>
								<td><?php echo $roll_no; ?></td>
								<td><?php echo $class_name; ?></td>
								<td><?php echo $section_name; ?></td>
					<td>
					<?php if($class_id<=6){ ?>
					<a target="_blank" href="view_marksheet_primary_term1.php?sch=<?php echo $scholar_no; ?>&cls=<?php echo $class_id; ?>&sec=<?php echo $section_id; ?>&exm=<?php echo $exam_name; ?>" class="btn btn-xs yellow">
					View <i class="fa fa-edit"></i>
					</a>
					<?php }else{ ?>
					<a target="_blank" href="view_marksheet.php?sch=<?php echo $scholar_no; ?>&cls=<?php echo $class_id; ?>&sec=<?php echo $section_id; ?>&exm=<?php echo $exam_name; ?>" class="btn btn-xs yellow">
					View <i class="fa fa-edit"></i>
					</a>
					<?php } ?>
						</td>												 
					</tr>
					<?php } ?>
					</tbody>
					</table>
					</div>
							
							<?php } else{}?>