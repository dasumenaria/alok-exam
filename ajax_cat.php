<?php 
include("database.php");
 
$trm=$_GET['trm'];
   
if(!empty($trm)){
	?>
	
	<div class="form-group">
							<label class="control-label col-md-3">Category</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control" required  name="cat_id">
									<option value="">---Select Category---</option>
								    <?php
									$querys=mysql_query("select * from `exam_category` order by `id`");
									while($fetchs=mysql_fetch_array($querys))
									{	$k++;
										$cat_id=$fetchs['id'];
										$cat_name=$fetchs['name'];
									?>
									<option value="<?php echo $cat_id; ?>"><?php echo $cat_name; ?></option>
									<?php } ?>
									</select>
								</div>
								<span class="help-block">
								Please select Term category</span>
							</div>
						</div>
						
<?php
}
else{ } ?>