<?php
include('database.php');
$id1=$_GET['pon'];
	$selecto7=mysql_query("select * from `user_settings` where `role_id`='$id1'");
	while($reco7=mysql_fetch_array($selecto7))
	{
	$mng_mdul_id[]=$reco7['module_id'];
	}

?>
<div class="form-group">
   <div class="portlet box #d6e9c6 " style="width:90%;margin-left:5%;" >
						<div class="portlet-title" >
							<div class="caption">
							<!--	<i class="fa fa-gift"></i>--> Add Rights
							</div>
							
						</div>
						<div class="portlet-body" >
							
								 <div class="table-scrollable">
                                    <table class="table table-border table-advance table-hover" >
                                    <tr style="background-color: hsla(0, 0%, 80%, 0.48);">
                                        <th>Main Menu</th>
                                        <th>
                                            <input type="checkbox" class="chk_boxes checker" label="check all"  /></br>Check all 
                                        </th>
										<th style="text-align:center; width:25% !important">Advance Settings</th>
                                        
                                    </tr>
                                    <?php
                                    $r1=mysql_query("select * FROM `modules` ORDER BY id");		
                                    $i=0;
                                    while($row1=mysql_fetch_array($r1))
                                    {
										$i++;
										$id=$row1['id'];
										$name=$row1['name'];
										$main_menu=$row1['main_menu'];
									if(empty($row1['main_menu']) && empty($row1['sub_menu']))
									{
										?>
                                    <tr>
                                        <th>
                                        	<?php echo $row1['name'];?>
                                        </th>
                                        
                                        <td width="5%;">
                                            <div class="checkbox-list">
                                                <label>
                                                    <input type="checkbox" <?php if(in_array($id,$mng_mdul_id)){ echo 'checked="checked"';}?>  class="chk_boxes1" name="check[]"  value="<?php echo $id?>">
                                                </label>
                                            </div>
                                        </td>
										<td></td>
									</tr>
										<?php
									}
									if(!empty($row1['main_menu']) && empty($row1['sub_menu']))
									{
										if(in_array($row1['main_menu'], $main_menu_arr))
										{
										   
										}
										else
										{
											$main_menu_arr[]=$row1['main_menu'];
									
									?>
									<tr>
										<th>
                                        	<?php echo $row1['main_menu'];?>
                                        </th>
                                        
                                        <td width="5%;">
                                            <div class="checkbox-list">
                                                <label>
                                                    <input type="checkbox" <?php if(in_array($id,$mng_mdul_id)){ echo 'checked="checked"';}?>  class="chk_boxes1" name="check[]"  value="<?php echo $id;?>">
                                                </label>
                                            </div>
                                        </td>
										<td>
										<a class="accordion-toggle accordion-toggle-styled collapsed btn btn-xs blue" data-toggle="collapse" data-parent="#sub_button" href="#sub_menu<?php echo $i;?>">
													Sub Menu </a>
										</td>			
								</tr>			
								<tr>
									<td colspan="3" style="padding:0px;">
										<div id="sub_menu<?php echo $i;?>" class="panel-collapse collapse">
											<table class="table  table-advance table-hover" >
												
													<?php
													$r=mysql_query("SELECT * FROM modules where `main_menu`='$main_menu'");		
													$j=0;
													while($row=mysql_fetch_array($r))
													{
														$j++;
														$ids=$row['id'];
														$name=$row['name'];
													?>
												<tr  style="background-color:#DFF0D8;">
													<td width="10%"></td>
													<td><?php echo $name; ?></td>
													
													<td width="5%" >
														<div class="checkbox-list">
															<label>
																<input type="checkbox" <?php if(in_array($ids,$mng_mdul_id)){ echo 'checked="checked"';}?>  class="chk_boxes2<?php echo $id;?> chkall"  name="check[]"  value="<?php echo $ids;?>">
															</label>
														</div>
													</td>
												</tr> <?php }?>
											</table>
													
										</div>
									</td>
								</tr>					
								<?php } 
									}?>
									<?php }?>
                                    <tr >
                                        <td colspan="3" align="center">
                                        <button type="submit" class="btn green" name="sub">Submit</button>
                                        </td>
                                    </tr>
                                </table>
							</div>
                            </div>
					</div></div>
<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script>
$(document).ready(function(){
    $('.chk_boxes').click(function() {
	
        $('.chk_boxes1').prop('checked', this.checked);
        $('.chkall').prop('checked', this.checked);
		
	});
	$('.chk_boxes1').click(function() {
		var id=$(this).val();
        $('.chk_boxes2'+id).prop('checked', this.checked);
    });
});
</script>