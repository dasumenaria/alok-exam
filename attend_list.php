<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");
?>
<html >
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master | Marks</title>
<style>
.table>thead>tr>th{
	font-size:12px !important;
}

 @media print
   {
     .printdata{
		 display:none;
	 }
   }

</style>
</head>
<?php contant_start(); menu();  ?>
<body>
<div class="page-content-wrapper">
		<div class="page-content">
			<div class="portlet box blue">
			<div class="portlet-title printdata">
				<div class="caption">
					<i class="icon-puzzle"></i> Seating Arrangement
				</div>
			</div>
			<div class="portlet-body form">
<?php
//print_r($_POST); 			
if(isset($_POST['Attendence_listt']))
{
	$coulmn=$_POST['coulmn'];
	$capacity=$_POST['capacity'];
	$romm=$_POST['romm'];
	$exam_name=$_POST['exam_name'];
	$category_id=$_POST['category_ids'];
	$query2=mysql_query("select * from `exam_category` Where `id` = '$category_id'"); 
	$fetch2=mysql_fetch_array($query2);
	$exam_names=$fetch2['name'];
	
	$coulmn_dubb=$coulmn*2 ;
	$coulmn_dubb_inc=$coulmn_dubb+1;
	$rowscc=$capacity/$coulmn_dubb ;
	$rows= $rowscc+1;
	$coulmnsss= $coulmn+1;
	 
	$j=0;
	$m=0;
	$ab=0;
	$schl=mysql_query("select * from `school`");
	$ftc_schl=mysql_fetch_array($schl);
	 
?>
 
 	<table  align="center" style=" width:100%;text-align:center">
  
  
    <tr>
    
    <td rowspan="2" width="20%">
    <img style="width:70px" align="right" src="img/<?php echo $ftc_schl['logo']; ?>"/>
    </td>
    <td colspan="3" >
				<h3><?php echo $ftc_schl['school'];?></h3>
    </td>
    </tr>
    <tr>
    <td align="right" >
       <strong> Exam :  <?php echo $exam_names ; ?> </strong>
        </td>
         <td >
      <strong>Session :  2017-2018 </strong>
        </td>
         
    <td align="left">  <strong> Room No. :  <?php echo $romm ; ?></strong>
     
           </td>
           </tr>
           <tr>
           <td>
           </td>
           <td  colspan="23">
           <h4> <strong>Attendence Sheet </strong></h4>
           </td>
           </tr>
           </table>
              <br/>   
              <div style="overflow-y:scroll">
  <table class="table table-bordered table-hover">
 <thead> 
  <tr>
  <th width="7%"> S. No.
  </th>
  
  <th>
   Roll No.
 </th>
  
   <th width="15%">
   Name
  </th>
  
  <th >
   Class
 </th>
   
   <th>
   Sec.
  </th>

  <?php
   for( $ab=1;$ab<11; $ab++ )
	 {
		$dppp="dppp".$ab ; 
		$date_show=$_POST[$dppp];
		if(!empty($date_show))
		{
		$date_format=date('Y-m-d', strtotime($date_show));
		}
		else
		{
		$date_format=0000-00-00;
		}
		
		$sle_date_store_exam=mysql_query(" select * from  `date_store_exam` where `day_id`='$ab' ");
		$cnt_date_store_exam=mysql_num_rows($sle_date_store_exam);
		if($cnt_date_store_exam)
		{
			mysql_query(" update  `date_store_exam` set `date`='$date_format' where  `day_id`='$ab'");
		}
		else
		{
			mysql_query(" insert into `date_store_exam` set `day_id`='$ab' ,`date`='$date_format'");
		
		}
		if(!empty($date_show))
		{
			$td_print=1;
		 ?><th ><?php
		  echo $date_show ;
		?></th><?php 
		}
	
	
	 }
					 
					 ?>
                     </tr>
                     </thead>
                     <tbody>
                     <?php
					  $ab=0;
  	 for( $k=1;$k<$coulmn_dubb_inc; $k++ )
      {
 	  	for( $j=1;$j<$rows; $j++ )
		{	
				      $xx="roll_".$j.$k ; 
							$rosll=$_POST[$xx];
						 
				$sel_stdnt_reg=mysql_query("select * from `student`  where  `roll_no`='$rosll' ");
				
				$cnt_stdnt_reg=mysql_num_rows($sel_stdnt_reg);
				
				if($cnt_stdnt_reg==1)
				{
					$ftc_stdnt_reg=mysql_fetch_array($sel_stdnt_reg);
								
					$i++;
					
					$fname=$ftc_stdnt_reg['name'];
					$cls=$ftc_stdnt_reg['class_id'];
					$sec=$ftc_stdnt_reg['section_id'];
					
											
					$sle_section=mysql_query("select * from `master_section` where `id`='$sec'");
					$ftc_section=mysql_fetch_array($sle_section);
					
					$sec_nm=$ftc_section['section'];
					
					$sel_class=mysql_query("select * from `master_class` where `id`='$cls' ");
					$ftc_class=mysql_fetch_array($sel_class);
					$class_nm=$ftc_class['class'];	
	
					?>
					
					
				  
					<tr>
					<td width="7%">
					 <?php echo $i; ?>
					</td>
					 	<td style="padding-left:3px;font-size:11px">
					  <?php echo $rosll; ?>
					</td>
					<td style="padding-left:3px;font-size:11px">
					 <?php echo $fname; ?> 
					</td>
						<td style="padding-left:3px;font-size:11px">
					 <?php echo $class_nm; ?>
					</td>
						<td style="padding-left:3px;font-size:11px">
					  <?php echo $sec_nm; ?>
					</td>
				   <?php
					 for( $ab=1;$ab<11; $ab++ )
					 {
						$dppp="dppp".$ab ; 
						$date_show=$_POST[$dppp];
						if(!empty($date_show))
						{
							?> <td></td><?php 
						}
 					 }
				?>
				</tr>
				<?php
				  
		
				}
		}

	}
			
			?>
            </tbody>
          </table>
          </div>
            <?php
			
}
?>
			</div>
				<!-- END FORM-->
				 
		</div>		   
			</div>
	</div>

</body>
</html>