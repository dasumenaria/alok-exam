<?php
include("database.php");
$term_id=$_GET['pon3'];
$category_id=$_GET['pon5'];
$room_no=$_GET['pon6'];
$capacity=$_GET['pon7'];

	if((!empty($term_id)) && (empty($category_id))){ ?>
		<div class="form-group">
			<label class="control-label col-md-3">Category</label> 
			<div class="col-md-4">
			   <div class="input-icon right">
					<i class="fa"></i>
					<select class="form-control ust" required name="category_id">
						<option value="">---Select Master---</option>
							<?php 
								$query2=mysql_query("select * from `exam_category` ORder By `id`"); 
								while($fetch2=mysql_fetch_array($query2))
								{
									$i++;
									$mstr_id=$fetch2['id'];
									$mstr_name=$fetch2['name'];
								?>
								<option value="<?php echo $mstr_id; ?>"><?php echo $mstr_name; ?></option>
							<?php } ?>
					</select>
				</div>
				<span class="help-block">
				Please select category type</span>
			</div>
		</div>
		<div id="dys"></div>
		
		<?php } if((!empty($term_id)) && (!empty($category_id)) && (empty($room_no))){ ?>
			<div class="form-group">
				<label class="control-label col-md-3">Room No</label>
				<div class="col-md-4">
					<div class="input-icon right">
					<i class="fa"></i>
					<input class="form-control rm" placeholder="107" required name="room_no" autocomplete="off" type="text">
					</div>
				</div>
			</div>
		<div id="cap"></div>
		<?php } if((!empty($term_id)) && (!empty($category_id)) && (!empty($room_no)) && (empty($capacity))){ ?>
			<div class="form-group">
				<label class="control-label col-md-3">Capacity Of Students</label>
				<div class="col-md-4">
					<div class="input-icon right">
					<i class="fa"></i>
					<input class="form-control cpact" placeholder="50" required name="capacity" autocomplete="off" type="text">
					</div>
				</div>
			</div>
		<div id="rws"></div>
		
		<?php } if((!empty($term_id)) && (!empty($category_id)) && (!empty($room_no)) && (!empty($capacity))){ ?>
		
		<div class="form-group">
			<label class="control-label col-md-3">Number of Rows</label> 
			<div class="col-md-4">
			   <div class="input-icon right">
					<i class="fa"></i>
					<select class="form-control rows" required name="category_id" onchange="get_seat_arreng()" >
						<option value="">---Select Rows---</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</div>
				<span class="help-block">
				Please select number of rows</span>
			</div>
		</div>
	<?php } ?>