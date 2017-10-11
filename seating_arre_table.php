<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");

$coulmn=$_GET['con'];
$capacity=$_GET['con1'];
$romm=$_GET['con2'];
$exam_name=$_GET['con3'];

$coulmn_dubb=$coulmn*2 ;
$coulmn_dubb_inc=$coulmn_dubb+1;
$rowscc=$capacity/$coulmn_dubb ;
$rows= $rowscc+1;
$coulmnsss= $coulmn+1;
$j=0;
$m=0;
 
 $set=mysql_query("select `name` from `master_term` where `id`='$exam_name'");
 $fet=mysql_fetch_array($set);
 
 $term_name=$fet['name'];
?>
<input  value="<?php echo  $exam_name ; ?>" name="exam_name" type="hidden" />
<input  value="<?php echo  $rows ; ?>" id="rows" type="hidden" />
<input  value="<?php echo  $coulmn_dubb_inc ; ?>" id="coulmn_dubb_inc" type="hidden" />
<input  value="<?php echo  $coulmn ; ?>" name="coulmn" type="hidden" />
<input  value="<?php echo  $capacity ; ?>" name="capacity" type="hidden"  />
<input  value="<?php echo  $romm ; ?>" name="romm" type="hidden" />
<?php
if(!empty( $coulmn) && !empty($capacity) && !empty($romm))
{
?>
<h3 style="text-align:center;">SEATING ARRANGEMENT</h3>
<div style="margin-left:45%">
<button   type="button" class="btn btn-primary hide_print" onclick="window.print()" align="right" value="Print Admit Card">Print </button>


</div>
<div style="width:100%;margin-top:10px; margin-left:40%">
	<table class="table-bordered table-hover">
		<tr>
			<th height="30px">Term : &nbsp; </th>
			<th height="30px"><?php echo $term_name ; ?> &nbsp; </th>
		</tr>
		<tr>
			<th height="30px" >Room No. : &nbsp; </th>
			<th height="30px"><?php echo  $romm ; ?> &nbsp; </th>
		</tr>
		<tr>
			<th height="30px">Total Student : &nbsp; </th>
			<th height="30px"><?php echo $capacity ; ?> &nbsp; </th>
		</tr>
	</table>
</div>
<br/>
<table align="center"class="table-bordered table-hover" border="1"  >
         <tr> <th>Roll. No.&rarr;
               
                </th>
  	<?php
     	 for( $m=1;$m<$coulmn_dubb_inc; $m++ )
            {
               
				 if($m==3 ||$m==5 ||$m==7 ||$m==9||$m==11)
					{
						?>
                <td >&nbsp;
               
                </td>
                 <?php
					}
					else
					{
					}		
 					?>
                  <td  id="tx_tdt_sec<?php echo $m ; ?>">
<input id="first_roll<?php  echo $m ; ?>" onKeyUp="show_roll_tex( <?php  echo $m ; ?>)"   class="form-control input-xsmall all" value="" cal="<?php echo $m; ?>" type="text" />
 </td>
              <?php 
			}
			?>
            </tr>
 <tr> <th>Column &rarr;
                </th>
  	<?php
     	 for( $k=1;$k<$coulmnsss; $k++ )
            {
				 if($k==1 )
					{
					}
					else
					{
						?>
                <td rowspan="2">&nbsp;
                </td>
                 <?php
					}		
 					?>
                    <th colspan="2"  rowspan="2" align="center" style="padding:8px" width="60">
                   <?php echo $k; ?>
                    </th>
              <?php 
			}
			?>
            </tr>
            <tr>
            <th>Rows &darr;
                </th>
            </tr>
  <?php
  for( $j=1;$j<$rows; $j++ )
       {
			?>
  <tr> <th ><?PHP echo $j; ?>
               
                </th>
   
			<?php
     	 for( $k=1;$k<$coulmn_dubb_inc; $k++ )
            {
               
				 if($k==3 ||$k==5 ||$k==7 ||$k==9||$k==11)
					{
						?>
                <td >&nbsp;
               
                </td>
                
                 <?php

					}
					else
					{
						}		
 					?>
                 
                    <td align="center" style="padding:8px" width="60">
                    <input   name="roll_<?php echo $j ; echo $k ;  ?>" id="roll_<?php echo $j ; echo $k ;  ?>"  class="form-control input-xsmall" value=""  type="text" />
                    </td>
                
              <?php 
			}
			?>
  </tr>
   <?php
		}
			?>
</table>
 <?php
		}
		
		else
		
		{
			?>
            
            <br/><br/>
			<div  align="center"  style=" color:#F00;width:100%;margin-left:30%">
            <h4>* Please Insert Capacity And Room No. And Select Coulmn  </h4>
            </div>
            <?php
			}
			?>