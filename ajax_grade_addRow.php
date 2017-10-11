<?php
$total=$_GET['total'];
$total=$total+1;
?>
<div class="main" style="padding-top:50px">
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
							<button type="button" class="btn  btn-sm red remove"><i class="fa fa-trash"></i></button>
							</div>
  					 
				
</div><div id="cs<?php echo $total?>" ></div>	