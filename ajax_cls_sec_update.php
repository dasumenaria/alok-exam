<?php 
include("database.php");

  $cls=$_GET['cls'];
?>
<table class="table table-striped table-bordered table-hover">
								<thead>
								<tr>
									<th style="text-align:center">
										 Sr.No
									</th>
									
									<th style="text-align:center">
										 Class Name
									</th>
									
									<th style="text-align:center">
										 Section Name
									</th>
									 
									<th style="text-align:center">
										 Action
									</th>
								</tr>
								</thead>
								<tbody>
								 <?php  
 
								 $query=mysql_query("select * from `mapping_section` where `class_id`='$cls' order by id");
								 while($fetch=mysql_fetch_array($query))
								 {
									 $i++;
									 $id=$fetch['id'];
									 $class_id=$fetch['class_id'];
									 $section_id=$fetch['section_id'];
									 
									 $set=mysql_query("select `roman` from `master_class` where `id`='$class_id'");
									 $fet=mysql_fetch_array($set);
									 
									 $class=$fet['roman'];
									 
									 $set1=mysql_query("select `section` from `master_section` where `id`='$section_id'");
									 $fet1=mysql_fetch_array($set1);
									 
									 $section=$fet1['section'];
									 
						 	 
								 ?>
								 <tr>
									<td style="text-align:center"><?php echo $i; ?>.</td> 
									<td style="text-align:center"><?php echo $class; ?></td>
									<td style="text-align:center"><?php echo $section; ?></td>
									 
									<td style="text-align:center">
										<a class="btn btn-xs red" data-toggle="modal" href="#<?php echo $id; ?>">
									Delete 
									</a>
									
			         <div class="modal fade" id="<?php echo $id; ?>" tabindex="-1" role="basic" aria-hidden="true" style="text-align:left !important">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
											<h4 class="modal-title"><font color="red">Delete Section <?php echo $section; ?> From Class <?php echo $class; ?></font></h4>
										</div>
										<div class="modal-body">
											 You Want To Confirm <font color="red">Delete</font>
										</div>
										 
										<div class="modal-footer">
											<button type="button" class="btn default" data-dismiss="modal">Close</button>
											<input type="hidden" name="del_id" value="<?php echo $id; ?>">
											<button type="submit" name="sub1" class="btn blue">Delete</button>
										</div>
										 
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
				      </div>
									</td>
								
								 </tr>
								 <?php } ?>
								</tbody>
								</table>